import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:remember_last/core/database/database_provider.dart';
import 'package:remember_last/features/activities/domain/entities/activity.dart';
import 'package:remember_last/features/activities/domain/enums/reminder_type.dart';
import 'package:remember_last/features/activities/domain/repositories/activity_repository.dart';
import 'package:remember_last/features/insights/presentation/providers/insights_providers.dart';
import 'package:remember_last/features/occurrences/domain/entities/occurrence.dart';
import 'package:remember_last/features/occurrences/domain/repositories/occurrence_repository.dart';

class _FakeActivityRepository implements ActivityRepository {
  _FakeActivityRepository(this.items);
  final List<ActivityWithLastDone> items;

  @override
  Stream<List<ActivityWithLastDone>> watchAllWithLastDone() =>
      Stream.value(items);

  @override
  Future<List<Activity>> getAll() async =>
      items.map((i) => i.activity).toList();

  @override
  Future<Activity?> getById(int id) async => null;

  @override
  Stream<Activity?> watchById(int id) => Stream.value(null);

  @override
  Future<Activity?> getByUuid(String uuid) async => null;

  @override
  Future<int> insert(Activity activity) async => 0;

  @override
  Future<void> update(Activity activity) async {}

  @override
  Future<void> delete(int id) async {}

  @override
  Future<List<String>> getCategories() async => [];

  @override
  Future<bool> isEmpty() async => items.isEmpty;
}

class _FakeOccurrenceRepository implements OccurrenceRepository {
  @override
  Stream<List<Occurrence>> watchByActivityId(int activityId) =>
      Stream.value([]);

  @override
  Future<List<Occurrence>> getByActivityId(
    int activityId, {
    int limit = 50,
    int offset = 0,
  }) async => [];

  @override
  Future<Occurrence?> getLatestForActivity(int activityId) async => null;

  @override
  Future<int> insert(Occurrence occurrence) async => 0;

  @override
  Future<void> delete(int id) async {}

  @override
  Future<void> update(Occurrence occurrence) async {}

  @override
  Future<int> countForActivity(int activityId) async => 0;

  @override
  Future<int> countAll() async => 0;
}

void main() {
  test('insightsProvider sorts activities by recently done first', () async {
    final activityA = Activity(
      id: 1,
      uuid: 'a',
      title: 'Activity A',
      createdAt: DateTime(2026, 1, 1),
      updatedAt: DateTime(2026, 1, 1),
      reminderType: ReminderType.none,
    );
    final activityB = Activity(
      id: 2,
      uuid: 'b',
      title: 'Activity B',
      createdAt: DateTime(2026, 1, 2),
      updatedAt: DateTime(2026, 1, 2),
      reminderType: ReminderType.none,
    );
    final activityC = Activity(
      id: 3,
      uuid: 'c',
      title: 'Activity C',
      createdAt: DateTime(2026, 1, 3),
      updatedAt: DateTime(2026, 1, 3),
      reminderType: ReminderType.none,
    );

    // Initial order from DB (C, B, A), but B was done recently
    final items = [
      ActivityWithLastDone(activity: activityC, lastDoneAt: null),
      ActivityWithLastDone(
        activity: activityB,
        lastDoneAt: DateTime(2026, 1, 10),
      ),
      ActivityWithLastDone(activity: activityA, lastDoneAt: null),
    ];

    final container = ProviderContainer(
      overrides: [
        activityRepositoryProvider.overrideWithValue(
          _FakeActivityRepository(items),
        ),
        occurrenceRepositoryProvider.overrideWithValue(
          _FakeOccurrenceRepository(),
        ),
      ],
    );
    addTearDown(container.dispose);

    final globalInsight = await container.read(insightsProvider.future);

    // B should be first because it has the most recent lastDoneAt,
    // followed by C and A (which have null lastDoneAt, ordered by createdAt/updatedAt descending).
    expect(
      globalInsight.activityInsights.map((i) => i.activity.title).toList(),
      ['Activity B', 'Activity C', 'Activity A'],
    );
  });
}
