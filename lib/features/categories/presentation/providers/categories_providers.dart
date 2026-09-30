import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/database/database_provider.dart';
import '../../../../core/theme/category_colors.dart';
import '../../../../core/theme/category_icons.dart';
import '../../data/repositories/category_repository_impl.dart';
import '../../domain/repositories/category_repository.dart';

final categoryRepositoryProvider = Provider<CategoryRepository>((ref) {
  return CategoryRepositoryImpl(ref.watch(databaseProvider));
});

final categoryListRepositoryProvider = Provider<CategoryListRepository>((ref) {
  return CategoryListRepository(ref.watch(databaseProvider));
});

final managedCategoriesProvider = StreamProvider<List<String>>((ref) {
  return ref.watch(categoryRepositoryProvider).watchCategoryNames();
});

final mergedCategoriesProvider = StreamProvider<List<String>>((ref) {
  return ref.watch(categoryListRepositoryProvider).watchMergedCategoryNames();
});

/// Name → color for activity chips (DB color when managed; hash fallback otherwise).
final categoryColorMapProvider = StreamProvider<Map<String, Color>>((ref) {
  return ref.watch(databaseProvider).watchCategories().map((rows) {
    return {
      for (final row in rows) row.name: CategoryColors.fromArgb(row.color),
    };
  });
});

/// Name → icon key for activity chips and filters.
final categoryIconMapProvider = StreamProvider<Map<String, String?>>((ref) {
  return ref.watch(databaseProvider).watchCategories().map((rows) {
    return {for (final row in rows) row.name: row.icon};
  });
});

Color resolveCategoryColor(String name, Map<String, Color>? map) {
  return map?[name] ?? CategoryColors.pickForName(name);
}

IconData resolveCategoryIcon(String name, Map<String, String?>? map) {
  final iconKey = map?[name];
  return CategoryIcons.getIcon(iconKey, categoryName: name);
}
