/// Mixpanel project configuration and event names.
abstract final class AnalyticsConstants {
  static const projectToken = '7a073657ac1d1d2ba6c7017ffb3eaabc';

  static const screenViewed = 'screen_viewed';
  static const occurrenceLogged = 'occurrence_logged';

  // Activity lifecycle
  static const activityCreated = 'activity_created';
  static const activityEdited = 'activity_edited';
  static const activityDeleted = 'activity_deleted';
  static const occurrenceDeleted = 'occurrence_deleted';

  // Personalization & Preferences
  static const languageChanged = 'language_changed';
  static const themeChanged = 'theme_changed';

  // Discovery & Filtering
  static const filterCategorySelected = 'filter_category_selected';
  static const sortOrderChanged = 'sort_order_changed';
  static const searchPerformed = 'search_performed';

  // Data & Backup
  static const backupExported = 'backup_exported';
  static const backupImported = 'backup_imported';

  // Settings Actions
  static const settingsActionTapped = 'settings_action_tapped';

  // Insights
  static const activityInsightsViewed = 'activity_insights_viewed';
  static const insightsViewed = 'insights_viewed';
}
