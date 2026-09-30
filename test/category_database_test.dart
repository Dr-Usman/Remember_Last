import 'package:drift/drift.dart' hide isNull, isNotNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:remember_last/core/database/app_database.dart';
import 'package:remember_last/core/theme/category_colors.dart';
import 'package:remember_last/features/categories/data/repositories/category_repository_impl.dart';

void main() {
  late AppDatabase db;

  setUp(() {
    db = AppDatabase(NativeDatabase.memory());
  });

  tearDown(() async {
    await db.close();
  });

  group('Category database operations', () {
    test('seeds 8 default categories with icons on create', () async {
      final categories = await db.getAllCategories();

      expect(categories.length, 8);
      final names = categories.map((c) => c.name).toSet();
      expect(
        names,
        containsAll([
          'Home',
          'Health',
          'Vehicle',
          'Personal',
          'Work',
          'Fitness',
          'Pets',
          'Finance',
        ]),
      );

      // Verify each default category has its icon set
      for (final cat in categories) {
        expect(cat.icon, isNotNull);
        expect(cat.icon!.isNotEmpty, isTrue);
      }
    });

    test('inserts custom category with icon', () async {
      final id = await db.insertCategory(
        CategoriesCompanion.insert(
          name: 'Gardening',
          color: 0xFF2ECC71,
          icon: const Value('yard'),
          createdAt: DateTime.now(),
        ),
      );

      expect(id, isPositive);
      final all = await db.getAllCategories();
      final inserted = all.firstWhere((c) => c.id == id);
      expect(inserted.name, 'Gardening');
      expect(inserted.icon, 'yard');
    });

    test('updates category name and icon', () async {
      final categories = await db.getAllCategories();
      final first = categories.first;

      await db.updateCategory(
        first.id,
        newName: 'Home & Living',
        newIcon: 'cleaning_services',
      );

      final updatedList = await db.getAllCategories();
      final updated = updatedList.firstWhere((c) => c.id == first.id);
      expect(updated.name, 'Home & Living');
      expect(updated.icon, 'cleaning_services');
    });

    test('deletes category by id', () async {
      final initial = await db.getAllCategories();
      final toDelete = initial.first;

      await db.deleteCategory(toDelete.id);

      final after = await db.getAllCategories();
      expect(after.length, initial.length - 1);
      expect(after.any((c) => c.id == toDelete.id), isFalse);
    });

    test(
      'CategoryRepositoryImpl adds, renames with icon, and preserves icon if omitted',
      () async {
        final repo = CategoryRepositoryImpl(db);

        // Add category with leading/trailing whitespace
        final id = await repo.addCategory('  Gaming  ', icon: 'sports_esports');
        final names = await repo.getAllCategoryNames();
        expect(names, contains('Gaming'));

        final all = await db.getAllCategories();
        final created = all.firstWhere((c) => c.id == id);
        expect(created.name, 'Gaming');
        expect(created.icon, 'sports_esports');

        // Rename with new icon
        await repo.renameCategory(
          id,
          '  E-Sports  ',
          newIcon: 'videogame_asset',
        );
        final afterFirstRename = (await db.getAllCategories()).firstWhere(
          (c) => c.id == id,
        );
        expect(afterFirstRename.name, 'E-Sports');
        expect(afterFirstRename.icon, 'videogame_asset');

        // Rename without providing newIcon (should preserve existing icon)
        await repo.renameCategory(id, 'Competitive Gaming');
        final afterSecondRename = (await db.getAllCategories()).firstWhere(
          (c) => c.id == id,
        );
        expect(afterSecondRename.name, 'Competitive Gaming');
        expect(afterSecondRename.icon, 'videogame_asset');
      },
    );

    test(
      'CategoryListRepository merges managed categories with activity categories',
      () async {
        final listRepo = CategoryListRepository(db);

        // Insert an activity that has an unmanaged category "Music"
        await db.insertActivity(
          ActivitiesCompanion.insert(
            uuid: 'act-music-1',
            title: 'Guitar practice',
            category: const Value('Music'),
            reminderType: const Value(0),
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
          ),
        );

        final merged = await listRepo.getMergedCategoryNames();
        expect(merged, contains('Music'));
        expect(merged, contains('Home'));
        expect(merged, contains('Fitness'));

        // Ensure the merged list is sorted alphabetically
        final isSorted = List<String>.from(merged)..sort();
        expect(merged, equals(isSorted));
      },
    );

    test('migrates database successfully from v1 to v2', () async {
      final executor = NativeDatabase.memory(
        setup: (rawDb) {
          rawDb.execute('''
            CREATE TABLE activities (
              id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
              uuid TEXT NOT NULL UNIQUE,
              title TEXT NOT NULL,
              category TEXT,
              notes TEXT,
              reminder_days INTEGER,
              reminder_type INTEGER NOT NULL DEFAULT 0,
              created_at INTEGER NOT NULL,
              updated_at INTEGER NOT NULL
            );
          ''');
          rawDb.execute('''
            CREATE TABLE occurrences (
              id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
              activity_id INTEGER NOT NULL REFERENCES activities (id) ON DELETE CASCADE,
              done_at INTEGER NOT NULL,
              note TEXT
            );
          ''');
          rawDb.execute('''
            CREATE TABLE categories (
              id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
              name TEXT NOT NULL UNIQUE,
              color INTEGER NOT NULL,
              created_at INTEGER NOT NULL
            );
          ''');
          final nowMs = DateTime.now().millisecondsSinceEpoch;
          rawDb.execute('''
            INSERT INTO categories (name, color, created_at) VALUES
            ('Home', 4282033919, $nowMs),
            ('Health', 4293348412, $nowMs),
            ('Vehicle', 4281637083, $nowMs),
            ('Personal', 4280016028, $nowMs),
            ('Gardening', 4281234567, $nowMs);
          ''');
          rawDb.execute('''
            INSERT INTO activities (id, uuid, title, category, reminder_type, created_at, updated_at) VALUES
            (1, 'act-1', 'Wash car', 'Vehicle', 0, $nowMs, $nowMs);
          ''');
          rawDb.execute('''
            INSERT INTO occurrences (id, activity_id, done_at, note) VALUES
            (1, 1, $nowMs, 'Used foam cannon');
          ''');
          rawDb.execute('PRAGMA user_version = 1;');
        },
      );

      final upgradedDb = AppDatabase(executor);
      addTearDown(upgradedDb.close);

      final categories = await upgradedDb.getAllCategories();

      // Should have 8 default categories + 1 custom ('Gardening') = 9 total
      expect(categories.length, 9);

      // Verify custom category survived with its original color and null icon
      final gardening = categories.firstWhere((c) => c.name == 'Gardening');
      expect(gardening.color, 4281234567);
      expect(gardening.icon, isNull);

      // Verify default categories now have their icons and new semantic colors
      final home = categories.firstWhere((c) => c.name == 'Home');
      expect(home.icon, 'home');
      expect(home.color, CategoryColors.argbForName('Home'));

      final health = categories.firstWhere((c) => c.name == 'Health');
      expect(health.icon, 'favorite');
      expect(health.color, CategoryColors.argbForName('Health'));

      // Verify newly seeded categories exist
      final work = categories.firstWhere((c) => c.name == 'Work');
      expect(work.icon, 'work');
      expect(work.color, CategoryColors.argbForName('Work'));

      // Verify existing activity survived with category
      final activity = await upgradedDb.watchActivityById(1).first;
      expect(activity?.title, 'Wash car');
      expect(activity?.category, 'Vehicle');

      // Verify existing occurrence survived
      final occurrences = await upgradedDb.getOccurrencesForActivity(1);
      expect(occurrences.length, 1);
      expect(occurrences.first.note, 'Used foam cannon');
    });
  });
}
