import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:remember_last/core/utils/activity_status.dart';
import 'package:remember_last/core/widgets/activity_card.dart';
import 'package:remember_last/features/activities/domain/entities/activity.dart';
import 'package:remember_last/features/activities/domain/enums/reminder_type.dart';

import 'helpers/l10n_wrap.dart';

void main() {
  testWidgets('renders ActivityCard with title, category chip and icon', (
    tester,
  ) async {
    var tapped = false;
    var quickLogged = false;

    final item = ActivityWithLastDone(
      activity: Activity(
        id: 1,
        uuid: 'uuid-1',
        title: 'Water plants',
        category: 'Home',
        reminderDays: 3,
        reminderType: ReminderType.custom,
        createdAt: DateTime(2026, 1, 1),
        updatedAt: DateTime(2026, 1, 1),
      ),
      lastDoneAt: DateTime(2026, 1, 5),
    );

    await tester.pumpWidget(
      wrapApp(
        Scaffold(
          body: ActivityCard(
            item: item,
            status: ActivityStatus.recent,
            categoryColor: Colors.blue,
            categoryIcon: Icons.home_rounded,
            onTap: () => tapped = true,
            onQuickLog: () => quickLogged = true,
          ),
        ),
      ),
    );

    expect(find.text('Water plants'), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.byIcon(Icons.home_rounded), findsOneWidget);

    // Test quick log button
    final quickLogButton = find.byIcon(Icons.add_rounded);
    expect(quickLogButton, findsOneWidget);
    await tester.tap(quickLogButton);
    expect(quickLogged, isTrue);

    // Test tapping card
    await tester.tap(find.text('Water plants'));
    expect(tapped, isTrue);
  });

  testWidgets(
    'renders ActivityCard without category chip when category is null',
    (tester) async {
      final item = ActivityWithLastDone(
        activity: Activity(
          id: 2,
          uuid: 'uuid-2',
          title: 'Call parents',
          category: null,
          reminderDays: null,
          reminderType: ReminderType.none,
          createdAt: DateTime(2026, 1, 1),
          updatedAt: DateTime(2026, 1, 1),
        ),
        lastDoneAt: null,
      );

      await tester.pumpWidget(
        wrapApp(
          Scaffold(
            body: ActivityCard(
              item: item,
              status: ActivityStatus.neverLogged,
              onTap: () {},
              onQuickLog: () {},
            ),
          ),
        ),
      );

      expect(find.text('Call parents'), findsOneWidget);
      expect(find.text('Home'), findsNothing);
      expect(find.byIcon(Icons.home_rounded), findsNothing);
    },
  );
}
