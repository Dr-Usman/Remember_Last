import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:remember_last/core/theme/category_icons.dart';
import 'package:remember_last/core/widgets/category_chip.dart';
import 'package:remember_last/features/activities/domain/entities/activity.dart';
import 'package:remember_last/features/activities/domain/enums/reminder_type.dart';
import 'package:remember_last/features/activities/presentation/providers/activities_providers.dart';
import 'package:remember_last/features/categories/presentation/providers/categories_providers.dart';
import 'package:remember_last/features/occurrences/domain/entities/occurrence.dart';
import 'package:remember_last/features/occurrences/presentation/providers/occurrences_providers.dart';
import 'package:remember_last/features/occurrences/presentation/screens/activity_detail_screen.dart';

import 'helpers/l10n_wrap.dart';

void main() {
  final now = DateTime(2026, 9, 30, 12, 0);

  final activityWithCategory = Activity(
    id: 1,
    uuid: 'uuid-1',
    title: 'Oil Change',
    category: 'Vehicle',
    reminderType: ReminderType.custom,
    reminderDays: 90,
    createdAt: now.subtract(const Duration(days: 30)),
    updatedAt: now.subtract(const Duration(days: 30)),
  );

  final activityWithoutCategory = Activity(
    id: 2,
    uuid: 'uuid-2',
    title: 'Meditation',
    category: null,
    reminderType: ReminderType.none,
    createdAt: now.subtract(const Duration(days: 10)),
    updatedAt: now.subtract(const Duration(days: 10)),
  );

  final occurrence = Occurrence(
    id: 10,
    activityId: 1,
    doneAt: now.subtract(const Duration(days: 5)),
  );

  testWidgets(
    'renders category chip with icon and label in top-right of HeaderCard',
    (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            activityByIdProvider(
              1,
            ).overrideWith((ref) => Stream.value(activityWithCategory)),
            occurrencesProvider(
              1,
            ).overrideWith((ref) => Stream.value([occurrence])),
            categoryColorMapProvider.overrideWith(
              (ref) => Stream.value(const {'Vehicle': Color(0xFFE67E22)}),
            ),
            categoryIconMapProvider.overrideWith(
              (ref) => Stream.value(const {'Vehicle': 'directions_car'}),
            ),
          ],
          child: wrapApp(const ActivityDetailScreen(activityId: 1)),
        ),
      );
      await tester.pumpAndSettle();

      // Verify Title
      expect(find.text('Oil Change'), findsOneWidget);

      // Verify "Last done" header label is shown
      expect(find.text('Last done'), findsOneWidget);

      // Verify CategoryChip is displayed with 'Vehicle' and car icon
      expect(find.byType(CategoryChip), findsOneWidget);
      expect(find.text('Vehicle'), findsOneWidget);
      expect(
        find.byIcon(CategoryIcons.getIcon('directions_car')),
        findsOneWidget,
      );
    },
  );

  testWidgets('renders HeaderCard without CategoryChip when category is null', (
    tester,
  ) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          activityByIdProvider(
            2,
          ).overrideWith((ref) => Stream.value(activityWithoutCategory)),
          occurrencesProvider(
            2,
          ).overrideWith((ref) => Stream.value(const <Occurrence>[])),
        ],
        child: wrapApp(const ActivityDetailScreen(activityId: 2)),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Meditation'), findsOneWidget);
    expect(find.text('Last done'), findsOneWidget);
    expect(find.byType(CategoryChip), findsNothing);
  });

  testWidgets('renders history tile and opens popup menu on compact screen', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(360, 800);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          activityByIdProvider(
            1,
          ).overrideWith((ref) => Stream.value(activityWithCategory)),
          occurrencesProvider(
            1,
          ).overrideWith((ref) => Stream.value([occurrence])),
        ],
        child: wrapApp(const ActivityDetailScreen(activityId: 1)),
      ),
    );
    await tester.pumpAndSettle();

    // Verify history section and check icon
    expect(find.text('History'), findsOneWidget);
    expect(find.byIcon(Icons.check_circle_outline), findsOneWidget);
    expect(find.byIcon(Icons.more_vert), findsOneWidget);

    // Tap more options
    await tester.tap(find.byIcon(Icons.more_vert));
    await tester.pumpAndSettle();

    expect(find.text('Edit'), findsOneWidget);
    expect(find.text('Delete'), findsOneWidget);
  });
}
