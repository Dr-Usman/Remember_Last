import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../categories/presentation/providers/categories_providers.dart';
import '../../../../core/providers/analytics_provider.dart';
import '../providers/activities_providers.dart';
import '../../../../l10n/app_localizations.dart';

/// Search, category filter chips, and sort controls for the home screen.
class HomeFiltersBar extends ConsumerStatefulWidget {
  const HomeFiltersBar({super.key});

  @override
  ConsumerState<HomeFiltersBar> createState() => _HomeFiltersBarState();
}

class _HomeFiltersBarState extends ConsumerState<HomeFiltersBar> {
  static const double _filterControlHeight = 48;

  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController(
      text: ref.read(activityFilterProvider).searchQuery,
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final filter = ref.watch(activityFilterProvider);
    final categoriesAsync = ref.watch(mergedCategoriesProvider);
    final iconMap = ref.watch(categoryIconMapProvider).valueOrNull;

    // Keep controller in sync when filter is cleared externally.
    if (_searchController.text != filter.searchQuery) {
      _searchController.text = filter.searchQuery;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                height: _filterControlHeight,
                child: TextField(
                  controller: _searchController,
                  textAlignVertical: TextAlignVertical.center,
                  onTapOutside: (_) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  decoration: InputDecoration(
                    hintText: l10n.searchHint,
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: filter.searchQuery.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              _searchController.clear();
                              ref
                                  .read(activityFilterProvider.notifier)
                                  .setSearch('');
                            },
                          )
                        : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  onChanged: (value) => ref
                      .read(activityFilterProvider.notifier)
                      .setSearch(value),
                  onSubmitted: (value) {
                    if (value.trim().isEmpty) return;
                    final items =
                        ref.read(filteredActivitiesProvider).valueOrNull ?? [];
                    ref
                        .read(analyticsServiceProvider)
                        .trackSearchPerformed(
                          hadResults: items.isNotEmpty,
                          resultCount: items.length,
                        );
                  },
                ),
              ),
            ),
            const SizedBox(width: 8),
            PopupMenuButton<ActivitySort>(
              tooltip: l10n.sortTooltip(_sortLabel(l10n, filter.sort)),
              onSelected: (sort) {
                ref.read(activityFilterProvider.notifier).setSort(sort);
                ref
                    .read(analyticsServiceProvider)
                    .trackSortOrderChanged(sort.name);
              },
              itemBuilder: (context) => [
                _sortMenuItem(
                  value: ActivitySort.recentlyDone,
                  label: l10n.sortRecentlyDone,
                  selected: filter.sort == ActivitySort.recentlyDone,
                ),
                _sortMenuItem(
                  value: ActivitySort.overdue,
                  label: l10n.sortOverdueFirst,
                  selected: filter.sort == ActivitySort.overdue,
                ),
                _sortMenuItem(
                  value: ActivitySort.alphabetical,
                  label: l10n.sortAlphabetical,
                  selected: filter.sort == ActivitySort.alphabetical,
                ),
              ],
              // Finite-width outlined control (InputDecorator needs bounded width).
              child: SizedBox(
                height: _filterControlHeight,
                child: Material(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.sort, size: 22),
                          const SizedBox(width: 2),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 22,
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        categoriesAsync.when(
          data: (categories) {
            if (categories.isEmpty) return const SizedBox.shrink();
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _CategoryChip(
                    label: l10n.categoryAll,
                    selected: filter.category == null,
                    onSelected: () {
                      ref
                          .read(activityFilterProvider.notifier)
                          .setCategory(null);
                      ref
                          .read(analyticsServiceProvider)
                          .trackFilterCategorySelected(
                            category: 'all',
                            isAll: true,
                          );
                    },
                  ),
                  const SizedBox(width: 8),
                  ...categories.map(
                    (cat) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: _CategoryChip(
                        label: cat,
                        icon: resolveCategoryIcon(cat, iconMap),
                        selected: filter.category == cat,
                        onSelected: () {
                          ref
                              .read(activityFilterProvider.notifier)
                              .setCategory(cat);
                          ref
                              .read(analyticsServiceProvider)
                              .trackFilterCategorySelected(
                                category: cat,
                                isAll: false,
                              );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          loading: () => const SizedBox.shrink(),
          error: (_, _) => const SizedBox.shrink(),
        ),
      ],
    );
  }

  PopupMenuItem<ActivitySort> _sortMenuItem({
    required ActivitySort value,
    required String label,
    required bool selected,
  }) {
    return PopupMenuItem(
      value: value,
      child: Row(
        children: [
          if (selected)
            const Icon(Icons.check, size: 18)
          else
            const SizedBox(width: 18),
          const SizedBox(width: 8),
          Text(label),
        ],
      ),
    );
  }

  String _sortLabel(AppLocalizations l10n, ActivitySort sort) => switch (sort) {
    ActivitySort.recentlyDone => l10n.sortRecentlyDone,
    ActivitySort.overdue => l10n.sortOverdueFirst,
    ActivitySort.alphabetical => l10n.sortAlphabetical,
  };
}

class _CategoryChip extends StatelessWidget {
  const _CategoryChip({
    required this.label,
    required this.selected,
    required this.onSelected,
    this.icon,
  });

  final String label;
  final bool selected;
  final VoidCallback onSelected;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return FilterChip(
      avatar: icon != null
          ? Icon(
              icon,
              size: 16,
              color: selected ? scheme.primary : scheme.onSurfaceVariant,
            )
          : null,
      label: Text(label),
      selected: selected,
      showCheckmark: false,
      onSelected: (_) => onSelected(),
      labelStyle: TextStyle(
        fontSize: 14,
        color: selected ? scheme.primary : scheme.onSurface,
        fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
      ),
    );
  }
}
