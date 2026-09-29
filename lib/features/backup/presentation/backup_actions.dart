import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/providers/analytics_provider.dart';
import '../../../core/widgets/confirm_dialog.dart';
import '../../../l10n/app_localizations.dart';
import '../domain/backup_service.dart';

/// UI actions for exporting and importing JSON backups.
class BackupActions {
  BackupActions(this._ref);

  final WidgetRef _ref;

  Future<void> exportBackup(BuildContext context) async {
    final l10n = AppLocalizations.of(context);
    try {
      final service = _ref.read(backupServiceProvider);
      final data = await service.exportToJson();
      final activities = data['activities'] as List? ?? const [];
      final occurrences = data['occurrences'] as List? ?? const [];
      _ref
          .read(analyticsServiceProvider)
          .trackBackupExported(
            activitiesCount: activities.length,
            occurrencesCount: occurrences.length,
          );
      final json = service.encodeExport(data);
      final timestamp = DateTime.now().toIso8601String().split('T').first;
      final filename = 'remember_last_$timestamp.json';
      final subject = l10n.backupShareSubject(AppConstants.appName);

      if (kIsWeb) {
        await SharePlus.instance.share(
          ShareParams(
            files: [
              XFile.fromData(
                Uint8List.fromList(json.codeUnits),
                name: filename,
                mimeType: 'application/json',
              ),
            ],
            subject: subject,
          ),
        );
      } else {
        await SharePlus.instance.share(
          ShareParams(text: json, subject: subject),
        );
      }

      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.backupExported)));
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.exportFailed('$e'))));
      }
    }
  }

  Future<void> importBackup(BuildContext context) async {
    final l10n = AppLocalizations.of(context);
    final merge = await showConfirmDialog(
      context,
      title: l10n.importBackupTitle,
      message: l10n.importBackupMessage,
      confirmLabel: l10n.merge,
      isDestructive: false,
    );
    if (!context.mounted) return;

    var shouldMerge = merge;
    if (!merge) {
      final replace = await showConfirmDialog(
        context,
        title: l10n.replaceAllDataTitle,
        message: l10n.replaceAllDataMessage,
        confirmLabel: l10n.replaceAll,
      );
      if (!replace || !context.mounted) return;
      shouldMerge = false;
    }

    try {
      final file = await FilePicker.pickFile(
        type: FileType.custom,
        allowedExtensions: ['json'],
      );
      if (file == null) return;

      final bytes = await file.readAsBytes();
      final json = String.fromCharCodes(bytes);
      final service = _ref.read(backupServiceProvider);
      final importResult = await service.importFromJson(
        json,
        merge: shouldMerge,
      );
      _ref
          .read(analyticsServiceProvider)
          .trackBackupImported(
            success: true,
            activitiesCount: importResult.activities,
            isMerge: shouldMerge,
          );

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              l10n.importedCounts(
                importResult.activities,
                importResult.occurrences,
              ),
            ),
          ),
        );
      }
    } catch (e) {
      _ref
          .read(analyticsServiceProvider)
          .trackBackupImported(
            success: false,
            activitiesCount: 0,
            isMerge: shouldMerge,
          );
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.importFailed('$e'))));
      }
    }
  }
}
