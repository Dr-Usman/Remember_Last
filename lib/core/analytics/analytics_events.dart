import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;

/// Typed property maps for Mixpanel events.
abstract final class AnalyticsEvents {
  static Map<String, dynamic> screenViewed({required String screenName}) => {
    'screen_name': screenName,
    'platform': platformName,
  };

  static Map<String, dynamic> occurrenceLogged({
    required String source,
    required bool hasNote,
    required bool isBackdated,
  }) => {
    'source': source,
    'has_note': hasNote,
    'is_backdated': isBackdated,
    'platform': platformName,
  };

  static Map<String, dynamic> activityCreated({
    required bool hasTargetInterval,
    int? intervalDays,
    required bool hasCategory,
    required int totalActivitiesCount,
  }) => {
    'has_target_interval': hasTargetInterval,
    'interval_days': ?intervalDays,
    'has_category': hasCategory,
    'total_activities_count': totalActivitiesCount,
    'platform': platformName,
  };

  static Map<String, dynamic> activityEdited({
    required bool editedInterval,
    required bool editedCategory,
  }) => {
    'edited_interval': editedInterval,
    'edited_category': editedCategory,
    'platform': platformName,
  };

  static Map<String, dynamic> activityDeleted({
    required String source,
    required int totalOccurrencesCount,
  }) => {
    'source': source,
    'total_occurrences_count': totalOccurrencesCount,
    'platform': platformName,
  };

  static Map<String, dynamic> occurrenceDeleted({
    required String source,
    required DateTime doneAt,
  }) {
    final now = DateTime.now();
    final daysAgo = now.difference(doneAt).inDays;
    return {
      'source': source,
      'done_at': doneAt.toIso8601String(),
      'days_ago': daysAgo,
      'is_today': daysAgo == 0,
      'platform': platformName,
    };
  }

  static Map<String, dynamic> languageChanged({
    required String previousLanguageCode,
    required String newLanguageCode,
    required bool isSystemDefault,
  }) => {
    'previous_language': previousLanguageCode,
    'new_language': newLanguageCode,
    'language_code': newLanguageCode,
    'is_system_default': isSystemDefault,
    'platform': platformName,
  };

  static Map<String, dynamic> themeChanged({required String themeMode}) => {
    'theme_mode': themeMode,
    'platform': platformName,
  };

  static Map<String, dynamic> filterCategorySelected({
    required String category,
    required bool isAll,
  }) => {'category': category, 'is_all': isAll, 'platform': platformName};

  static Map<String, dynamic> sortOrderChanged({required String sortOrder}) => {
    'sort_order': sortOrder,
    'platform': platformName,
  };

  static Map<String, dynamic> searchPerformed({
    required bool hadResults,
    required int resultCount,
  }) => {
    'had_results': hadResults,
    'result_count': resultCount,
    'platform': platformName,
  };

  static Map<String, dynamic> backupExported({
    required int activitiesCount,
    required int occurrencesCount,
  }) => {
    'activities_count': activitiesCount,
    'occurrences_count': occurrencesCount,
    'platform': platformName,
  };

  static Map<String, dynamic> backupImported({
    required bool success,
    required int activitiesCount,
    required bool isMerge,
  }) => {
    'success': success,
    'activities_count': activitiesCount,
    'is_merge': isMerge,
    'platform': platformName,
  };

  static Map<String, dynamic> settingsActionTapped({required String action}) =>
      {'action': action, 'platform': platformName};

  static Map<String, dynamic> activityInsightsViewed({
    required String status,
    required bool hasReminder,
    int? reminderDays,
    required bool hasCategory,
    int? daysSinceLastDone,
  }) => {
    'status': status,
    'has_reminder': hasReminder,
    'reminder_days': ?reminderDays,
    'has_category': hasCategory,
    'days_since_last_done': ?daysSinceLastDone,
    'platform': platformName,
  };

  static Map<String, dynamic> insightsViewed({
    required int totalActivities,
    required int totalOccurrences,
  }) => {
    'total_activities': totalActivities,
    'total_occurrences': totalOccurrences,
    'platform': platformName,
  };

  static String get platformName {
    if (kIsWeb) return 'web';
    if (Platform.isAndroid) return 'android';
    if (Platform.isIOS) return 'ios';
    if (Platform.isMacOS) return 'macos';
    if (Platform.isWindows) return 'windows';
    if (Platform.isLinux) return 'linux';
    return 'unknown';
  }

  static bool isBackdatedEntry(DateTime doneAt) {
    return DateTime.now().difference(doneAt).inMinutes > 1;
  }
}
