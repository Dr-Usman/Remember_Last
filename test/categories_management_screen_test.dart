import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:remember_last/core/database/app_database.dart';
import 'package:remember_last/core/theme/category_icons.dart';
import 'package:remember_last/features/categories/domain/repositories/category_repository.dart';
import 'package:remember_last/features/categories/presentation/providers/categories_providers.dart';
import 'package:remember_last/features/categories/presentation/screens/categories_management_screen.dart';

import 'helpers/l10n_wrap.dart';

class _FakeCategoryRepository implements CategoryRepository {
  final List<({String name, String? icon})> added = [];
  final List<({int id, String newName, String? newIcon})> renamed = [];
  final List<int> deleted = [];

  @override
  Future<int> addCategory(String name, {String? icon}) async {
    added.add((name: name, icon: icon));
    return 100;
  }

  @override
  Future<void> renameCategory(int id, String newName, {String? newIcon}) async {
    renamed.add((id: id, newName: newName, newIcon: newIcon));
  }

  @override
  Future<void> deleteCategory(int id) async {
    deleted.add(id);
  }

  @override
  Future<List<String>> getAllCategoryNames() async => [];

  @override
  Stream<List<String>> watchCategoryNames() => const Stream.empty();
}

void main() {
  final initialCategories = [
    CategoryRow(
      id: 1,
      name: 'Home',
      color: 0xFF4A90E2,
      icon: 'home',
      createdAt: DateTime(2026, 1, 1),
    ),
    CategoryRow(
      id: 2,
      name: 'Health',
      color: 0xFFE74C3C,
      icon: 'favorite',
      createdAt: DateTime(2026, 1, 1),
    ),
    CategoryRow(
      id: 3,
      name: 'Vehicle',
      color: 0xFFE67E22,
      icon: 'directions_car',
      createdAt: DateTime(2026, 1, 1),
    ),
  ];

  testWidgets('renders category list with their names and icons', (
    tester,
  ) async {
    final fakeRepo = _FakeCategoryRepository();

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          managedCategoryRowsProvider.overrideWith(
            (ref) => Stream.value(initialCategories),
          ),
          categoryRepositoryProvider.overrideWithValue(fakeRepo),
        ],
        child: wrapApp(const CategoriesManagementScreen()),
      ),
    );
    await tester.pumpAndSettle();

    // Verify app bar title and items
    expect(find.text('Categories'), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Health'), findsOneWidget);
    expect(find.text('Vehicle'), findsOneWidget);

    // Verify icons render
    expect(find.byIcon(CategoryIcons.getIcon('home')), findsWidgets);
    expect(find.byIcon(CategoryIcons.getIcon('favorite')), findsWidgets);
    expect(find.byIcon(CategoryIcons.getIcon('directions_car')), findsWidgets);
  });

  testWidgets(
    'shows Add dialog, auto-suggests icon when typing, and invokes repository',
    (tester) async {
      final fakeRepo = _FakeCategoryRepository();

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            managedCategoryRowsProvider.overrideWith(
              (ref) => Stream.value(initialCategories),
            ),
            categoryRepositoryProvider.overrideWithValue(fakeRepo),
          ],
          child: wrapApp(const CategoriesManagementScreen()),
        ),
      );
      await tester.pumpAndSettle();

      // Tap FloatingActionButton "+ Add"
      final fab = find.byType(FloatingActionButton);
      expect(fab, findsOneWidget);
      await tester.tap(fab);
      await tester.pumpAndSettle();

      // Dialog should appear
      expect(find.text('New category'), findsOneWidget);
      expect(find.text('Select icon'), findsOneWidget);

      // Enter category name "Dentist"
      final textField = find.byType(TextField);
      await tester.enterText(textField, 'Dentist');
      await tester.pumpAndSettle();

      // Suggested icon for dentist is favorite
      expect(CategoryIcons.suggestIconKey('Dentist'), 'favorite');

      // Tap Add button
      final addButton = find.widgetWithText(FilledButton, 'Add');
      await tester.tap(addButton);
      await tester.pumpAndSettle();

      // Verify repository was called with name and suggested icon
      expect(fakeRepo.added.length, 1);
      expect(fakeRepo.added.first.name, 'Dentist');
      expect(fakeRepo.added.first.icon, 'favorite');
    },
  );

  testWidgets('shows Edit dialog pre-filled and updates category on save', (
    tester,
  ) async {
    final fakeRepo = _FakeCategoryRepository();

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          managedCategoryRowsProvider.overrideWith(
            (ref) => Stream.value(initialCategories),
          ),
          categoryRepositoryProvider.overrideWithValue(fakeRepo),
        ],
        child: wrapApp(const CategoriesManagementScreen()),
      ),
    );
    await tester.pumpAndSettle();

    // Find popup menu button for first category (Home)
    final popupButtons = find.byIcon(Icons.more_vert);
    expect(popupButtons, findsWidgets);

    await tester.tap(popupButtons.first);
    await tester.pumpAndSettle();

    // Tap "Edit"
    final editMenuItem = find.text('Edit');
    expect(editMenuItem, findsOneWidget);
    await tester.tap(editMenuItem);
    await tester.pumpAndSettle();

    // Edit dialog should be visible with current name
    expect(find.text('Edit'), findsWidgets);
    final textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    final fieldWidget = tester.widget<TextField>(textField);
    expect(fieldWidget.controller?.text, 'Home');

    // Change name to "Apartment"
    await tester.enterText(textField, 'Apartment');
    await tester.pumpAndSettle();

    // Tap Save
    final saveButton = find.widgetWithText(FilledButton, 'Save');
    await tester.tap(saveButton);
    await tester.pumpAndSettle();

    // Verify repository rename was called
    expect(fakeRepo.renamed.length, 1);
    expect(fakeRepo.renamed.first.id, 1);
    expect(fakeRepo.renamed.first.newName, 'Apartment');
    expect(fakeRepo.renamed.first.newIcon, 'home');
  });

  testWidgets('renders empty state message when there are no categories', (
    tester,
  ) async {
    final fakeRepo = _FakeCategoryRepository();

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          managedCategoryRowsProvider.overrideWith(
            (ref) => Stream.value(const <CategoryRow>[]),
          ),
          categoryRepositoryProvider.overrideWithValue(fakeRepo),
        ],
        child: wrapApp(const CategoriesManagementScreen()),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.textContaining('No categories yet'), findsOneWidget);
  });
}
