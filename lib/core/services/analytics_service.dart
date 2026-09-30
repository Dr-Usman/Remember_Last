import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:mixpanel_flutter/mixpanel_flutter.dart';

import '../analytics/analytics_constants.dart';
import '../analytics/analytics_events.dart';
import 'shared_prefs_service.dart';

/// Consent-gated Mixpanel wrapper. Initializes only after the user opts in.
class AnalyticsService {
  AnalyticsService(this._prefs);

  final SharedPrefsService _prefs;
  Mixpanel? _mixpanel;

  static bool get isSupported {
    if (kIsWeb) return true;
    return !kIsWeb &&
        (AnalyticsEvents.platformName == 'android' ||
            AnalyticsEvents.platformName == 'ios' ||
            AnalyticsEvents.platformName == 'macos');
  }

  /// `null` when consent has not been requested yet.
  Future<bool?> getConsentStatus() async {
    final value = await _prefs.getString(PrefsKeys.analyticsConsent);
    if (value == null) return null;
    return value == PrefsKeys.analyticsConsentGranted;
  }

  Future<void> restoreConsent({String? appVersion}) async {
    final consent = await getConsentStatus();
    if (consent == true) {
      await _optIn(appVersion: appVersion, persist: false);
    }
  }

  Future<void> optIn({String? appVersion}) => _optIn(appVersion: appVersion);

  Future<void> optOut() async {
    await _prefs.setString(
      PrefsKeys.analyticsConsent,
      PrefsKeys.analyticsConsentDenied,
    );
    _mixpanel?.optOutTracking();
  }

  Future<void> trackScreenViewed(String screenName) {
    return track(
      AnalyticsConstants.screenViewed,
      AnalyticsEvents.screenViewed(screenName: screenName),
    );
  }

  Future<void> trackOccurrenceLogged({
    required String source,
    required bool hasNote,
    required DateTime doneAt,
  }) {
    return track(
      AnalyticsConstants.occurrenceLogged,
      AnalyticsEvents.occurrenceLogged(
        source: source,
        hasNote: hasNote,
        isBackdated: AnalyticsEvents.isBackdatedEntry(doneAt),
      ),
    );
  }

  Future<void> trackActivityCreated({
    required bool hasTargetInterval,
    int? intervalDays,
    required bool hasCategory,
    required int totalActivitiesCount,
  }) {
    return track(
      AnalyticsConstants.activityCreated,
      AnalyticsEvents.activityCreated(
        hasTargetInterval: hasTargetInterval,
        intervalDays: intervalDays,
        hasCategory: hasCategory,
        totalActivitiesCount: totalActivitiesCount,
      ),
    );
  }

  Future<void> trackActivityEdited({
    required bool editedInterval,
    required bool editedCategory,
  }) {
    return track(
      AnalyticsConstants.activityEdited,
      AnalyticsEvents.activityEdited(
        editedInterval: editedInterval,
        editedCategory: editedCategory,
      ),
    );
  }

  Future<void> trackActivityDeleted({
    required String source,
    required int totalOccurrencesCount,
  }) {
    return track(
      AnalyticsConstants.activityDeleted,
      AnalyticsEvents.activityDeleted(
        source: source,
        totalOccurrencesCount: totalOccurrencesCount,
      ),
    );
  }

  Future<void> trackOccurrenceDeleted({
    required String source,
    required DateTime doneAt,
  }) {
    return track(
      AnalyticsConstants.occurrenceDeleted,
      AnalyticsEvents.occurrenceDeleted(source: source, doneAt: doneAt),
    );
  }

  Future<void> trackLanguageChanged({
    required String previousLanguageCode,
    required String newLanguageCode,
    required bool isSystemDefault,
  }) async {
    await registerSuperProperties({'language_code': newLanguageCode});
    return track(
      AnalyticsConstants.languageChanged,
      AnalyticsEvents.languageChanged(
        previousLanguageCode: previousLanguageCode,
        newLanguageCode: newLanguageCode,
        isSystemDefault: isSystemDefault,
      ),
    );
  }

  Future<void> trackThemeChanged(String themeMode) async {
    await registerSuperProperties({'theme_mode': themeMode});
    return track(
      AnalyticsConstants.themeChanged,
      AnalyticsEvents.themeChanged(themeMode: themeMode),
    );
  }

  Future<void> trackFilterCategorySelected({
    required String category,
    required bool isAll,
  }) {
    return track(
      AnalyticsConstants.filterCategorySelected,
      AnalyticsEvents.filterCategorySelected(category: category, isAll: isAll),
    );
  }

  Future<void> trackSortOrderChanged(String sortOrder) {
    return track(
      AnalyticsConstants.sortOrderChanged,
      AnalyticsEvents.sortOrderChanged(sortOrder: sortOrder),
    );
  }

