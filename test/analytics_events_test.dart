import 'package:flutter_test/flutter_test.dart';
import 'package:remember_last/core/analytics/analytics_constants.dart';
import 'package:remember_last/core/analytics/analytics_events.dart';

void main() {
  group('AnalyticsEvents', () {
    test('screenViewed builds expected map', () {
      final map = AnalyticsEvents.screenViewed(screenName: 'home');
      expect(map['screen_name'], 'home');
      expect(map.containsKey('platform'), isTrue);
    });

    test('occurrenceLogged builds expected map', () {
      final map = AnalyticsEvents.occurrenceLogged(
        source: 'home_quick_log',
        hasNote: true,
        isBackdated: false,
      );
      expect(map['source'], 'home_quick_log');
      expect(map['has_note'], isTrue);
      expect(map['is_backdated'], isFalse);
      expect(map.containsKey('platform'), isTrue);
    });

    test('activityCreated builds expected map with optional interval', () {
      final mapWithInterval = AnalyticsEvents.activityCreated(
        hasTargetInterval: true,
        intervalDays: 7,
        hasCategory: true,
        totalActivitiesCount: 5,
      );
      expect(mapWithInterval['has_target_interval'], isTrue);
      expect(mapWithInterval['interval_days'], 7);
      expect(mapWithInterval['has_category'], isTrue);
      expect(mapWithInterval['total_activities_count'], 5);

      final mapWithoutInterval = AnalyticsEvents.activityCreated(
        hasTargetInterval: false,
        intervalDays: null,
        hasCategory: false,
        totalActivitiesCount: 1,
      );
      expect(mapWithoutInterval['has_target_interval'], isFalse);
      expect(mapWithoutInterval.containsKey('interval_days'), isFalse);
      expect(mapWithoutInterval['has_category'], isFalse);
    });

    test('activityEdited builds expected map', () {
      final map = AnalyticsEvents.activityEdited(
        editedInterval: true,
        editedCategory: false,
      );
      expect(map['edited_interval'], isTrue);
      expect(map['edited_category'], isFalse);
    });

    test('activityDeleted builds expected map', () {
      final map = AnalyticsEvents.activityDeleted(
        source: 'swipe',
        totalOccurrencesCount: 12,
      );
      expect(map['source'], 'swipe');
      expect(map['total_occurrences_count'], 12);
    });

    test('occurrenceDeleted builds expected map with timing properties', () {
      final now = DateTime.now();
      final map = AnalyticsEvents.occurrenceDeleted(
        source: 'swipe',
        doneAt: now.subtract(const Duration(days: 3)),
      );
      expect(map['source'], 'swipe');
      expect(map['days_ago'], 3);
      expect(map['is_today'], isFalse);
      expect(map.containsKey('done_at'), isTrue);
    });

    test(
      'languageChanged builds expected map with previous and new language',
      () {
        final map = AnalyticsEvents.languageChanged(
          previousLanguageCode: 'en',
          newLanguageCode: 'lt',
          isSystemDefault: false,
        );
        expect(map['previous_language'], 'en');
        expect(map['new_language'], 'lt');
        expect(map['language_code'], 'lt');
        expect(map['is_system_default'], isFalse);
      },
    );

    test('themeChanged builds expected map', () {
      final map = AnalyticsEvents.themeChanged(themeMode: 'dark');
      expect(map['theme_mode'], 'dark');
    });

    test('filterCategorySelected builds expected map with category name', () {
      final map = AnalyticsEvents.filterCategorySelected(
        category: 'Home',
        isAll: false,
      );
      expect(map['category'], 'Home');
      expect(map['is_all'], isFalse);
    });

    test('sortOrderChanged builds expected map', () {
      final map = AnalyticsEvents.sortOrderChanged(sortOrder: 'recentlyDone');
      expect(map['sort_order'], 'recentlyDone');
    });

    test('searchPerformed builds expected map without query text', () {
      final map = AnalyticsEvents.searchPerformed(
        hadResults: true,
        resultCount: 3,
      );
      expect(map['had_results'], isTrue);
      expect(map['result_count'], 3);
      expect(map.containsKey('query'), isFalse);
    });

    test('backupExported builds expected map', () {
      final map = AnalyticsEvents.backupExported(
        activitiesCount: 8,
        occurrencesCount: 42,
      );
      expect(map['activities_count'], 8);
      expect(map['occurrences_count'], 42);
    });

    test('backupImported builds expected map', () {
      final map = AnalyticsEvents.backupImported(
        success: true,
        activitiesCount: 10,
        isMerge: false,
      );
      expect(map['success'], isTrue);
      expect(map['activities_count'], 10);
      expect(map['is_merge'], isFalse);
    });

    test('settingsActionTapped builds expected map', () {
      final map = AnalyticsEvents.settingsActionTapped(action: 'rate_app');
      expect(map['action'], 'rate_app');
    });

    test('isBackdatedEntry correctly flags entries older than 1 minute', () {
      final now = DateTime.now();
      expect(AnalyticsEvents.isBackdatedEntry(now), isFalse);
      expect(
        AnalyticsEvents.isBackdatedEntry(
          now.subtract(const Duration(minutes: 5)),
        ),
        isTrue,
      );
    });
  });

  group('AnalyticsConstants', () {
    test('contains expected event names', () {
      expect(AnalyticsConstants.activityCreated, 'activity_created');
      expect(AnalyticsConstants.activityEdited, 'activity_edited');
      expect(AnalyticsConstants.activityDeleted, 'activity_deleted');
      expect(AnalyticsConstants.occurrenceDeleted, 'occurrence_deleted');
      expect(AnalyticsConstants.languageChanged, 'language_changed');
      expect(AnalyticsConstants.themeChanged, 'theme_changed');
      expect(
        AnalyticsConstants.filterCategorySelected,
        'filter_category_selected',
      );
      expect(AnalyticsConstants.sortOrderChanged, 'sort_order_changed');
      expect(AnalyticsConstants.searchPerformed, 'search_performed');
      expect(AnalyticsConstants.backupExported, 'backup_exported');
      expect(AnalyticsConstants.backupImported, 'backup_imported');
      expect(AnalyticsConstants.settingsActionTapped, 'settings_action_tapped');
      expect(
        AnalyticsConstants.activityInsightsViewed,
        'activity_insights_viewed',
      );
      expect(AnalyticsConstants.insightsViewed, 'insights_viewed');
    });

    test('activityInsightsViewed builds expected map', () {
      final map = AnalyticsEvents.activityInsightsViewed(
        status: 'recent',
        hasReminder: true,
        reminderDays: 7,
        hasCategory: true,
        daysSinceLastDone: 2,
      );
      expect(map['status'], 'recent');
      expect(map['has_reminder'], isTrue);
      expect(map['reminder_days'], 7);
      expect(map['has_category'], isTrue);
      expect(map['days_since_last_done'], 2);
    });

    test('insightsViewed builds expected map', () {
      final map = AnalyticsEvents.insightsViewed(
        totalActivities: 5,
        totalOccurrences: 25,
      );
      expect(map['total_activities'], 5);
      expect(map['total_occurrences'], 25);
    });
  });
}
