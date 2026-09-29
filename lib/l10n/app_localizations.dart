import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_bn.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('bn'),
    Locale('de'),
    Locale('es'),
    Locale('fil'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('lt'),
    Locale('ms'),
    Locale('ne'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('th'),
    Locale('tr'),
    Locale('vi'),
    Locale('zh'),
  ];

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @rename.
  ///
  /// In en, this message translates to:
  /// **'Rename'**
  String get rename;

  /// No description provided for @merge.
  ///
  /// In en, this message translates to:
  /// **'Merge'**
  String get merge;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @insights.
  ///
  /// In en, this message translates to:
  /// **'Insights'**
  String get insights;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @themeSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get themeSystem;

  /// No description provided for @themeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// No description provided for @themeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @languageSystemDefault.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get languageSystemDefault;

  /// No description provided for @organize.
  ///
  /// In en, this message translates to:
  /// **'Organize'**
  String get organize;

  /// No description provided for @manageCategories.
  ///
  /// In en, this message translates to:
  /// **'Manage categories'**
  String get manageCategories;

  /// No description provided for @manageCategoriesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Add or remove activity categories'**
  String get manageCategoriesSubtitle;

  /// No description provided for @data.
  ///
  /// In en, this message translates to:
  /// **'Data'**
  String get data;

  /// No description provided for @exportBackup.
  ///
  /// In en, this message translates to:
  /// **'Export backup'**
  String get exportBackup;

  /// No description provided for @exportBackupSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Save your data as JSON'**
  String get exportBackupSubtitle;

  /// No description provided for @importBackup.
  ///
  /// In en, this message translates to:
  /// **'Import backup'**
  String get importBackup;

  /// No description provided for @importBackupSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Restore from a JSON file'**
  String get importBackupSubtitle;

  /// No description provided for @privacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get privacy;

  /// No description provided for @usageAnalytics.
  ///
  /// In en, this message translates to:
  /// **'Usage analytics'**
  String get usageAnalytics;

  /// No description provided for @usageAnalyticsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Share anonymous screen and feature usage via Mixpanel'**
  String get usageAnalyticsSubtitle;

  /// No description provided for @aboutApp.
  ///
  /// In en, this message translates to:
  /// **'About {appName}'**
  String aboutApp(String appName);

  /// No description provided for @shareApp.
  ///
  /// In en, this message translates to:
  /// **'Share app'**
  String get shareApp;

  /// No description provided for @shareAppSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tell friends about {appName}'**
  String shareAppSubtitle(String appName);

  /// No description provided for @rateApp.
  ///
  /// In en, this message translates to:
  /// **'Rate app'**
  String get rateApp;

  /// No description provided for @rateAppSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Leave a review on the app store'**
  String get rateAppSubtitle;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs;

  /// No description provided for @contactUsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Send feedback or report a bug'**
  String get contactUsSubtitle;

  /// No description provided for @moreApps.
  ///
  /// In en, this message translates to:
  /// **'More apps'**
  String get moreApps;

  /// No description provided for @moreAppsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Other apps from the developer'**
  String get moreAppsSubtitle;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// No description provided for @backupShareSubject.
  ///
  /// In en, this message translates to:
  /// **'{appName} Backup'**
  String backupShareSubject(String appName);

  /// No description provided for @versionLabelLoading.
  ///
  /// In en, this message translates to:
  /// **'{appName} …'**
  String versionLabelLoading(String appName);

  /// No description provided for @emptyNothingYetTitle.
  ///
  /// In en, this message translates to:
  /// **'Nothing here yet'**
  String get emptyNothingYetTitle;

  /// No description provided for @emptyNothingYetMessage.
  ///
  /// In en, this message translates to:
  /// **'Track when you last did anything — water plants, car wash, call family.'**
  String get emptyNothingYetMessage;

  /// No description provided for @addActivity.
  ///
  /// In en, this message translates to:
  /// **'Add activity'**
  String get addActivity;

  /// No description provided for @addActivityFab.
  ///
  /// In en, this message translates to:
  /// **'Add Activity'**
  String get addActivityFab;

  /// No description provided for @noMatches.
  ///
  /// In en, this message translates to:
  /// **'No matches'**
  String get noMatches;

  /// No description provided for @noMatchesFilter.
  ///
  /// In en, this message translates to:
  /// **'No activities match your search or filter.'**
  String get noMatchesFilter;

  /// No description provided for @nothingToShow.
  ///
  /// In en, this message translates to:
  /// **'Nothing to show right now.'**
  String get nothingToShow;

  /// No description provided for @clearFilters.
  ///
  /// In en, this message translates to:
  /// **'Clear filters'**
  String get clearFilters;

  /// No description provided for @errorWithDetails.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String errorWithDetails(String error);

  /// No description provided for @deleteActivityTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete activity?'**
  String get deleteActivityTitle;

  /// No description provided for @deleteActivityMessage.
  ///
  /// In en, this message translates to:
  /// **'Delete \"{title}\" and all history?'**
  String deleteActivityMessage(String title);

  /// No description provided for @deleteActivityMessageUndo.
  ///
  /// In en, this message translates to:
  /// **'Delete \"{title}\" and all its history? This cannot be undone.'**
  String deleteActivityMessageUndo(String title);

  /// No description provided for @deletedActivity.
  ///
  /// In en, this message translates to:
  /// **'Deleted \"{title}\"'**
  String deletedActivity(String title);

  /// No description provided for @loggedNow.
  ///
  /// In en, this message translates to:
  /// **'Logged \"{title}\" now'**
  String loggedNow(String title);

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search activities...'**
  String get searchHint;

  /// No description provided for @sortTooltip.
  ///
  /// In en, this message translates to:
  /// **'Sort: {sort}'**
  String sortTooltip(String sort);

  /// No description provided for @sortRecentlyDone.
  ///
  /// In en, this message translates to:
  /// **'Recently done'**
  String get sortRecentlyDone;

  /// No description provided for @sortOverdueFirst.
  ///
  /// In en, this message translates to:
  /// **'Overdue first'**
  String get sortOverdueFirst;

  /// No description provided for @sortAlphabetical.
  ///
  /// In en, this message translates to:
  /// **'A–Z'**
  String get sortAlphabetical;

  /// No description provided for @categoryAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get categoryAll;

  /// No description provided for @editActivity.
  ///
  /// In en, this message translates to:
  /// **'Edit Activity'**
  String get editActivity;

  /// No description provided for @newActivity.
  ///
  /// In en, this message translates to:
  /// **'New Activity'**
  String get newActivity;

  /// No description provided for @titleLabel.
  ///
  /// In en, this message translates to:
  /// **'Title *'**
  String get titleLabel;

  /// No description provided for @titleHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Water plants'**
  String get titleHint;

  /// No description provided for @titleRequired.
  ///
  /// In en, this message translates to:
  /// **'Title is required'**
  String get titleRequired;

  /// No description provided for @categoryLabel.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get categoryLabel;

  /// No description provided for @categoryHint.
  ///
  /// In en, this message translates to:
  /// **'Home, Vehicle, Personal...'**
  String get categoryHint;

  /// No description provided for @notes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get notes;

  /// No description provided for @dueInterval.
  ///
  /// In en, this message translates to:
  /// **'Due interval'**
  String get dueInterval;

  /// No description provided for @markDueEveryXDays.
  ///
  /// In en, this message translates to:
  /// **'Mark due every X days'**
  String get markDueEveryXDays;

  /// No description provided for @dueIntervalSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Shows due soon / overdue status'**
  String get dueIntervalSubtitle;

  /// No description provided for @frequencyPreset.
  ///
  /// In en, this message translates to:
  /// **'Frequency preset'**
  String get frequencyPreset;

  /// No description provided for @daysUntilDue.
  ///
  /// In en, this message translates to:
  /// **'Days until due'**
  String get daysUntilDue;

  /// No description provided for @daysSuffix.
  ///
  /// In en, this message translates to:
  /// **'days'**
  String get daysSuffix;

  /// No description provided for @fixedByPreset.
  ///
  /// In en, this message translates to:
  /// **'Fixed by {preset} preset'**
  String fixedByPreset(String preset);

  /// No description provided for @invalidDays.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid number of days'**
  String get invalidDays;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChanges;

  /// No description provided for @createActivity.
  ///
  /// In en, this message translates to:
  /// **'Create Activity'**
  String get createActivity;

  /// No description provided for @reminderNone.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get reminderNone;

  /// No description provided for @reminderDaily.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get reminderDaily;

  /// No description provided for @reminderWeekly.
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get reminderWeekly;

  /// No description provided for @reminderMonthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get reminderMonthly;

  /// No description provided for @reminderCustom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get reminderCustom;

  /// No description provided for @statusNeverLogged.
  ///
  /// In en, this message translates to:
  /// **'Never logged'**
  String get statusNeverLogged;

  /// No description provided for @statusLogged.
  ///
  /// In en, this message translates to:
  /// **'Logged'**
  String get statusLogged;

  /// No description provided for @statusRecent.
  ///
  /// In en, this message translates to:
  /// **'Recent'**
  String get statusRecent;

  /// No description provided for @statusDueSoon.
  ///
  /// In en, this message translates to:
  /// **'Due soon'**
  String get statusDueSoon;

  /// No description provided for @statusOverdue.
  ///
  /// In en, this message translates to:
  /// **'Overdue'**
  String get statusOverdue;

  /// No description provided for @editEntry.
  ///
  /// In en, this message translates to:
  /// **'Edit Entry'**
  String get editEntry;

  /// No description provided for @addEntry.
  ///
  /// In en, this message translates to:
  /// **'Add Entry'**
  String get addEntry;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @noteOptional.
  ///
  /// In en, this message translates to:
  /// **'Note (optional)'**
  String get noteOptional;

  /// No description provided for @saveEntry.
  ///
  /// In en, this message translates to:
  /// **'Save Entry'**
  String get saveEntry;

  /// No description provided for @activityNotFound.
  ///
  /// In en, this message translates to:
  /// **'Activity not found'**
  String get activityNotFound;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @noLogsYet.
  ///
  /// In en, this message translates to:
  /// **'No logs yet'**
  String get noLogsYet;

  /// No description provided for @logNow.
  ///
  /// In en, this message translates to:
  /// **'Log Now'**
  String get logNow;

  /// No description provided for @addCustomEntry.
  ///
  /// In en, this message translates to:
  /// **'Add Custom Entry'**
  String get addCustomEntry;

  /// No description provided for @lastDone.
  ///
  /// In en, this message translates to:
  /// **'Last done'**
  String get lastDone;

  /// No description provided for @nextDue.
  ///
  /// In en, this message translates to:
  /// **'Next due'**
  String get nextDue;

  /// No description provided for @deleteEntryTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete entry?'**
  String get deleteEntryTitle;

  /// No description provided for @deleteEntryMessage.
  ///
  /// In en, this message translates to:
  /// **'Remove this log entry permanently?'**
  String get deleteEntryMessage;

  /// No description provided for @categoriesTitle.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categoriesTitle;

  /// No description provided for @noCategoriesYet.
  ///
  /// In en, this message translates to:
  /// **'No categories yet. Tap Add to create one.'**
  String get noCategoriesYet;

  /// No description provided for @deleteCategoryTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete category?'**
  String get deleteCategoryTitle;

  /// No description provided for @deleteCategoryMessage.
  ///
  /// In en, this message translates to:
  /// **'Remove \"{name}\" from suggestions? Activities using it will keep their category.'**
  String deleteCategoryMessage(String name);

  /// No description provided for @newCategory.
  ///
  /// In en, this message translates to:
  /// **'New category'**
  String get newCategory;

  /// No description provided for @categoryHintExample.
  ///
  /// In en, this message translates to:
  /// **'e.g. Fitness'**
  String get categoryHintExample;

  /// No description provided for @categoryAlreadyExists.
  ///
  /// In en, this message translates to:
  /// **'Category already exists'**
  String get categoryAlreadyExists;

  /// No description provided for @renameCategory.
  ///
  /// In en, this message translates to:
  /// **'Rename category'**
  String get renameCategory;

  /// No description provided for @backupExported.
  ///
  /// In en, this message translates to:
  /// **'Backup exported successfully'**
  String get backupExported;

  /// No description provided for @exportFailed.
  ///
  /// In en, this message translates to:
  /// **'Export failed: {error}'**
  String exportFailed(String error);

  /// No description provided for @importBackupTitle.
  ///
  /// In en, this message translates to:
  /// **'Import backup'**
  String get importBackupTitle;

  /// No description provided for @importBackupMessage.
  ///
  /// In en, this message translates to:
  /// **'Merge imported data with existing activities? Choose Cancel then re-import to replace all data instead.'**
  String get importBackupMessage;

  /// No description provided for @replaceAllDataTitle.
  ///
  /// In en, this message translates to:
  /// **'Replace all data?'**
  String get replaceAllDataTitle;

  /// No description provided for @replaceAllDataMessage.
  ///
  /// In en, this message translates to:
  /// **'This will delete all existing activities and occurrences before importing.'**
  String get replaceAllDataMessage;

  /// No description provided for @replaceAll.
  ///
  /// In en, this message translates to:
  /// **'Replace all'**
  String get replaceAll;

  /// No description provided for @importedCounts.
  ///
  /// In en, this message translates to:
  /// **'Imported {activities} activities and {occurrences} logs'**
  String importedCounts(int activities, int occurrences);

  /// No description provided for @importFailed.
  ///
  /// In en, this message translates to:
  /// **'Import failed: {error}'**
  String importFailed(String error);

  /// No description provided for @insightsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No data yet. Log some activities!'**
  String get insightsEmpty;

  /// No description provided for @activityBreakdown.
  ///
  /// In en, this message translates to:
  /// **'Activity breakdown'**
  String get activityBreakdown;

  /// No description provided for @overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// No description provided for @statActivities.
  ///
  /// In en, this message translates to:
  /// **'Activities'**
  String get statActivities;

  /// No description provided for @statTotalLogs.
  ///
  /// In en, this message translates to:
  /// **'Total logs'**
  String get statTotalLogs;

  /// No description provided for @mostOverdue.
  ///
  /// In en, this message translates to:
  /// **'Most overdue: {title}'**
  String mostOverdue(String title);

  /// No description provided for @timeBetweenLogs.
  ///
  /// In en, this message translates to:
  /// **'Time between logs — {title}'**
  String timeBetweenLogs(String title);

  /// No description provided for @intervalsCaption.
  ///
  /// In en, this message translates to:
  /// **'Each bar is how many days you waited before logging again (newest first).'**
  String get intervalsCaption;

  /// No description provided for @latestGap.
  ///
  /// In en, this message translates to:
  /// **'Latest gap'**
  String get latestGap;

  /// No description provided for @average.
  ///
  /// In en, this message translates to:
  /// **'Average'**
  String get average;

  /// No description provided for @reminder.
  ///
  /// In en, this message translates to:
  /// **'Reminder'**
  String get reminder;

  /// No description provided for @daysValue.
  ///
  /// In en, this message translates to:
  /// **'{days} days'**
  String daysValue(String days);

  /// No description provided for @needTwoLogs.
  ///
  /// In en, this message translates to:
  /// **'Need at least 2 logs to show gaps between entries'**
  String get needTwoLogs;

  /// No description provided for @daysBetweenLogs.
  ///
  /// In en, this message translates to:
  /// **'Days between logs'**
  String get daysBetweenLogs;

  /// No description provided for @reminderTarget.
  ///
  /// In en, this message translates to:
  /// **'Reminder target'**
  String get reminderTarget;

  /// No description provided for @averageDaysShort.
  ///
  /// In en, this message translates to:
  /// **'Average {days}d'**
  String averageDaysShort(String days);

  /// No description provided for @reminderDaysShort.
  ///
  /// In en, this message translates to:
  /// **'Reminder {days}d'**
  String reminderDaysShort(String days);

  /// No description provided for @gapNumber.
  ///
  /// In en, this message translates to:
  /// **'Gap {number}'**
  String gapNumber(int number);

  /// No description provided for @latest.
  ///
  /// In en, this message translates to:
  /// **'Latest'**
  String get latest;

  /// No description provided for @logsCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 log} other{{count} logs}}'**
  String logsCount(int count);

  /// No description provided for @logsCountWithAverage.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 log} other{{count} logs}} • avg {avg} days'**
  String logsCountWithAverage(int count, String avg);

  /// No description provided for @tooltipDays.
  ///
  /// In en, this message translates to:
  /// **'{days} days'**
  String tooltipDays(String days);

  /// No description provided for @aboutBody.
  ///
  /// In en, this message translates to:
  /// **'{appName} is a simple, offline-first app that helps you track when you last did anything — water plants, wash your car, call family, and more.'**
  String aboutBody(String appName);

  /// No description provided for @aboutTagline.
  ///
  /// In en, this message translates to:
  /// **'No streaks. No pressure. Just a clear answer to \"when did I last do that?\"'**
  String get aboutTagline;

  /// No description provided for @features.
  ///
  /// In en, this message translates to:
  /// **'Features'**
  String get features;

  /// No description provided for @featureTrack.
  ///
  /// In en, this message translates to:
  /// **'Track unlimited activities with optional due intervals'**
  String get featureTrack;

  /// No description provided for @featureElapsed.
  ///
  /// In en, this message translates to:
  /// **'See time elapsed since last done, with Recent / Due soon / Overdue status'**
  String get featureElapsed;

  /// No description provided for @featureCategories.
  ///
  /// In en, this message translates to:
  /// **'Organize with custom categories'**
  String get featureCategories;

  /// No description provided for @featureHistory.
  ///
  /// In en, this message translates to:
  /// **'Full history with custom backdated entries'**
  String get featureHistory;

  /// No description provided for @featureInsights.
  ///
  /// In en, this message translates to:
  /// **'Insights with average intervals and charts'**
  String get featureInsights;

  /// No description provided for @featureThemes.
  ///
  /// In en, this message translates to:
  /// **'Light and dark brand themes (follows system)'**
  String get featureThemes;

  /// No description provided for @featureBackup.
  ///
  /// In en, this message translates to:
  /// **'JSON export/import backup'**
  String get featureBackup;

  /// No description provided for @featureOffline.
  ///
  /// In en, this message translates to:
  /// **'100% offline — your data stays on your device'**
  String get featureOffline;

  /// No description provided for @privacyUnableToLoad.
  ///
  /// In en, this message translates to:
  /// **'Unable to load the privacy policy. You can view it online instead.'**
  String get privacyUnableToLoad;

  /// No description provided for @openOnline.
  ///
  /// In en, this message translates to:
  /// **'Open online'**
  String get openOnline;

  /// No description provided for @couldNotOpenPrivacyUrl.
  ///
  /// In en, this message translates to:
  /// **'Could not open privacy policy URL'**
  String get couldNotOpenPrivacyUrl;

  /// No description provided for @analyticsConsentTitle.
  ///
  /// In en, this message translates to:
  /// **'Help improve RememberLast?'**
  String get analyticsConsentTitle;

  /// No description provided for @analyticsConsentBody.
  ///
  /// In en, this message translates to:
  /// **'You can optionally share anonymous usage analytics with Mixpanel (such as which screens you visit and when you log activities). We never send your activity titles, notes, or other personal content. You can change this anytime in Settings.'**
  String get analyticsConsentBody;

  /// No description provided for @decline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get decline;

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// No description provided for @couldNotShareApp.
  ///
  /// In en, this message translates to:
  /// **'Could not share app'**
  String get couldNotShareApp;

  /// No description provided for @couldNotOpenAppStore.
  ///
  /// In en, this message translates to:
  /// **'Could not open app store'**
  String get couldNotOpenAppStore;

  /// No description provided for @couldNotOpenEmail.
  ///
  /// In en, this message translates to:
  /// **'Could not open email app'**
  String get couldNotOpenEmail;

  /// No description provided for @couldNotOpenDeveloperPage.
  ///
  /// In en, this message translates to:
  /// **'Could not open developer page'**
  String get couldNotOpenDeveloperPage;

  /// No description provided for @justNow.
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get justNow;

  /// No description provided for @yearsAgo.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 year ago} other{{count} years ago}}'**
  String yearsAgo(int count);

  /// No description provided for @monthsAgo.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 month ago} other{{count} months ago}}'**
  String monthsAgo(int count);

  /// No description provided for @daysAgo.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 day ago} other{{count} days ago}}'**
  String daysAgo(int count);

  /// No description provided for @hoursAgo.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 hour ago} other{{count} hours ago}}'**
  String hoursAgo(int count);

  /// No description provided for @minutesAgo.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 minute ago} other{{count} minutes ago}}'**
  String minutesAgo(int count);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'bn',
    'de',
    'en',
    'es',
    'fil',
    'fr',
    'hi',
    'id',
    'it',
    'ja',
    'ko',
    'lt',
    'ms',
    'ne',
    'nl',
    'pl',
    'pt',
    'ro',
    'th',
    'tr',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'bn':
      return AppLocalizationsBn();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'lt':
      return AppLocalizationsLt();
    case 'ms':
      return AppLocalizationsMs();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