  Future<void> trackSearchPerformed({
    required bool hadResults,
    required int resultCount,
  }) {
    return track(
      AnalyticsConstants.searchPerformed,
      AnalyticsEvents.searchPerformed(
        hadResults: hadResults,
        resultCount: resultCount,
      ),
    );
  }

  Future<void> trackCategoryCreated({
    required String categoryName,
    required String icon,
    required String source,
  }) {
    return track(
      AnalyticsConstants.categoryCreated,
      AnalyticsEvents.categoryCreated(
        categoryName: categoryName,
        icon: icon,
        source: source,
      ),
    );
  }

  Future<void> trackCategoryEdited({
    required String oldName,
    required String newName,
    required String icon,
  }) {
    return track(
      AnalyticsConstants.categoryEdited,
      AnalyticsEvents.categoryEdited(
        oldName: oldName,
        newName: newName,
        icon: icon,
      ),
    );
  }

  Future<void> trackCategoryDeleted({required String categoryName}) {
    return track(
      AnalyticsConstants.categoryDeleted,
      AnalyticsEvents.categoryDeleted(categoryName: categoryName),
    );
  }

  Future<void> trackCategorySelected({
    required String category,
    required bool isCleared,
  }) {
    return track(
      AnalyticsConstants.categorySelected,
      AnalyticsEvents.categorySelected(
        category: category,
        isCleared: isCleared,
      ),
    );
  }

  Future<void> trackBackupExported({
    required int activitiesCount,
    required int occurrencesCount,
  }) {
    return track(
      AnalyticsConstants.backupExported,
      AnalyticsEvents.backupExported(
        activitiesCount: activitiesCount,
        occurrencesCount: occurrencesCount,
      ),
    );
  }

  Future<void> trackBackupImported({
    required bool success,
    required int activitiesCount,
    required bool isMerge,
  }) {
    return track(
      AnalyticsConstants.backupImported,
      AnalyticsEvents.backupImported(
        success: success,
        activitiesCount: activitiesCount,
        isMerge: isMerge,
      ),
    );
  }

  Future<void> trackSettingsActionTapped(String action) {
    return track(
      AnalyticsConstants.settingsActionTapped,
      AnalyticsEvents.settingsActionTapped(action: action),
    );
  }

  Future<void> trackActivityInsightsViewed({
    required String status,
    required bool hasReminder,
    int? reminderDays,
    required bool hasCategory,
    int? daysSinceLastDone,
  }) {
    return track(
      AnalyticsConstants.activityInsightsViewed,
      AnalyticsEvents.activityInsightsViewed(
        status: status,
        hasReminder: hasReminder,
        reminderDays: reminderDays,
        hasCategory: hasCategory,
        daysSinceLastDone: daysSinceLastDone,
      ),
    );
  }

  Future<void> trackInsightsViewed({
    required int totalActivities,
    required int totalOccurrences,
  }) {
    return track(
      AnalyticsConstants.insightsViewed,
      AnalyticsEvents.insightsViewed(
        totalActivities: totalActivities,
        totalOccurrences: totalOccurrences,
      ),
    );
  }

  Future<void> registerSuperProperties(Map<String, dynamic> properties) async {
    if (!isSupported || _mixpanel == null) return;
    final optedOut = await _mixpanel!.hasOptedOutTracking();
    if (optedOut != false) return;
    await _mixpanel!.registerSuperProperties(properties);
  }

  Future<void> track(String event, Map<String, dynamic> properties) async {
    if (!isSupported || _mixpanel == null) return;

    final optedOut = await _mixpanel!.hasOptedOutTracking();
    if (optedOut != false) return;

    final currentTheme =
        await _prefs.getString(PrefsKeys.themeMode) ?? 'system';
    final currentLocale = await _prefs.getString(PrefsKeys.locale) ?? 'system';

    final enriched = <String, dynamic>{
      'language_code': currentLocale,
      'theme_mode': currentTheme,
      ...properties,
    };

    await _mixpanel!.track(event, properties: enriched);
  }

  Future<void> _optIn({String? appVersion, bool persist = true}) async {
    if (persist) {
      await _prefs.setString(
        PrefsKeys.analyticsConsent,
        PrefsKeys.analyticsConsentGranted,
      );
    }

    if (!isSupported) return;

    await _ensureInitialized();
    _mixpanel!.optInTracking();

    final savedTheme = await _prefs.getString(PrefsKeys.themeMode) ?? 'system';
    final savedLocale = await _prefs.getString(PrefsKeys.locale) ?? 'system';

    await _mixpanel!.registerSuperProperties({
      'platform': AnalyticsEvents.platformName,
      'app_version': ?appVersion,
      'language_code': savedLocale,
      'theme_mode': savedTheme,
    });
  }

  Future<void> _ensureInitialized() async {
    if (_mixpanel != null) return;

    _mixpanel = await Mixpanel.init(
      AnalyticsConstants.projectToken,
      trackAutomaticEvents: false,
      optOutTrackingDefault: true,
    );
  }
}
