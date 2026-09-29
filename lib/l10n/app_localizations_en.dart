// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get save => 'Save';

  @override
  String get add => 'Add';

  @override
  String get edit => 'Edit';

  @override
  String get rename => 'Rename';

  @override
  String get merge => 'Merge';

  @override
  String get settings => 'Settings';

  @override
  String get insights => 'Insights';

  @override
  String get about => 'About';

  @override
  String get appearance => 'Appearance';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get language => 'Language';

  @override
  String get languageSystemDefault => 'System default';

  @override
  String get organize => 'Organize';

  @override
  String get manageCategories => 'Manage categories';

  @override
  String get manageCategoriesSubtitle => 'Add or remove activity categories';

  @override
  String get data => 'Data';

  @override
  String get exportBackup => 'Export backup';

  @override
  String get exportBackupSubtitle => 'Save your data as JSON';

  @override
  String get importBackup => 'Import backup';

  @override
  String get importBackupSubtitle => 'Restore from a JSON file';

  @override
  String get privacy => 'Privacy';

  @override
  String get usageAnalytics => 'Usage analytics';

  @override
  String get usageAnalyticsSubtitle =>
      'Share anonymous screen and feature usage via Mixpanel';

  @override
  String aboutApp(String appName) {
    return 'About $appName';
  }

  @override
  String get shareApp => 'Share app';

  @override
  String shareAppSubtitle(String appName) {
    return 'Tell friends about $appName';
  }

  @override
  String get rateApp => 'Rate app';

  @override
  String get rateAppSubtitle => 'Leave a review on the app store';

  @override
  String get contactUs => 'Contact us';

  @override
  String get contactUsSubtitle => 'Send feedback or report a bug';

  @override
  String get moreApps => 'More apps';

  @override
  String get moreAppsSubtitle => 'Other apps from the developer';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String backupShareSubject(String appName) {
    return '$appName Backup';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'Nothing here yet';

  @override
  String get emptyNothingYetMessage =>
      'Track when you last did anything — water plants, car wash, call family.';

  @override
  String get addActivity => 'Add activity';

  @override
  String get addActivityFab => 'Add Activity';

  @override
  String get noMatches => 'No matches';

  @override
  String get noMatchesFilter => 'No activities match your search or filter.';

  @override
  String get nothingToShow => 'Nothing to show right now.';

  @override
  String get clearFilters => 'Clear filters';

  @override
  String errorWithDetails(String error) {
    return 'Error: $error';
  }

  @override
  String get deleteActivityTitle => 'Delete activity?';

  @override
  String deleteActivityMessage(String title) {
    return 'Delete \"$title\" and all history?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return 'Delete \"$title\" and all its history? This cannot be undone.';
  }

  @override
  String deletedActivity(String title) {
    return 'Deleted \"$title\"';
  }

  @override
  String loggedNow(String title) {
    return 'Logged \"$title\" now';
  }

  @override
  String get searchHint => 'Search activities...';

  @override
  String sortTooltip(String sort) {
    return 'Sort: $sort';
  }

  @override
  String get sortRecentlyDone => 'Recently done';

  @override
  String get sortOverdueFirst => 'Overdue first';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'All';

  @override
  String get editActivity => 'Edit Activity';

  @override
  String get newActivity => 'New Activity';

  @override
  String get titleLabel => 'Title *';

  @override
  String get titleHint => 'e.g. Water plants';

  @override
  String get titleRequired => 'Title is required';

  @override
  String get categoryLabel => 'Category';

  @override
  String get categoryHint => 'Home, Vehicle, Personal...';

  @override
  String get notes => 'Notes';

  @override
  String get dueInterval => 'Due interval';

  @override
  String get markDueEveryXDays => 'Mark due every X days';

  @override
  String get dueIntervalSubtitle => 'Shows due soon / overdue status';

  @override
  String get frequencyPreset => 'Frequency preset';

  @override
  String get daysUntilDue => 'Days until due';

  @override
  String get daysSuffix => 'days';

  @override
  String fixedByPreset(String preset) {
    return 'Fixed by $preset preset';
  }

  @override
  String get invalidDays => 'Enter a valid number of days';

  @override
  String get saveChanges => 'Save Changes';

  @override
  String get createActivity => 'Create Activity';

  @override
  String get reminderNone => 'None';

  @override
  String get reminderDaily => 'Daily';

  @override
  String get reminderWeekly => 'Weekly';

  @override
  String get reminderMonthly => 'Monthly';

  @override
  String get reminderCustom => 'Custom';

  @override
  String get statusNeverLogged => 'Never logged';

  @override
  String get statusLogged => 'Logged';

  @override
  String get statusRecent => 'Recent';

  @override
  String get statusDueSoon => 'Due soon';

  @override
  String get statusOverdue => 'Overdue';

  @override
  String get editEntry => 'Edit Entry';

  @override
  String get addEntry => 'Add Entry';

  @override
  String get date => 'Date';

  @override
  String get time => 'Time';

  @override
  String get noteOptional => 'Note (optional)';

  @override
  String get saveEntry => 'Save Entry';

  @override
  String get activityNotFound => 'Activity not found';

  @override
  String get history => 'History';

  @override
  String get noLogsYet => 'No logs yet';

  @override
  String get logNow => 'Log Now';

  @override
  String get addCustomEntry => 'Add Custom Entry';

  @override
  String get lastDone => 'Last done';

  @override
  String get nextDue => 'Next due';

  @override
  String get deleteEntryTitle => 'Delete entry?';

  @override
  String get deleteEntryMessage => 'Remove this log entry permanently?';

  @override
  String get categoriesTitle => 'Categories';

  @override
  String get noCategoriesYet => 'No categories yet. Tap Add to create one.';

  @override
  String get deleteCategoryTitle => 'Delete category?';

  @override
  String deleteCategoryMessage(String name) {
    return 'Remove \"$name\" from suggestions? Activities using it will keep their category.';
  }

  @override
  String get newCategory => 'New category';

  @override
  String get categoryHintExample => 'e.g. Fitness';

  @override
  String get categoryAlreadyExists => 'Category already exists';

  @override
  String get renameCategory => 'Rename category';

  @override
  String get backupExported => 'Backup exported successfully';

  @override
  String exportFailed(String error) {
    return 'Export failed: $error';
  }

  @override
  String get importBackupTitle => 'Import backup';

  @override
  String get importBackupMessage =>
      'Merge imported data with existing activities? Choose Cancel then re-import to replace all data instead.';

  @override
  String get replaceAllDataTitle => 'Replace all data?';

  @override
  String get replaceAllDataMessage =>
      'This will delete all existing activities and occurrences before importing.';

  @override
  String get replaceAll => 'Replace all';

  @override
  String importedCounts(int activities, int occurrences) {
    return 'Imported $activities activities and $occurrences logs';
  }

  @override
  String importFailed(String error) {
    return 'Import failed: $error';
  }

  @override
  String get insightsEmpty => 'No data yet. Log some activities!';

  @override
  String get activityBreakdown => 'Activity breakdown';

  @override
  String get overview => 'Overview';

  @override
  String get statActivities => 'Activities';

  @override
  String get statTotalLogs => 'Total logs';

  @override
  String mostOverdue(String title) {
    return 'Most overdue: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'Time between logs — $title';
  }

  @override
  String get intervalsCaption =>
      'Each bar is how many days you waited before logging again (newest first).';

  @override
  String get latestGap => 'Latest gap';

  @override
  String get average => 'Average';

  @override
  String get reminder => 'Reminder';

  @override
  String daysValue(String days) {
    return '$days days';
  }

  @override
  String get needTwoLogs => 'Need at least 2 logs to show gaps between entries';

  @override
  String get daysBetweenLogs => 'Days between logs';

  @override
  String get reminderTarget => 'Reminder target';

  @override
  String averageDaysShort(String days) {
    return 'Average ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return 'Reminder ${days}d';
  }

  @override
  String gapNumber(int number) {
    return 'Gap $number';
  }

  @override
  String get latest => 'Latest';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count logs',
      one: '1 log',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count logs',
      one: '1 log',
    );
    return '$_temp0 • avg $avg days';
  }

  @override
  String tooltipDays(String days) {
    return '$days days';
  }

  @override
  String aboutBody(String appName) {
    return '$appName is a simple, offline-first app that helps you track when you last did anything — water plants, wash your car, call family, and more.';
  }

  @override
  String get aboutTagline =>
      'No streaks. No pressure. Just a clear answer to \"when did I last do that?\"';

  @override
  String get features => 'Features';

  @override
  String get featureTrack =>
      'Track unlimited activities with optional due intervals';

  @override
  String get featureElapsed =>
      'See time elapsed since last done, with Recent / Due soon / Overdue status';

  @override
  String get featureCategories => 'Organize with custom categories';

  @override
  String get featureHistory => 'Full history with custom backdated entries';

  @override
  String get featureInsights => 'Insights with average intervals and charts';

  @override
  String get featureThemes => 'Light and dark brand themes (follows system)';

  @override
  String get featureBackup => 'JSON export/import backup';

  @override
  String get featureOffline => '100% offline — your data stays on your device';

  @override
  String get privacyUnableToLoad =>
      'Unable to load the privacy policy. You can view it online instead.';

  @override
  String get openOnline => 'Open online';

  @override
  String get couldNotOpenPrivacyUrl => 'Could not open privacy policy URL';

  @override
  String get analyticsConsentTitle => 'Help improve RememberLast?';

  @override
  String get analyticsConsentBody =>
      'You can optionally share anonymous usage analytics with Mixpanel (such as which screens you visit and when you log activities). We never send your activity titles, notes, or other personal content. You can change this anytime in Settings.';

  @override
  String get decline => 'Decline';

  @override
  String get accept => 'Accept';

  @override
  String get couldNotShareApp => 'Could not share app';

  @override
  String get couldNotOpenAppStore => 'Could not open app store';

  @override
  String get couldNotOpenEmail => 'Could not open email app';

  @override
  String get couldNotOpenDeveloperPage => 'Could not open developer page';

  @override
  String get justNow => 'Just now';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count years ago',
      one: '1 year ago',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count months ago',
      one: '1 month ago',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days ago',
      one: '1 day ago',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hours ago',
      one: '1 hour ago',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes ago',
      one: '1 minute ago',
    );
    return '$_temp0';
  }
}
