import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:remember_last/core/database/database_provider.dart';
import 'package:remember_last/core/utils/activity_status.dart';
import 'package:remember_last/features/activities/domain/entities/activity.dart';
import 'package:remember_last/features/activities/domain/enums/reminder_type.dart';
import 'package:remember_last/features/activities/domain/repositories/activity_repository.dart';
import 'package:remember_last/features/activities/presentation/providers/activities_providers.dart';

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

void main() {
  group('ActivityFilterNotifier', () {
    test('default state has empty query, null category, recentlyDone sort', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      final state = container.read(activityFilterProvider);
      expect(state.searchQuery, '');
      expect(state.category, isNull);
      expect(state.sort, ActivitySort.recentlyDone);
    });

    test('updates search, category, sort, and resets on clearFilters', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      final notifier = container.read(activityFilterProvider.notifier);

      notifier.setSearch('Dentist');
      expect(container.read(activityFilterProvider).searchQuery, 'Dentist');

      notifier.setCategory('Health');
      expect(container.read(activityFilterProvider).category, 'Health');

      notifier.setSort(ActivitySort.overdue);
      expect(container.read(activityFilterProvider).sort, ActivitySort.overdue);

      notifier.setCategory(null);
      expect(container.read(activityFilterProvider).category, isNull);

      notifier.setCategory('Vehicle');
      notifier.clearFilters();
      final resetState = container.read(activityFilterProvider);
      expect(resetState.searchQuery, '');
      expect(resetState.category, isNull);
      expect(resetState.sort, ActivitySort.recentlyDone);
    });
  });

  group('filteredActivitiesProvider', () {
    final now = DateTime.now();

    final dentist = Activity(
      id: 1,
      uuid: 'act-1',
      title: 'Dentist Checkup',
      category: 'Health',
      reminderType: ReminderType.monthly,
      reminderDays: 30,
      createdAt: now.subtract(const Duration(days: 60)),
      updatedAt: now.subtract(const Duration(days: 60)),
    );

    final oilChange = Activity(
      id: 2,
      uuid: 'act-2',
      title: 'Change Car Engine Oil',
      category: 'Vehicle',
      reminderType: ReminderType.custom,
      reminderDays: 90,
      createdAt: now.subtract(const Duration(days: 50)),
      updatedAt: now.subtract(const Duration(days: 50)),
    );

    final haircut = Activity(
      id: 3,
      uuid: 'act-3',
      title: 'Haircut',
      category: 'Personal',
      reminderType: ReminderType.none,
      createdAt: now.subtract(const Duration(days: 40)),
      updatedAt: now.subtract(const Duration(days: 40)),
    );

    final items = [
      ActivityWithLastDone(
        activity: dentist,
        lastDoneAt: now.subtract(
          const Duration(days: 45),
        ), // Overdue (> 30 days)
      ),
      ActivityWithLastDone(
        activity: oilChange,
        lastDoneAt: now.subtract(const Duration(days: 5)), // Recent (5 < 90)
      ),
      ActivityWithLastDone(
        activity: haircut,
        lastDoneAt: null, // Never logged
      ),
    ];

    ProviderContainer createContainer([
      List<ActivityWithLastDone>? customItems,
    ]) {
      final container = ProviderContainer(
        overrides: [
          activityRepositoryProvider.overrideWithValue(
            _FakeActivityRepository(customItems ?? items),
          ),
        ],
      );
      addTearDown(container.dispose);
      return container;
    }

    test('filters by title query case-insensitively', () async {
      final container = createContainer();
      container.read(activityFilterProvider.notifier).setSearch('oil');

      // Wait for stream to emit
      final list = await container.read(activitiesWithLastDoneProvider.future);
      expect(list.length, 3);

      final filtered = container.read(filteredActivitiesProvider).value!;
      expect(filtered.length, 1);
      expect(filtered.first.item.activity.title, 'Change Car Engine Oil');
    });

    test('filters by category name in search query', () async {
      final container = createContainer();
      container.read(activityFilterProvider.notifier).setSearch('health');

      await container.read(activitiesWithLastDoneProvider.future);
      final filtered = container.read(filteredActivitiesProvider).value!;
      expect(filtered.length, 1);
      expect(filtered.first.item.activity.title, 'Dentist Checkup');
    });

    test('filters by selected category', () async {
      final container = createContainer();
      container.read(activityFilterProvider.notifier).setCategory('Personal');

      await container.read(activitiesWithLastDoneProvider.future);
      final filtered = container.read(filteredActivitiesProvider).value!;
      expect(filtered.length, 1);
      expect(filtered.first.item.activity.title, 'Haircut');
    });

    test('sorts by recentlyDone: most recently done first, nulls last', () async {
      final container = createContainer();
      container
          .read(activityFilterProvider.notifier)
          .setSort(ActivitySort.recentlyDone);

      await container.read(activitiesWithLastDoneProvider.future);
      final filtered = container.read(filteredActivitiesProvider).value!;

      // Order should be: Oil Change (5 days ago), Dentist (45 days ago), Haircut (null)
      expect(filtered.map((f) => f.item.activity.title).toList(), [
        'Change Car Engine Oil',
        'Dentist Checkup',
        'Haircut',
      ]);
    });

    test('sorts by overdue status priority', () async {
      final container = createContainer();
      container
          .read(activityFilterProvider.notifier)
          .setSort(ActivitySort.overdue);

      await container.read(activitiesWithLastDoneProvider.future);
      final filtered = container.read(filteredActivitiesProvider).value!;

      // Status priorities: Overdue (Dentist) -> Never logged (Haircut) -> Recent (Oil Change)
      expect(filtered[0].status, ActivityStatus.overdue);
      expect(filtered[0].item.activity.title, 'Dentist Checkup');

      expect(filtered[1].status, ActivityStatus.neverLogged);
      expect(filtered[1].item.activity.title, 'Haircut');

      expect(filtered[2].status, ActivityStatus.recent);
      expect(filtered[2].item.activity.title, 'Change Car Engine Oil');
    });

    test('sorts alphabetically by title', () async {
      final container = createContainer();
      container
          .read(activityFilterProvider.notifier)
          .setSort(ActivitySort.alphabetical);

      await container.read(activitiesWithLastDoneProvider.future);
      final filtered = container.read(filteredActivitiesProvider).value!;

      expect(filtered.map((f) => f.item.activity.title).toList(), [
        'Change Car Engine Oil',
        'Dentist Checkup',
        'Haircut',
      ]);
    });
  });
}
