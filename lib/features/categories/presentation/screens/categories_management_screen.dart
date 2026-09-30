import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/database/database_provider.dart';
import '../../../../core/providers/analytics_provider.dart';
import '../../../../core/theme/category_colors.dart';
import '../../../../core/theme/category_icons.dart';
import '../../../../core/widgets/confirm_dialog.dart';
import '../../../../l10n/app_localizations.dart';
import '../providers/categories_providers.dart';

final managedCategoryRowsProvider = StreamProvider((ref) {
  return ref.watch(databaseProvider).watchCategories();
});

class CategoryDialog extends StatefulWidget {
  const CategoryDialog({
    super.key,
    required this.title,
    required this.confirmLabel,
    this.initialName,
    this.initialIcon,
    this.hintText,
  });

  final String title;
  final String confirmLabel;
  final String? initialName;
  final String? initialIcon;
  final String? hintText;

  @override
  State<CategoryDialog> createState() => _CategoryDialogState();
}

class _CategoryDialogState extends State<CategoryDialog> {
  late final TextEditingController _controller;
  late String _selectedIconKey;
  bool _manuallyPicked = false;

  @override
  void initState() {
    super.initState();
    final name = widget.initialName ?? '';
    _controller = TextEditingController(text: name);
    _selectedIconKey = widget.initialIcon ?? CategoryIcons.suggestIconKey(name);
    _manuallyPicked = widget.initialIcon != null;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onNameChanged(String val) {
    if (!_manuallyPicked) {
      final suggested = CategoryIcons.suggestIconKey(val);
      if (suggested != _selectedIconKey) {
        setState(() => _selectedIconKey = suggested);
      }
    }
  }

  void _submit() {
    final name = _controller.text.trim();
    if (name.isEmpty) return;
    Navigator.pop(context, (name: name, icon: _selectedIconKey));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = CategoryColors.pickForName(_controller.text);

    return AlertDialog(
      title: Text(widget.title),
      content: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _controller,
                autofocus: widget.initialName == null,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  hintText: widget.hintText,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: color.withValues(alpha: 0.2),
                      foregroundColor: color,
                      child: Icon(
                        CategoryIcons.getIcon(_selectedIconKey),
                        size: 16,
                      ),
                    ),
                  ),
                ),
                onChanged: _onNameChanged,
                onTapOutside: (_) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                onSubmitted: (_) => _submit(),
              ),
              const SizedBox(height: 16),
              Text(
                'Select icon',
                style: theme.textTheme.labelMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 180,
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemCount: CategoryIcons.icons.length,
                  itemBuilder: (context, index) {
                    final entry = CategoryIcons.icons.entries.elementAt(index);
                    final isSelected = entry.key == _selectedIconKey;
                    return InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        setState(() {
                          _selectedIconKey = entry.key;
                          _manuallyPicked = true;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 150),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? color.withValues(alpha: 0.22)
                              : theme.colorScheme.surfaceContainerHighest
                                    .withValues(alpha: 0.5),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: isSelected ? color : Colors.transparent,
                            width: 1.5,
                          ),
                        ),
                        child: Icon(
                          entry.value,
                          size: 20,
                          color: isSelected
                              ? color
                              : theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(AppLocalizations.of(context).cancel),
        ),
        FilledButton(onPressed: _submit, child: Text(widget.confirmLabel)),
      ],
    );
  }
}

/// Screen for adding, renaming, and deleting custom categories.
class CategoriesManagementScreen extends ConsumerWidget {
  const CategoriesManagementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final categoriesAsync = ref.watch(managedCategoryRowsProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.categoriesTitle)),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showAddDialog(context, ref),
        icon: const Icon(Icons.add),
        label: Text(l10n.add),
      ),
      body: categoriesAsync.when(
        data: (categories) {
          if (categories.isEmpty) {
            return Center(child: Text(l10n.noCategoriesYet));
          }
          return ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: categories.length,
            separatorBuilder: (_, _) => const Divider(height: 1, indent: 72),
            itemBuilder: (context, index) {
              final category = categories[index];
              return Dismissible(
                key: ValueKey(category.id),
                direction: DismissDirection.endToStart,
                background: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 20),
                  color: Theme.of(context).colorScheme.errorContainer,
                  child: Icon(
                    Icons.delete_outline,
                    color: Theme.of(context).colorScheme.onErrorContainer,
                  ),
                ),
                confirmDismiss: (_) =>
                    _confirmDeleteCategory(context, category.name),
                onDismissed: (_) {
                  ref
                      .read(categoryRepositoryProvider)
                      .deleteCategory(category.id);
                  ref
                      .read(analyticsServiceProvider)
                      .trackCategoryDeleted(categoryName: category.name);
                },
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: CategoryColors.fromArgb(
                      category.color,
                    ).withValues(alpha: 0.2),
                    foregroundColor: CategoryColors.fromArgb(category.color),
                    child: Icon(
                      CategoryIcons.getIcon(
                        category.icon,
                        categoryName: category.name,
                      ),
                      size: 20,
                    ),
                  ),
                  title: Text(category.name),
                  trailing: PopupMenuButton<String>(
                    icon: const Icon(Icons.more_vert),
                    itemBuilder: (context) => [
                      PopupMenuItem(value: 'edit', child: Text(l10n.edit)),
                      PopupMenuItem(value: 'delete', child: Text(l10n.delete)),
                    ],
                    onSelected: (value) async {
                      if (value == 'edit') {
                        await _showEditDialog(
                          context,
                          ref,
                          category.id,
                          category.name,
                          category.icon,
                        );
                      } else if (value == 'delete') {
                        final confirmed = await _confirmDeleteCategory(
                          context,
                          category.name,
                        );
                        if (confirmed) {
                          await ref
                              .read(categoryRepositoryProvider)
                              .deleteCategory(category.id);
                          ref
                              .read(analyticsServiceProvider)
                              .trackCategoryDeleted(
                                categoryName: category.name,
                              );
                        }
                      }
                    },
                  ),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text(l10n.errorWithDetails('$e'))),
      ),
    );
  }

  Future<bool> _confirmDeleteCategory(BuildContext context, String name) {
    final l10n = AppLocalizations.of(context);
    return showConfirmDialog(
      context,
      title: l10n.deleteCategoryTitle,
      message: l10n.deleteCategoryMessage(name),
    );
  }

  Future<void> _showAddDialog(BuildContext context, WidgetRef ref) async {
    final l10n = AppLocalizations.of(context);
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
              source: 'management_screen',
            );
      } catch (_) {
        if (context.mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(l10n.categoryAlreadyExists)));
        }
      }
    }
  }

  Future<void> _showEditDialog(
    BuildContext context,
    WidgetRef ref,
    int id,
    String currentName,
    String? currentIcon,
  ) async {
    final l10n = AppLocalizations.of(context);
    final result = await showDialog<({String name, String icon})>(
      context: context,
      builder: (context) => CategoryDialog(
        title: l10n.edit,
        confirmLabel: l10n.save,
        initialName: currentName,
        initialIcon: currentIcon,
      ),
    );
    if (result != null &&
        result.name.isNotEmpty &&
        (result.name != currentName || result.icon != currentIcon)) {
      await ref
          .read(categoryRepositoryProvider)
          .renameCategory(id, result.name, newIcon: result.icon);
      ref.read(analyticsServiceProvider).trackCategoryEdited(
            oldName: currentName,
            newName: result.name,
            icon: result.icon,
          );
    }
  }
}
