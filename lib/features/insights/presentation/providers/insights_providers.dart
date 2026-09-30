import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/database/database_provider.dart';
import '../../../../core/utils/activity_status.dart';
import '../../../activities/domain/entities/activity.dart';

class ActivityInsight {
  const ActivityInsight({
    required this.activity,
    required this.totalLogs,
    required this.averageIntervalDays,
    required this.lastIntervalDays,
    required this.status,
    required this.intervals,
    this.lastDoneAt,
  });

  final Activity activity;
  final int totalLogs;
  final double? averageIntervalDays;
  final double? lastIntervalDays;
  final ActivityStatus status;
  final List<double> intervals;
  final DateTime? lastDoneAt;
}

class GlobalInsight {
  const GlobalInsight({
    required this.totalActivities,
    required this.totalLogs,
    required this.mostOverdue,
    required this.activityInsights,
  });

  final int totalActivities;
  final int totalLogs;
  final ActivityInsight? mostOverdue;
  final List<ActivityInsight> activityInsights;
}

final insightsProvider = FutureProvider<GlobalInsight>((ref) async {
  final activityRepo = ref.watch(activityRepositoryProvider);
  final occurrenceRepo = ref.watch(occurrenceRepositoryProvider);
  final calculator = ActivityStatusCalculator();

  // One-time snapshot of all activities and when each was last logged.
  final activitiesWithLast = await activityRepo.watchAllWithLastDone().first;
  final insights = <ActivityInsight>[];

  for (final item in activitiesWithLast) {
    // Pull every log for this activity so we can count them and measure gaps.
    final occurrences = await occurrenceRepo.getByActivityId(
      item.activity.id,
      limit: 10000,
    );
    final intervals = _computeIntervals(
      occurrences.map((o) => o.doneAt).toList(),
    );
    final status = calculator.compute(
      activity: item.activity,
      lastDoneAt: item.lastDoneAt,
    );

    insights.add(
      ActivityInsight(
        activity: item.activity,
        totalLogs: occurrences.length,
        averageIntervalDays: intervals.isEmpty
            ? null
            : intervals.reduce((a, b) => a + b) / intervals.length,
        lastIntervalDays: intervals.isEmpty ? null : intervals.first,
        status: status,
        // Chart only needs the most recent gaps — keep the payload small.
        intervals: intervals.take(10).toList(),
        lastDoneAt: item.lastDoneAt,
      ),
    );
  }

  // Sort activities by recently done first, matching home screen behavior.
  // Never-logged activities are placed at the end, ordered by creation date.
  insights.sort((a, b) {
    if (a.lastDoneAt != null && b.lastDoneAt != null) {
      final cmp = b.lastDoneAt!.compareTo(a.lastDoneAt!);
      if (cmp != 0) return cmp;
    } else if (a.lastDoneAt != null) {
      return -1;
    } else if (b.lastDoneAt != null) {
      return 1;
    }
    final updateCmp = b.activity.updatedAt.compareTo(a.activity.updatedAt);
    if (updateCmp != 0) return updateCmp;
    return b.activity.createdAt.compareTo(a.activity.createdAt);
  });

  // Pick one overdue activity to highlight (alphabetically first if several).
  final mostOverdue = insights
      .where((i) => i.status == ActivityStatus.overdue)
      .cast<ActivityInsight?>()
      .fold<ActivityInsight?>(null, (prev, curr) {
        if (curr == null) return prev;
        if (prev == null) return curr;
        return curr.activity.title.compareTo(prev.activity.title) < 0
            ? curr
            : prev;
      });

  final totalLogs = await occurrenceRepo.countAll();

  return GlobalInsight(
    totalActivities: activitiesWithLast.length,
    totalLogs: totalLogs,
    mostOverdue: mostOverdue,
    activityInsights: insights,
  );
});

List<double> _computeIntervals(List<DateTime> dates) {
  if (dates.length < 2) return [];
  // Newest log first — intervals[i] is days between log i and log i+1.
  final sorted = dates.toList()..sort((a, b) => b.compareTo(a));
  final intervals = <double>[];
  for (var i = 0; i < sorted.length - 1; i++) {
    intervals.add(sorted[i].difference(sorted[i + 1]).inHours / 24.0);
  }
  return intervals;
}
