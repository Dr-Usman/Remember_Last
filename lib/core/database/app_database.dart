import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../features/activities/data/mappers/activity_mapper.dart';
import '../theme/category_colors.dart';
import 'tables.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Activities, Occurrences, Categories])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 2;

  static const defaultCategories = [
    (name: 'Home', icon: 'home'),
    (name: 'Health', icon: 'favorite'),
    (name: 'Vehicle', icon: 'directions_car'),
    (name: 'Personal', icon: 'person'),
    (name: 'Work', icon: 'work'),
    (name: 'Fitness', icon: 'fitness_center'),
    (name: 'Pets', icon: 'pets'),
    (name: 'Finance', icon: 'payments'),
  ];
  static List<String> get defaultCategoryNames =>
      defaultCategories.map((c) => c.name).toList();
  static const databaseName = 'remember_last.db';

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
      await _createIndexes();
      await _seedDefaultCategories();
    },
    onUpgrade: (m, from, to) async {
      if (from < 2) {
        await m.addColumn(categories, categories.icon);
        for (final item in defaultCategories) {
          await (update(
            categories,
          )..where((c) => c.name.equals(item.name))).write(
            CategoriesCompanion(
              color: Value(CategoryColors.argbForName(item.name)),
              icon: Value(item.icon),
            ),
          );
        }
        await _seedDefaultCategories();
      }
    },
    beforeOpen: (details) async {
      for (final item in defaultCategories) {
        await (update(
          categories,
        )..where((c) => c.name.equals(item.name))).write(
          CategoriesCompanion(
            color: Value(CategoryColors.argbForName(item.name)),
          ),
        );
      }
    },
  );

  Future<void> _createIndexes() async {
    await customStatement(
      'CREATE INDEX IF NOT EXISTS idx_activities_category ON activities(category)',
    );
    await customStatement(
      'CREATE INDEX IF NOT EXISTS idx_activities_updated_at ON activities(updated_at)',
    );
    await customStatement(
      'CREATE INDEX IF NOT EXISTS idx_occurrences_activity_done ON occurrences(activity_id, done_at DESC)',
    );
  }

  Future<void> _seedDefaultCategories() async {
    final now = DateTime.now();
    for (final item in defaultCategories) {
      await into(categories).insert(
        CategoriesCompanion.insert(
          name: item.name,
          color: CategoryColors.argbForName(item.name),
          icon: Value(item.icon),
          createdAt: now,
        ),
        mode: InsertMode.insertOrIgnore,
      );
    }
  }

  Stream<List<ActivityWithLastDoneRow>> watchActivitiesWithLastDone() {
    return customSelect(
      '''
      SELECT
        a.id AS id,
        a.uuid AS uuid,
        a.title AS title,
        a.category AS category,
        a.notes AS notes,
        a.reminder_days AS reminder_days,
        a.reminder_type AS reminder_type,
        a.created_at AS created_at,
        a.updated_at AS updated_at,
        (
          SELECT done_at FROM occurrences
          WHERE activity_id = a.id
          ORDER BY done_at DESC
          LIMIT 1
        ) AS last_done_at
      FROM activities a
      ORDER BY a.updated_at DESC
      ''',
      readsFrom: {activities, occurrences},
    ).watch().map((rows) {
      return rows.map((row) {
        return ActivityWithLastDoneRow(
          activity: ActivityRow(
            id: row.read<int>('id'),
            uuid: row.read<String>('uuid'),
            title: row.read<String>('title'),
            category: row.readNullable<String>('category'),
            notes: row.readNullable<String>('notes'),
            reminderDays: row.readNullable<int>('reminder_days'),
            reminderType: row.read<int>('reminder_type'),
            createdAt: row.read<DateTime>('created_at'),
            updatedAt: row.read<DateTime>('updated_at'),
          ),
          lastDoneAt: row.readNullable<DateTime>('last_done_at'),
        );
      }).toList();
    });
  }

  Future<List<ActivityRow>> getAllActivities() => select(activities).get();

  Future<ActivityRow?> getActivityById(int id) =>
      (select(activities)..where((t) => t.id.equals(id))).getSingleOrNull();

  Stream<ActivityRow?> watchActivityById(int id) =>
      (select(activities)..where((t) => t.id.equals(id))).watchSingleOrNull();

  Future<ActivityRow?> getActivityByUuid(String uuid) =>
      (select(activities)..where((t) => t.uuid.equals(uuid))).getSingleOrNull();

  Future<int> insertActivity(ActivitiesCompanion companion) =>
      into(activities).insert(companion);

  Future<void> updateActivity(ActivitiesCompanion companion) =>
      update(activities).replace(companion);

  Future<void> deleteActivity(int id) =>
      (delete(activities)..where((t) => t.id.equals(id))).go();

  Future<List<String>> getDistinctCategories() async {
    final rows = await customSelect(
      'SELECT DISTINCT category FROM activities WHERE category IS NOT NULL ORDER BY category',
      readsFrom: {activities},
    ).get();
    return rows.map((r) => r.read<String>('category')).toList();
  }

  Future<bool> isActivitiesEmpty() async {
    final count = await (select(activities)..limit(1)).get();
    return count.isEmpty;
  }

  Stream<List<OccurrenceRow>> watchOccurrencesForActivity(int activityId) {
    return (select(occurrences)
          ..where((t) => t.activityId.equals(activityId))
          ..orderBy([(t) => OrderingTerm.desc(t.doneAt)]))
        .watch();
  }

  Future<List<OccurrenceRow>> getOccurrencesForActivity(
    int activityId, {
    int limit = 50,
    int offset = 0,
  }) {
    return (select(occurrences)
          ..where((t) => t.activityId.equals(activityId))
          ..orderBy([(t) => OrderingTerm.desc(t.doneAt)])
          ..limit(limit, offset: offset))
        .get();
  }

  Future<OccurrenceRow?> getLatestOccurrenceForActivity(int activityId) =>
      (select(occurrences)
            ..where((t) => t.activityId.equals(activityId))
            ..orderBy([(t) => OrderingTerm.desc(t.doneAt)])
            ..limit(1))
          .getSingleOrNull();

  Future<int> insertOccurrence(OccurrencesCompanion companion) =>
      into(occurrences).insert(companion);

  Future<void> deleteOccurrence(int id) =>
      (delete(occurrences)..where((t) => t.id.equals(id))).go();

  Future<void> updateOccurrence(OccurrencesCompanion companion) =>
      update(occurrences).replace(companion);

  Future<OccurrenceRow?> getOccurrenceById(int id) =>
      (select(occurrences)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<int> countOccurrencesForActivity(int activityId) async {
    final rows = await (select(
      occurrences,
    )..where((t) => t.activityId.equals(activityId))).get();
    return rows.length;
  }

  Future<int> countAllOccurrences() async {
    final rows = await select(occurrences).get();
    return rows.length;
  }

  // --- Categories ---

  Stream<List<CategoryRow>> watchCategories() {
    return (select(
      categories,
    )..orderBy([(t) => OrderingTerm.asc(t.name)])).watch();
  }

  Future<List<CategoryRow>> getAllCategories() =>
      (select(categories)..orderBy([(t) => OrderingTerm.asc(t.name)])).get();

  Future<int> insertCategory(CategoriesCompanion companion) =>
      into(categories).insert(companion);

  Future<void> deleteCategory(int id) =>
      (delete(categories)..where((t) => t.id.equals(id))).go();

  Future<void> updateCategory(int id, {String? newName, String? newIcon}) =>
      (update(categories)..where((t) => t.id.equals(id))).write(
        CategoriesCompanion(
          name: newName != null ? Value(newName) : const Value.absent(),
          icon: newIcon != null ? Value(newIcon) : const Value.absent(),
        ),
      );

  Future<void> renameCategory(int id, String newName, {String? newIcon}) =>
      updateCategory(id, newName: newName, newIcon: newIcon);
}

QueryExecutor _openConnection() {
  if (kDebugMode && !kIsWeb) {
    // drift_flutter stores the file as `$name.sqlite` under documents.
    getApplicationDocumentsDirectory().then((dir) {
      final path = p.join(dir.path, '${AppDatabase.databaseName}.sqlite');
      debugPrint('Drift DB path: $path');
    });
  }
  return driftDatabase(
    name: AppDatabase.databaseName,
    web: kIsWeb
        ? DriftWebOptions(
            sqlite3Wasm: Uri.parse('sqlite3.wasm'),
            driftWorker: Uri.parse('drift_worker.js'),
          )
        : null,
  );
}
