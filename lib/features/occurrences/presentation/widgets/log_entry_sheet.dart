import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/database/database_provider.dart';
import '../../../../core/providers/analytics_provider.dart';
import '../../../../core/utils/date_formatter.dart';
import '../../domain/entities/occurrence.dart';
import '../../../../l10n/app_localizations.dart';

/// Bottom sheet for logging or editing a date/time entry.
class LogEntrySheet extends ConsumerStatefulWidget {
  const LogEntrySheet({
    super.key,
    required this.activityId,
    this.initialDate,
    this.occurrenceToEdit,
  });

  final int activityId;
  final DateTime? initialDate;
  final Occurrence? occurrenceToEdit;

  bool get isEditing => occurrenceToEdit != null;

  static Future<void> show(
    BuildContext context, {
    required int activityId,
    DateTime? initialDate,
    Occurrence? occurrenceToEdit,
  }) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.viewInsetsOf(context).bottom,
        ),
        child: LogEntrySheet(
          activityId: activityId,
          initialDate: initialDate,
          occurrenceToEdit: occurrenceToEdit,
        ),
      ),
    );
  }

  @override
  ConsumerState<LogEntrySheet> createState() => _LogEntrySheetState();
}

class _LogEntrySheetState extends ConsumerState<LogEntrySheet> {
  late DateTime _selectedDateTime;
  late final TextEditingController _noteController;

  @override
  void initState() {
    super.initState();
    _selectedDateTime =
        widget.occurrenceToEdit?.doneAt ?? widget.initialDate ?? DateTime.now();
    _noteController = TextEditingController(
      text: widget.occurrenceToEdit?.note ?? '',
    );
  }

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.isEditing ? l10n.editEntry : l10n.addEntry,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.close),
                tooltip: l10n.cancel,
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _PickerField(
            label: l10n.date,
            icon: Icons.calendar_today,
            value: DateFormatter.formatAbsoluteDateWithDay(
              _selectedDateTime,
              Localizations.localeOf(context).toString(),
            ),
            onTap: _pickDate,
          ),
          const SizedBox(height: 16),
          _PickerField(
            label: l10n.time,
            icon: Icons.access_time,
            value: TimeOfDay.fromDateTime(_selectedDateTime).format(context),
            onTap: _pickTime,
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _noteController,
            decoration: InputDecoration(labelText: l10n.noteOptional),
            maxLines: 2,
            onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
          ),
          const SizedBox(height: 24),
          FilledButton(
            onPressed: _save,
            style: FilledButton.styleFrom(
              minimumSize: const Size.fromHeight(56),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child: Text(widget.isEditing ? l10n.saveChanges : l10n.saveEntry),
          ),
        ],
      ),
    );
  }

  Future<void> _pickDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: _selectedDateTime,
      firstDate: DateTime(2000),
      lastDate: DateTime.now().add(const Duration(days: 1)),
    );
    if (date != null && mounted) {
      setState(() {
        _selectedDateTime = DateTime(
          date.year,
          date.month,
          date.day,
          _selectedDateTime.hour,
          _selectedDateTime.minute,
        );
      });
    }
  }

  Future<void> _pickTime() async {
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_selectedDateTime),
    );
    if (time != null && mounted) {
      setState(() {
        _selectedDateTime = DateTime(
          _selectedDateTime.year,
          _selectedDateTime.month,
          _selectedDateTime.day,
          time.hour,
          time.minute,
        );
      });
    }
  }

  Future<void> _save() async {
    final repo = ref.read(occurrenceRepositoryProvider);
    final note = _noteController.text.trim().isEmpty
        ? null
        : _noteController.text.trim();

    if (widget.isEditing) {
      await repo.update(
        widget.occurrenceToEdit!.copyWith(
          doneAt: _selectedDateTime,
          note: note,
        ),
      );
    } else {
      await repo.insert(
        Occurrence(
          id: 0,
          activityId: widget.activityId,
          doneAt: _selectedDateTime,
          note: note,
        ),
      );
      await ref
          .read(analyticsServiceProvider)
          .trackOccurrenceLogged(
            source: 'entry_sheet',
            hasNote: note != null,
            doneAt: _selectedDateTime,
          );
    }
    if (mounted) Navigator.pop(context);
  }
}

class _PickerField extends StatelessWidget {
  const _PickerField({
    required this.label,
    required this.icon,
    required this.value,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final String value;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(12);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        child: InputDecorator(
          decoration: InputDecoration(labelText: label, prefixIcon: Icon(icon)),
          child: Text(value, style: Theme.of(context).textTheme.bodyLarge),
        ),
      ),
    );
  }
}
