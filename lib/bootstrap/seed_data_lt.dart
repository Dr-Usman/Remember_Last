import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../core/database/app_database.dart';
import '../core/database/database_provider.dart';
import '../core/providers/locale_override_provider.dart';
import '../core/services/shared_prefs_service.dart';
import '../core/theme/category_colors.dart';
import '../features/activities/domain/entities/activity.dart';
import '../features/activities/domain/enums/reminder_type.dart';
import '../features/occurrences/domain/entities/occurrence.dart';

/// Wipes existing data and seeds authentic Lithuanian activities and categories for screenshots.
Future<void> seedLithuanianDemoData(WidgetRef ref) async {
  final prefs = ref.read(sharedPrefsServiceProvider);
  final db = ref.read(databaseProvider);

  // 1. Wipe all existing data
  await db.delete(db.occurrences).go();
  await db.delete(db.activities).go();
  await db.delete(db.categories).go();

  // 2. Set Lithuanian locale
  await ref.read(localeOverrideProvider.notifier).setLocale(const Locale('lt'));

  // 3. Seed Lithuanian Categories
  final now = DateTime.now();
  final ltCategories = [
    ('Namai', CategoryColors.argbForName('Home')),
    ('Sveikata', CategoryColors.argbForName('Health')),
    ('Automobilis', CategoryColors.argbForName('Vehicle')),
    ('Asmeniniai', CategoryColors.argbForName('Personal')),
  ];

  for (final (name, color) in ltCategories) {
    await db
        .into(db.categories)
        .insert(
          CategoriesCompanion.insert(name: name, color: color, createdAt: now),
          mode: InsertMode.insertOrIgnore,
        );
  }

  // 4. Seed Lithuanian Sample Activities
  const uuid = Uuid();
  final activityRepo = ref.read(activityRepositoryProvider);
  final occurrenceRepo = ref.read(occurrenceRepositoryProvider);

  final samples = [
    _LtSample(
      title: 'Palaistyti augalus',
      category: 'Namai',
      reminderDays: 3,
      reminderType: ReminderType.custom,
      lastDone: now.subtract(const Duration(days: 1)),
    ),
    _LtSample(
      title: 'Paskambinti tėvams',
      category: 'Asmeniniai',
      reminderDays: 7,
      reminderType: ReminderType.weekly,
      lastDone: now.subtract(const Duration(days: 2)),
      historyDates: [
        now.subtract(const Duration(days: 9)),
        now.subtract(const Duration(days: 16)),
      ],
    ),
    _LtSample(
      title: 'Užpilti kuro',
      category: 'Automobilis',
      reminderDays: 7,
      reminderType: ReminderType.weekly,
      lastDone: now.subtract(const Duration(days: 7)),
    ),
    _LtSample(
      title: 'Nuplauti automobilį',
      category: 'Automobilis',
      reminderDays: 14,
      reminderType: ReminderType.custom,
      lastDone: now.subtract(const Duration(days: 18)),
    ),
  ];

  for (final sample in samples) {
    final activityId = await activityRepo.insert(
      Activity(
        id: 0,
        uuid: uuid.v4(),
        title: sample.title,
        category: sample.category,
        reminderDays: sample.reminderDays,
        reminderType: sample.reminderType,
        createdAt: now,
        updatedAt: now,
      ),
    );

    await occurrenceRepo.insert(
      Occurrence(id: 0, activityId: activityId, doneAt: sample.lastDone),
    );

    if (sample.historyDates != null) {
      for (final date in sample.historyDates!) {
        await occurrenceRepo.insert(
          Occurrence(id: 0, activityId: activityId, doneAt: date),
        );
      }
    }
  }

  await prefs.setBool(PrefsKeys.hasSeededSamples, true);
}

class _LtSample {
  const _LtSample({
    required this.title,
    required this.category,
    required this.reminderDays,
    required this.reminderType,
    required this.lastDone,
    this.historyDates,
  });

  final String title;
  final String category;
  final int reminderDays;
  final ReminderType reminderType;
  final DateTime lastDone;
  final List<DateTime>? historyDates;
}
