import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/providers/analytics_provider.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../l10n/app_localizations.dart';
import '../providers/categories_providers.dart';
import '../screens/categories_management_screen.dart';

/// Modal bottom sheet allowing the user to select or add a category with its icon and color.
class CategoryPickerSheet extends ConsumerWidget {
  const CategoryPickerSheet({
    super.key,
    required this.selectedCategory,
    required this.categoryOptions,
  });

  final String? selectedCategory;
  final List<String> categoryOptions;

  static Future<String?> show(
    BuildContext context, {
    required String? selectedCategory,
    required List<String> categoryOptions,
  }) {
    return showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (context) => CategoryPickerSheet(
        selectedCategory: selectedCategory,
        categoryOptions: categoryOptions,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);
    final categoryColors = ref.watch(categoryColorMapProvider).valueOrNull;
    final categoryIcons = ref.watch(categoryIconMapProvider).valueOrNull;

    final maxHeight = MediaQuery.sizeOf(context).height * 0.7;

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: maxHeight),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 16, 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    l10n.categoryLabel,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.settings_outlined),
                  tooltip: l10n.manageCategories,
                  onPressed: () {
                    Navigator.pop(context);
                    context.push(AppRoutes.categories);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  tooltip: l10n.cancel,
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Flexible(
            child: ListView(
              shrinkWrap: true,
              children: [
                // "None" option to clear category
                ListTile(
                  leading: CircleAvatar(
                    radius: 16,
                    backgroundColor: theme.colorScheme.surfaceContainerHighest,
                    child: Icon(
                      Icons.block_rounded,
                      size: 16,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  title: Text(l10n.reminderNone),
                  trailing:
                      selectedCategory == null || selectedCategory!.isEmpty
                      ? Icon(
                          Icons.check_rounded,
                          color: theme.colorScheme.primary,
                        )
                      : null,
                  onTap: () => Navigator.pop(context, ''),
                ),
                ...categoryOptions.map((name) {
                  final isSelected = selectedCategory == name;
                  final color = resolveCategoryColor(name, categoryColors);
                  final icon = resolveCategoryIcon(name, categoryIcons);

                  return ListTile(
                    leading: CircleAvatar(
                      radius: 16,
                      backgroundColor: color.withValues(alpha: 0.18),
                      foregroundColor: color,
                      child: Icon(icon, size: 18),
                    ),
                    title: Text(
                      name,
                      style: TextStyle(
                        fontWeight: isSelected
                            ? FontWeight.bold
                            : FontWeight.w500,
                      ),
                    ),
                    trailing: isSelected
                        ? Icon(
                            Icons.check_rounded,
                            color: theme.colorScheme.primary,
                          )
                        : null,
                    onTap: () => Navigator.pop(context, name),
                  );
                }),
              ],
            ),
          ),
          const Divider(height: 1),
          ListTile(
            leading: CircleAvatar(
              radius: 16,
              backgroundColor: theme.colorScheme.primaryContainer,
              foregroundColor: theme.colorScheme.onPrimaryContainer,
              child: const Icon(Icons.add, size: 18),
            ),
            title: Text(
              l10n.newCategory,
              style: TextStyle(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: const Icon(Icons.chevron_right, size: 20),
            onTap: () async {
              final result = await showDialog<({String name, String icon})>(
                context: context,
                builder: (context) => CategoryDialog(
                  title: l10n.newCategory,
                  confirmLabel: l10n.add,
                  hintText: l10n.categoryHintExample,
                ),
              );
              if (result != null && result.name.isNotEmpty) {
                try {
                  await ref
                      .read(categoryRepositoryProvider)
                      .addCategory(result.name, icon: result.icon);
                  ref.read(analyticsServiceProvider).trackCategoryCreated(
                        categoryName: result.name,
                        icon: result.icon,
                        source: 'picker_sheet',
                      );
                } catch (_) {}
                if (context.mounted) {
                  Navigator.pop(context, result.name);
                }
              }
            },
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
