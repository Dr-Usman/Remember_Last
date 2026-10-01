import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/providers/analytics_provider.dart';
import '../../../../core/providers/locale_override_provider.dart';
import '../../../../l10n/app_locales.dart';
import '../../../../l10n/app_localizations.dart';
import 'settings_tile.dart';

/// Appearance tile that opens a locale picker (system default or override).
class LanguagePickerTile extends ConsumerWidget {
  const LanguagePickerTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final override = ref.watch(localeOverrideProvider);
    final activeLocale = override ?? Localizations.localeOf(context);
    final subtitle = override == null
        ? l10n.languageSystemDefault
        : AppLocales.nativeName(override);
    final flag = AppLocales.flag(activeLocale);

    return SettingsTile(
      leadingWidget: SizedBox(
        width: 24,
        height: 24,
        child: Center(child: Text(flag, style: const TextStyle(fontSize: 20))),
      ),
      title: l10n.language,
      subtitle: subtitle,
      showChevron: true,
      onTap: () => _openPicker(context, ref, l10n, override),
    );
  }

  Future<void> _openPicker(
    BuildContext context,
    WidgetRef ref,
    AppLocalizations l10n,
    Locale? current,
  ) async {
    final selected = await showModalBottomSheet<Object>(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (context) => _LanguagePickerSheet(l10n: l10n, current: current),
    );

    if (selected == null) return;
    final prevLang = current?.languageCode ?? 'system';
    if (selected == PrefsLocale.system) {
      await ref.read(localeOverrideProvider.notifier).setLocale(null);
      ref
          .read(analyticsServiceProvider)
          .trackLanguageChanged(
            previousLanguageCode: prevLang,
            newLanguageCode: 'system',
            isSystemDefault: true,
          );
    } else if (selected is String) {
      await ref
          .read(localeOverrideProvider.notifier)
          .setLocale(AppLocales.parse(selected));
      ref
          .read(analyticsServiceProvider)
          .trackLanguageChanged(
            previousLanguageCode: prevLang,
            newLanguageCode: selected,
            isSystemDefault: false,
          );
    }
  }
}

class _LanguagePickerSheet extends StatelessWidget {
  const _LanguagePickerSheet({required this.l10n, required this.current});

  final AppLocalizations l10n;
  final Locale? current;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final groupValue = current == null
        ? PrefsLocale.system
        : current!.languageCode;
    final maxHeight = MediaQuery.sizeOf(context).height * 0.75;

    return SizedBox(
      height: maxHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 16, 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(l10n.language, style: theme.textTheme.titleLarge),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  tooltip: l10n.cancel,
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: _SystemDefaultTile(
              label: l10n.languageSystemDefault,
              selected: groupValue == PrefsLocale.system,
              onTap: () => Navigator.pop(context, PrefsLocale.system),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 2.5,
              ),
              itemCount: AppLocales.all.length,
              itemBuilder: (context, index) {
                final item = AppLocales.all[index];
                return _LanguageCell(
                  flag: item.flag,
                  nativeName: item.nativeName,
                  englishName: item.englishName == item.nativeName
                      ? null
                      : item.englishName,
                  selected: groupValue == item.code,
                  onTap: () => Navigator.pop(context, item.code),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SystemDefaultTile extends StatelessWidget {
  const _SystemDefaultTile({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Material(
      color: selected
          ? colorScheme.primaryContainer
          : colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: selected
                  ? colorScheme.primary
                  : colorScheme.outlineVariant.withValues(alpha: 0.6),
            ),
          ),
          child: Row(
            children: [
              const Text('🌐', style: TextStyle(fontSize: 18)),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  label,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
                    color: selected ? colorScheme.onPrimaryContainer : null,
                  ),
                ),
              ),
              if (selected)
                Icon(
                  Icons.check,
                  color: colorScheme.onPrimaryContainer,
                  size: 20,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LanguageCell extends StatelessWidget {
  const _LanguageCell({
    required this.flag,
    required this.nativeName,
    required this.englishName,
    required this.selected,
    required this.onTap,
  });

  final String flag;
  final String nativeName;
  final String? englishName;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Material(
      color: selected
          ? colorScheme.primaryContainer
          : colorScheme.surfaceContainerHighest.withValues(alpha: 0.4),
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: selected
                  ? colorScheme.primary
                  : colorScheme.outlineVariant.withValues(alpha: 0.5),
            ),
          ),
          child: Row(
            children: [
              Text(flag, style: const TextStyle(fontSize: 16)),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      nativeName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontSize: 13,
                        fontWeight: selected
                            ? FontWeight.w600
                            : FontWeight.w500,
                        color: selected ? colorScheme.onPrimaryContainer : null,
                      ),
                    ),
                    if (englishName != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        englishName!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall?.copyWith(
                          // Pair with primaryContainer; onSurfaceVariant fails in light mode.
                          color: selected
                              ? colorScheme.onPrimaryContainer.withValues(
                                  alpha: 0.75,
                                )
                              : colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              if (selected)
                Icon(
                  Icons.check,
                  color: colorScheme.onPrimaryContainer,
                  size: 18,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
