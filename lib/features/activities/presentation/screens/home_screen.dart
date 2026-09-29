import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/database/database_provider.dart';
import '../../../../core/providers/analytics_provider.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/widgets/activity_card.dart';
import '../../../../core/widgets/app_brand_title.dart';
import '../../../../core/widgets/confirm_dialog.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../categories/presentation/providers/categories_providers.dart';
import '../../../occurrences/domain/entities/occurrence.dart';
import '../providers/activities_providers.dart';
import '../widgets/home_filters_bar.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activitiesAsync = ref.watch(filteredActivitiesProvider);
    final allActivitiesAsync = ref.watch(activitiesWithLastDoneProvider);
    final filter = ref.watch(activityFilterProvider);
    final elapsedNow = ref.watch(elapsedTickerProvider).valueOrNull;
    final l10n = AppLocalizations.of(context);
    final hasActiveFilters =
        filter.searchQuery.isNotEmpty || filter.category != null;

    return Scaffold(
      appBar: AppBar(
        title: const AppBrandTitle(),
        actions: [
          IconButton(
            icon: const Icon(Icons.insights_outlined),
            tooltip: l10n.insights,
            onPressed: () => context.push(AppRoutes.insights),
          ),
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            tooltip: l10n.settings,
            onPressed: () => context.push(AppRoutes.settings),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: HomeFiltersBar(),
          ),
          Expanded(
            child: activitiesAsync.when(
              data: (items) {
                if (items.isNotEmpty) {
                  return _ActivityList(items: items, elapsedNow: elapsedNow);
                }

                return allActivitiesAsync.when(
                  data: (all) {
                    if (all.isEmpty) {
                      return EmptyState(
                        title: l10n.emptyNothingYetTitle,
                        message: l10n.emptyNothingYetMessage,
                        actionLabel: l10n.addActivity,
                        onAction: () => context.push(AppRoutes.activityNew),
                      );
                    }
                    return EmptyState(
                      title: l10n.noMatches,
                      message: hasActiveFilters
                          ? l10n.noMatchesFilter
                          : l10n.nothingToShow,
                      actionLabel: hasActiveFilters ? l10n.clearFilters : null,
                      actionIcon: Icons.filter_alt_off,
                      onAction: hasActiveFilters
                          ? () => ref
                                .read(activityFilterProvider.notifier)
                                .clearFilters()
                          : null,
                      icon: Icons.search_off_outlined,
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (e, _) =>
                      Center(child: Text(l10n.errorWithDetails('$e'))),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text(l10n.errorWithDetails('$e'))),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push(AppRoutes.activityNew),
        icon: const Icon(Icons.add),
        label: Text(l10n.addActivityFab),
      ),
    );
  }
}

class _ActivityList extends ConsumerWidget {
  const _ActivityList({required this.items, this.elapsedNow});

  final List<ActivityListItem> items;
  final DateTime? elapsedNow;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = constraints.maxWidth >= 700;
        final maxWidth = isWide ? 900.0 : double.infinity;

        return Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: isWide
                ? GridView.builder(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 56),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 2.1,
                        ),
                    itemCount: items.length,
                    itemBuilder: (context, index) => _buildDismissibleItem(
                      context,
                      ref,
                      items[index],
                      elapsedNow,
                    ),
                  )
                : ListView.separated(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 56),
                    itemCount: items.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 10),
                    itemBuilder: (context, index) => _buildDismissibleItem(
                      context,
                      ref,
                      items[index],
                      elapsedNow,
                    ),
                  ),
          ),
        );
      },
    );
  }

  Widget _buildDismissibleItem(
    BuildContext context,
    WidgetRef ref,
    ActivityListItem listItem,
    DateTime? elapsedNow,
  ) {
    final activity = listItem.item.activity;
    final colorMap = ref.watch(categoryColorMapProvider).valueOrNull;
    final categoryName = activity.category;
    final categoryColor = (categoryName != null && categoryName.isNotEmpty)
        ? resolveCategoryColor(categoryName, colorMap)
        : null;

    return Dismissible(
      key: ValueKey(activity.id),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.errorContainer,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(
          Icons.delete_outline,
          color: Theme.of(context).colorScheme.onErrorContainer,
        ),
      ),
      confirmDismiss: (_) async {
        return showConfirmDialog(
          context,
          title: AppLocalizations.of(context).deleteActivityTitle,
          message: AppLocalizations.of(
            context,
          ).deleteActivityMessageUndo(activity.title),
        );
      },
      onDismissed: (_) async {
        final occurrences = await ref
            .read(occurrenceRepositoryProvider)
            .getByActivityId(activity.id);
        ref
            .read(analyticsServiceProvider)
            .trackActivityDeleted(
              source: 'swipe',
              totalOccurrencesCount: occurrences.length,
            );
        await ref.read(activityRepositoryProvider).delete(activity.id);
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                AppLocalizations.of(context).deletedActivity(activity.title),
              ),
            ),
          );
        }
      },
      child: ActivityCard(
        item: listItem.item,
        status: listItem.status,
        elapsedNow: elapsedNow,
        categoryColor: categoryColor,
        onTap: () {
          final lastDone = listItem.item.lastDoneAt;
          final daysSince = lastDone != null
              ? DateTime.now().difference(lastDone).inDays
              : null;
          ref
              .read(analyticsServiceProvider)
              .trackActivityInsightsViewed(
                status: listItem.status.name,
                hasReminder: activity.reminderDays != null,
                reminderDays: activity.reminderDays,
                hasCategory:
                    activity.category != null && activity.category!.isNotEmpty,
                daysSinceLastDone: daysSince,
              );
          context.push(AppRoutes.activityDetail(activity.id));
        },
        onQuickLog: () => _quickLog(context, ref, activity.id, activity.title),
      ),
    );
  }

  Future<void> _quickLog(
    BuildContext context,
    WidgetRef ref,
    int activityId,
    String title,
  ) async {
    final doneAt = DateTime.now();
    await ref
        .read(occurrenceRepositoryProvider)
        .insert(Occurrence(id: 0, activityId: activityId, doneAt: doneAt));
    await ref
        .read(analyticsServiceProvider)
        .trackOccurrenceLogged(
          source: 'quick_log',
          hasNote: false,
          doneAt: doneAt,
        );
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context).loggedNow(title))),
      );
    }
  }
}
