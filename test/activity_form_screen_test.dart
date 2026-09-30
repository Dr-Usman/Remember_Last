import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:remember_last/core/theme/category_icons.dart';
import 'package:remember_last/features/activities/presentation/screens/activity_form_screen.dart';
import 'package:remember_last/features/categories/presentation/providers/categories_providers.dart';
import 'package:remember_last/features/categories/presentation/widgets/category_picker_sheet.dart';

import 'helpers/l10n_wrap.dart';

void main() {
  testWidgets(
    'category picker field opens bottom sheet and updates field on selection and clearing',
    (tester) async {
      const categories = ['Home', 'Vehicle', 'Health'];

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            mergedCategoriesProvider.overrideWith(
              (ref) => Stream.value(categories),
            ),
            categoryColorMapProvider.overrideWith(
              (ref) => Stream.value(const {
                'Home': Color(0xFFEA580C),
                'Vehicle': Color(0xFF2563EB),
                'Health': Color(0xFFE11D48),
              }),
            ),
            categoryIconMapProvider.overrideWith(
              (ref) => Stream.value(const {
                'Home': 'home',
                'Vehicle': 'directions_car',
                'Health': 'favorite',
              }),
            ),
          ],
          child: wrapApp(const ActivityFormScreen()),
        ),
      );
      await tester.pumpAndSettle();

      // Verify default prefix icon is label_outline and clear button is not present
      expect(find.byIcon(Icons.label_outline), findsOneWidget);
      expect(find.byIcon(Icons.clear_rounded), findsNothing);

      // Find the Category picker field
      final categoryField = find.byKey(
        const Key('activity_category_picker_field'),
      );
      expect(categoryField, findsOneWidget);

      // Tap to open CategoryPickerSheet
      await tester.tap(categoryField);
      await tester.pumpAndSettle();

      // CategoryPickerSheet is displayed
      expect(find.byType(CategoryPickerSheet), findsOneWidget);
      expect(find.byIcon(Icons.close), findsOneWidget);
      expect(find.text('None'), findsOneWidget);
      expect(find.text('Vehicle'), findsOneWidget);
      expect(
        find.byIcon(CategoryIcons.getIcon('directions_car')),
        findsOneWidget,
      );

      // Tap 'Vehicle' in the bottom sheet
      await tester.tap(find.text('Vehicle'));
      await tester.pumpAndSettle();

      // Sheet should be dismissed
      expect(find.byType(CategoryPickerSheet), findsNothing);

      // The field displays 'Vehicle', updates prefix icon to car icon, and shows clear button
      expect(find.text('Vehicle'), findsOneWidget);
      expect(
        find.byIcon(CategoryIcons.getIcon('directions_car')),
        findsOneWidget,
      );
      final clearButton = find.byIcon(Icons.clear_rounded);
      expect(clearButton, findsOneWidget);

      // Tap clear button
      await tester.tap(clearButton);
      await tester.pumpAndSettle();

      // Field should no longer have 'Vehicle', resets icon to label_outline, and clear button vanishes
      expect(find.text('Vehicle'), findsNothing);
      expect(find.byIcon(Icons.label_outline), findsOneWidget);
      expect(find.byIcon(Icons.clear_rounded), findsNothing);
    },
  );

  testWidgets('selecting None in category picker clears selection', (
    tester,
  ) async {
    const categories = ['Home', 'Vehicle'];

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          mergedCategoriesProvider.overrideWith(
            (ref) => Stream.value(categories),
          ),
          categoryColorMapProvider.overrideWith(
            (ref) => Stream.value(const {'Home': Color(0xFFEA580C)}),
          ),
          categoryIconMapProvider.overrideWith(
            (ref) => Stream.value(const {'Home': 'home'}),
          ),
        ],
        child: wrapApp(const ActivityFormScreen()),
      ),
    );
    await tester.pumpAndSettle();

    // Open sheet and pick Home
    await tester.tap(find.byKey(const Key('activity_category_picker_field')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Home'));
    await tester.pumpAndSettle();
    expect(find.text('Home'), findsOneWidget);

    // Open sheet again and tap None
    await tester.tap(find.byKey(const Key('activity_category_picker_field')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('None'));
    await tester.pumpAndSettle();

    expect(find.text('Home'), findsNothing);
    expect(find.byIcon(Icons.clear_rounded), findsNothing);
  });
}
