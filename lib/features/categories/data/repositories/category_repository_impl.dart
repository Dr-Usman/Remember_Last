import 'package:drift/drift.dart';

import '../../../../core/database/app_database.dart';
import '../../../../core/theme/category_colors.dart';
import '../../domain/repositories/category_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  CategoryRepositoryImpl(this._db);

  final AppDatabase _db;

  @override
  Stream<List<String>> watchCategoryNames() {
    return _db.watchCategories().map(
      (rows) => rows.map((r) => r.name).toList(),
    );
  }

  @override
  Future<List<String>> getAllCategoryNames() async {
    final rows = await _db.getAllCategories();
    return rows.map((r) => r.name).toList();
  }

  @override
  Future<int> addCategory(String name, {String? icon}) async {
    final trimmed = name.trim();
    return _db.insertCategory(
      CategoriesCompanion.insert(
        name: trimmed,
        color: CategoryColors.argbForName(trimmed),
        icon: Value(icon),
        createdAt: DateTime.now(),
      ),
    );
  }

  @override
  Future<void> deleteCategory(int id) => _db.deleteCategory(id);

  @override
  Future<void> renameCategory(int id, String newName, {String? newIcon}) =>
      _db.renameCategory(id, newName.trim(), newIcon: newIcon);
}

/// Merged list of managed categories plus any used on activities.
class CategoryListRepository {
  CategoryListRepository(this._db);

  final AppDatabase _db;

  Stream<List<String>> watchMergedCategoryNames() {
    return _db.watchCategories().asyncMap((_) => getMergedCategoryNames());
  }

  Future<List<String>> getMergedCategoryNames() async {
    final managed = await _db.getAllCategories();
    final fromActivities = await _db.getDistinctCategories();
    final merged = <String>{...managed.map((c) => c.name), ...fromActivities};
    final sorted = merged.toList()..sort();
    return sorted;
  }
}
