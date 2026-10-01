import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../bootstrap/demo_seeder.dart';

/// Full-screen developer utility to wipe the database and seed authentic,
/// localized demo data for testing, development, and store screenshots.
class DemoSeederScreen extends ConsumerStatefulWidget {
  const DemoSeederScreen({super.key});

  @override
  ConsumerState<DemoSeederScreen> createState() => _DemoSeederScreenState();
}

class _DemoSeederScreenState extends ConsumerState<DemoSeederScreen> {
  String? _seedingLocale;

  Future<void> _seed(DemoLocalePack pack) async {
    setState(() => _seedingLocale = pack.localeCode);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Seeding demo data for ${pack.displayName}...'),
        duration: const Duration(milliseconds: 700),
      ),
    );

    try {
      await DemoSeeder.seedLanguage(ref, pack);
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('✅ Seeded demo data for ${pack.displayName}!'),
          backgroundColor: Colors.green.shade700,
          behavior: SnackBarBehavior.floating,
        ),
      );
    } finally {
      if (mounted) {
        setState(() => _seedingLocale = null);
      }
    }
  }

  Future<void> _confirmClearDatabase() async {
    final theme = Theme.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogCtx) => AlertDialog(
        title: const Text('Clear Entire Database?'),
        content: const Text(
          'This will permanently delete all activities, occurrences, and custom categories.\n\nDefault categories will be restored.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogCtx).pop(false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: theme.colorScheme.error,
              foregroundColor: theme.colorScheme.onError,
            ),
            onPressed: () => Navigator.of(dialogCtx).pop(true),
            child: const Text('Clear All'),
          ),
        ],
      ),
    );

    if (confirmed != true || !mounted) return;

    await DemoSeeder.clearDatabase(ref);

    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Database cleared successfully.'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Demo Data Seeder')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        children: [
          // Informative banner card
          Card(
            elevation: 0,
            color: colorScheme.primaryContainer.withValues(alpha: 0.35),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                color: colorScheme.primary.withValues(alpha: 0.3),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(
                    Icons.auto_fix_high_rounded,
                    color: colorScheme.primary,
                    size: 28,
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(
                      'Tap any language to wipe current data, set app locale, and populate realistic activities with rich history logs.',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurface,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          Text(
            'AVAILABLE LANGUAGES (${DemoSeeder.supportedPacks.length})',
            style: theme.textTheme.labelLarge?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),

          // List of language packs
          ...DemoSeeder.supportedPacks.map((pack) {
            final totalEntries = pack.activities.fold<int>(
              0,
              (sum, a) => sum + a.occurrences.length,
            );
            final isSeedingThis = _seedingLocale == pack.localeCode;

            return Card(
              elevation: 0,
              margin: const EdgeInsets.only(bottom: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
                side: BorderSide(
                  color: isSeedingThis
                      ? colorScheme.primary
                      : colorScheme.outlineVariant.withValues(alpha: 0.6),
                  width: isSeedingThis ? 2 : 1,
                ),
              ),
              child: InkWell(
                onTap: _seedingLocale != null ? null : () => _seed(pack),
                borderRadius: BorderRadius.circular(14),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    children: [
                      Text(pack.flag, style: const TextStyle(fontSize: 32)),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              pack.displayName,
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Wrap(
                              spacing: 6,
                              runSpacing: 4,
                              children: [
                                _MetaBadge(
                                  label: pack.localeCode.toUpperCase(),
                                  color: colorScheme.primaryContainer,
                                  textColor: colorScheme.onPrimaryContainer,
                                ),
                                _MetaBadge(
                                  label: '${pack.activities.length} activities',
                                  color: colorScheme.surfaceContainerHighest,
                                  textColor: colorScheme.onSurfaceVariant,
                                ),
                                _MetaBadge(
                                  label: '$totalEntries logs',
                                  color: colorScheme.secondaryContainer
                                      .withValues(alpha: 0.6),
                                  textColor: colorScheme.onSecondaryContainer,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      if (isSeedingThis)
                        const SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(strokeWidth: 2.5),
                        )
                      else
                        FilledButton.tonal(
                          onPressed: _seedingLocale != null
                              ? null
                              : () => _seed(pack),
                          style: FilledButton.styleFrom(
                            visualDensity: VisualDensity.compact,
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                          ),
                          child: const Text('Seed'),
                        ),
                    ],
                  ),
                ),
              ),
            );
          }),

          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 8),

          Text(
            'DANGER ZONE',
            style: theme.textTheme.labelLarge?.copyWith(
              color: colorScheme.error,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),

          Card(
            elevation: 0,
            color: colorScheme.errorContainer.withValues(alpha: 0.15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: BorderSide(color: colorScheme.error.withValues(alpha: 0.4)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.delete_sweep_outlined,
                        color: colorScheme.error,
                        size: 24,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Clear Entire Database',
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: colorScheme.error,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Delete all activities, occurrences & reset default categories.',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: colorScheme.error,
                        side: BorderSide(color: colorScheme.error),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 10,
                        ),
                      ),
                      onPressed: _confirmClearDatabase,
                      icon: const Icon(Icons.delete_forever_outlined, size: 18),
                      label: const Text('Clear Database'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MetaBadge extends StatelessWidget {
  const _MetaBadge({
    required this.label,
    required this.color,
    required this.textColor,
  });

  final String label;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
      ),
    );
  }
}
