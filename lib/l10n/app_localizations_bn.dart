// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get cancel => 'বাতিল';

  @override
  String get delete => 'মুছুন';

  @override
  String get save => 'সংরক্ষণ';

  @override
  String get add => 'যোগ করুন';

  @override
  String get edit => 'সম্পাদনা';

  @override
  String get rename => 'নাম পরিবর্তন';

  @override
  String get merge => 'একত্র করুন';

  @override
  String get settings => 'সেটিংস';

  @override
  String get insights => 'অন্তর্দৃষ্টি';

  @override
  String get about => 'সম্পর্কে';

  @override
  String get appearance => 'চেহারা';

  @override
  String get themeSystem => 'সিস্টেম';

  @override
  String get themeLight => 'হালকা';

  @override
  String get themeDark => 'গাঢ়';

  @override
  String get language => 'ভাষা';

  @override
  String get languageSystemDefault => 'সিস্টেম ডিফল্ট';

  @override
  String get organize => 'সাজান';

  @override
  String get manageCategories => 'বিভাগ পরিচালনা';

  @override
  String get manageCategoriesSubtitle => 'কার্যকলাপের বিভাগ যোগ বা সরান';

  @override
  String get data => 'ডেটা';

  @override
  String get exportBackup => 'ব্যাকআপ রপ্তানি';

  @override
  String get exportBackupSubtitle => 'আপনার ডেটা JSON হিসেবে সংরক্ষণ করুন';

  @override
  String get importBackup => 'ব্যাকআপ আমদানি';

  @override
  String get importBackupSubtitle => 'একটি JSON ফাইল থেকে পুনরুদ্ধার করুন';

  @override
  String get privacy => 'গোপনীয়তা';

  @override
  String get usageAnalytics => 'ব্যবহার বিশ্লেষণ';

  @override
  String get usageAnalyticsSubtitle =>
      'Mixpanel এর মাধ্যমে বেনামি স্ক্রিন ও ফিচার ব্যবহার শেয়ার করুন';

  @override
  String aboutApp(String appName) {
    return '$appName সম্পর্কে';
  }

  @override
  String get shareApp => 'অ্যাপ শেয়ার করুন';

  @override
  String shareAppSubtitle(String appName) {
    return 'বন্ধুদের $appName সম্পর্কে বলুন';
  }

  @override
  String get rateApp => 'অ্যাপ রেট করুন';

  @override
  String get rateAppSubtitle => 'অ্যাপ স্টোরে একটি পর্যালোচনা রাখুন';

  @override
  String get contactUs => 'যোগাযোগ করুন';

  @override
  String get contactUsSubtitle => 'মতামত পাঠান বা বাগ রিপোর্ট করুন';

  @override
  String get moreApps => 'আরও অ্যাপ';

  @override
  String get moreAppsSubtitle => 'ডেভেলপারের অন্যান্য অ্যাপ';

  @override
  String get privacyPolicy => 'গোপনীয়তা নীতি';

  @override
  String backupShareSubject(String appName) {
    return '$appName ব্যাকআপ';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'এখানে এখনও কিছু নেই';

  @override
  String get emptyNothingYetMessage =>
      'আপনি শেষবার কিছু করেছিলেন কখন তা ট্র্যাক করুন — গাছে পানি দেওয়া, গাড়ি ধোয়া, পরিবারকে ফোন।';

  @override
  String get addActivity => 'কার্যকলাপ যোগ করুন';

  @override
  String get addActivityFab => 'কার্যকলাপ যোগ করুন';

  @override
  String get noMatches => 'কোনো মিল নেই';

  @override
  String get noMatchesFilter =>
      'আপনার অনুসন্ধান বা ফিল্টারের সাথে কোনো কার্যকলাপ মিলছে না।';

  @override
  String get nothingToShow => 'এখন দেখানোর মতো কিছু নেই।';

  @override
  String get clearFilters => 'ফিল্টার মুছুন';

  @override
  String errorWithDetails(String error) {
    return 'ত্রুটি: $error';
  }

  @override
  String get deleteActivityTitle => 'কার্যকলাপ মুছবেন?';

  @override
  String deleteActivityMessage(String title) {
    return '\"$title\" এবং সব ইতিহাস মুছবেন?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return '\"$title\" এবং তার সব ইতিহাস মুছবেন? এটি পূর্বাবস্থায় ফেরানো যাবে না।';
  }

  @override
  String deletedActivity(String title) {
    return '\"$title\" মুছে ফেলা হয়েছে';
  }

  @override
  String loggedNow(String title) {
    return '\"$title\" এখন লগ করা হয়েছে';
  }

  @override
  String get searchHint => 'কার্যকলাপ খুঁজুন...';

  @override
  String sortTooltip(String sort) {
    return 'সাজানো: $sort';
  }

  @override
  String get sortRecentlyDone => 'সম্প্রতি করা';

  @override
  String get sortOverdueFirst => 'মেয়াদোত্তীর্ণ আগে';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'সব';

  @override
  String get editActivity => 'কার্যকলাপ সম্পাদনা';

  @override
  String get newActivity => 'নতুন কার্যকলাপ';

  @override
  String get titleLabel => 'শিরোনাম *';

  @override
  String get titleHint => 'যেমন গাছে পানি দিন';

  @override
  String get titleRequired => 'শিরোনাম প্রয়োজন';

  @override
  String get categoryLabel => 'বিভাগ';

  @override
  String get categoryHint => 'বাড়ি, যানবাহন, ব্যক্তিগত...';

  @override
  String get notes => 'নোট';

  @override
  String get dueInterval => 'নির্ধারিত বিরতি';

  @override
  String get markDueEveryXDays => 'প্রতি X দিনে নির্ধারিত চিহ্নিত করুন';

  @override
  String get dueIntervalSubtitle =>
      'শীঘ্রই নির্ধারিত / মেয়াদোত্তীর্ণ অবস্থা দেখায়';

  @override
  String get frequencyPreset => 'ফ্রিকোয়েন্সি প্রিসেট';

  @override
  String get daysUntilDue => 'নির্ধারিত হওয়া পর্যন্ত দিন';

  @override
  String get daysSuffix => 'দিন';

  @override
  String fixedByPreset(String preset) {
    return '$preset প্রিসেট দ্বারা নির্ধারিত';
  }

  @override
  String get invalidDays => 'দিনের একটি বৈধ সংখ্যা লিখুন';

  @override
  String get saveChanges => 'পরিবর্তন সংরক্ষণ';

  @override
  String get createActivity => 'কার্যকলাপ তৈরি করুন';

  @override
  String get reminderNone => 'কোনোটি নয়';

  @override
  String get reminderDaily => 'দৈনিক';

  @override
  String get reminderWeekly => 'সাপ্তাহিক';

  @override
  String get reminderMonthly => 'মাসিক';

  @override
  String get reminderCustom => 'কাস্টম';

  @override
  String get statusNeverLogged => 'কখনও লগ হয়নি';

  @override
  String get statusLogged => 'লগ করা হয়েছে';

  @override
  String get statusRecent => 'সাম্প্রতিক';

  @override
  String get statusDueSoon => 'শীঘ্রই নির্ধারিত';

  @override
  String get statusOverdue => 'মেয়াদোত্তীর্ণ';

  @override
  String get editEntry => 'এন্ট্রি সম্পাদনা';

  @override
  String get addEntry => 'এন্ট্রি যোগ করুন';

  @override
  String get date => 'তারিখ';

  @override
  String get time => 'সময়';

  @override
  String get noteOptional => 'নোট (ঐচ্ছিক)';

  @override
  String get saveEntry => 'এন্ট্রি সংরক্ষণ';

  @override
  String get activityNotFound => 'কার্যকলাপ পাওয়া যায়নি';

  @override
  String get history => 'ইতিহাস';

  @override
  String get noLogsYet => 'এখনও কোনো লগ নেই';

  @override
  String get logNow => 'এখন লগ করুন';

  @override
  String get addCustomEntry => 'কাস্টম এন্ট্রি যোগ করুন';

  @override
  String get lastDone => 'শেষবার করা';

  @override
  String get nextDue => 'পরবর্তী নির্ধারিত';

  @override
  String get deleteEntryTitle => 'এন্ট্রি মুছবেন?';

  @override
  String get deleteEntryMessage => 'এই লগ এন্ট্রি স্থায়ীভাবে সরাতে চান?';

  @override
  String get categoriesTitle => 'বিভাগ';

  @override
  String get noCategoriesYet =>
      'এখনও কোনো বিভাগ নেই। একটি তৈরি করতে যোগ করুন ট্যাপ করুন।';

  @override
  String get deleteCategoryTitle => 'বিভাগ মুছবেন?';

  @override
  String deleteCategoryMessage(String name) {
    return 'পরামর্শ থেকে \"$name\" সরাতে চান? এটি ব্যবহার করা কার্যকলাপগুলো তাদের বিভাগ রাখবে।';
  }

  @override
  String get newCategory => 'নতুন বিভাগ';

  @override
  String get categoryHintExample => 'যেমন ফিটনেস';

  @override
  String get categoryAlreadyExists => 'বিভাগ ইতিমধ্যে আছে';

  @override
  String get renameCategory => 'বিভাগের নাম পরিবর্তন';

  @override
  String get backupExported => 'ব্যাকআপ সফলভাবে রপ্তানি হয়েছে';

  @override
  String exportFailed(String error) {
    return 'রপ্তানি ব্যর্থ: $error';
  }

  @override
  String get importBackupTitle => 'ব্যাকআপ আমদানি';

  @override
  String get importBackupMessage =>
      'আমদানি করা ডেটা বিদ্যমান কার্যকলাপের সাথে একত্র করবেন? সব ডেটা প্রতিস্থাপন করতে বাতিল বেছে নিয়ে আবার আমদানি করুন।';

  @override
  String get replaceAllDataTitle => 'সব ডেটা প্রতিস্থাপন করবেন?';

  @override
  String get replaceAllDataMessage =>
      'আমদানির আগে সব বিদ্যমান কার্যকলাপ ও ঘটনা মুছে যাবে।';

  @override
  String get replaceAll => 'সব প্রতিস্থাপন';

  @override
  String importedCounts(int activities, int occurrences) {
    return '$activitiesটি কার্যকলাপ এবং $occurrencesটি লগ আমদানি হয়েছে';
  }

  @override
  String importFailed(String error) {
    return 'আমদানি ব্যর্থ: $error';
  }

  @override
  String get insightsEmpty => 'এখনও কোনো ডেটা নেই। কিছু কার্যকলাপ লগ করুন!';

  @override
  String get activityBreakdown => 'কার্যকলাপের বিভাজন';

  @override
  String get overview => 'সংক্ষিপ্ত বিবরণ';

  @override
  String get statActivities => 'কার্যকলাপ';

  @override
  String get statTotalLogs => 'মোট লগ';

  @override
  String mostOverdue(String title) {
    return 'সবচেয়ে মেয়াদোত্তীর্ণ: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'লগের মধ্যে সময় — $title';
  }

  @override
  String get intervalsCaption =>
      'প্রতিটি বার দেখায় আবার লগ করার আগে আপনি কত দিন অপেক্ষা করেছেন (নতুন আগে)।';

  @override
  String get latestGap => 'সর্বশেষ ব্যবধান';

  @override
  String get average => 'গড়';

  @override
  String get reminder => 'রিমাইন্ডার';

  @override
  String daysValue(String days) {
    return '$days দিন';
  }

  @override
  String get needTwoLogs =>
      'এন্ট্রির মধ্যে ব্যবধান দেখাতে কমপক্ষে ২টি লগ প্রয়োজন';

  @override
  String get daysBetweenLogs => 'লগের মধ্যে দিন';

  @override
  String get reminderTarget => 'রিমাইন্ডার লক্ষ্য';

  @override
  String averageDaysShort(String days) {
    return 'গড় ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return 'রিমাইন্ডার ${days}d';
  }

  @override
  String gapNumber(int number) {
    return 'ব্যবধান $number';
  }

  @override
  String get latest => 'সর্বশেষ';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count লগ',
      one: '1 লগ',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count লগ',
      one: '1 লগ',
    );
    return '$_temp0 • গড় $avg দিন';
  }

  @override
  String tooltipDays(String days) {
    return '$days দিন';
  }

  @override
  String aboutBody(String appName) {
    return '$appName একটি সহজ, অফলাইন-প্রথম অ্যাপ যা আপনাকে ট্র্যাক করতে সাহায্য করে শেষবার কিছু করেছিলেন কখন — গাছে পানি দেওয়া, গাড়ি ধোয়া, পরিবারকে ফোন এবং আরও।';
  }

  @override
  String get aboutTagline =>
      'কোনো স্ট্রিক নেই। কোনো চাপ নেই। শুধু \"আমি সেটা শেষবার কখন করেছি?\" এর স্পষ্ট উত্তর।';

  @override
  String get features => 'বৈশিষ্ট্য';

  @override
  String get featureTrack =>
      'ঐচ্ছিক নির্ধারিত বিরতি সহ সীমাহীন কার্যকলাপ ট্র্যাক করুন';

  @override
  String get featureElapsed =>
      'শেষবার করার পর কেটে যাওয়া সময় দেখুন, সাম্প্রতিক / শীঘ্রই নির্ধারিত / মেয়াদোত্তীর্ণ অবস্থা সহ';

  @override
  String get featureCategories => 'কাস্টম বিভাগ দিয়ে সাজান';

  @override
  String get featureHistory => 'কাস্টম পিছনের তারিখের এন্ট্রি সহ পূর্ণ ইতিহাস';

  @override
  String get featureInsights => 'গড় বিরতি ও চার্ট সহ অন্তর্দৃষ্টি';

  @override
  String get featureThemes => 'হালকা ও গাঢ় ব্র্যান্ড থিম (সিস্টেম অনুসরণ করে)';

  @override
  String get featureBackup => 'JSON রপ্তানি/আমদানি ব্যাকআপ';

  @override
  String get featureOffline => '১০০% অফলাইন — আপনার ডেটা আপনার ডিভাইসে থাকে';

  @override
  String get privacyUnableToLoad =>
      'গোপনীয়তা নীতি লোড করা যায়নি। আপনি এটি অনলাইনে দেখতে পারেন।';

  @override
  String get openOnline => 'অনলাইনে খুলুন';

  @override
  String get couldNotOpenPrivacyUrl => 'গোপনীয়তা নীতির URL খোলা যায়নি';

  @override
  String get analyticsConsentTitle => 'RememberLast উন্নত করতে সাহায্য করবেন?';

  @override
  String get analyticsConsentBody =>
      'আপনি ঐচ্ছিকভাবে Mixpanel এর সাথে বেনামি ব্যবহার বিশ্লেষণ শেয়ার করতে পারেন (যেমন কোন স্ক্রিন দেখেন এবং কখন কার্যকলাপ লগ করেন)। আমরা কখনও আপনার কার্যকলাপের শিরোনাম, নোট বা অন্য ব্যক্তিগত বিষয়বস্তু পাঠাই না। আপনি সেটিংসে যেকোনো সময় এটি পরিবর্তন করতে পারেন।';

  @override
  String get decline => 'প্রত্যাখ্যান';

  @override
  String get accept => 'গ্রহণ';

  @override
  String get couldNotShareApp => 'অ্যাপ শেয়ার করা যায়নি';

  @override
  String get couldNotOpenAppStore => 'অ্যাপ স্টোর খোলা যায়নি';

  @override
  String get couldNotOpenEmail => 'ইমেইল অ্যাপ খোলা যায়নি';

  @override
  String get couldNotOpenDeveloperPage => 'ডেভেলপার পৃষ্ঠা খোলা যায়নি';

  @override
  String get justNow => 'এইমাত্র';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count বছর আগে',
      one: '1 বছর আগে',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count মাস আগে',
      one: '1 মাস আগে',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন আগে',
      one: '1 দিন আগে',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ঘণ্টা আগে',
      one: '1 ঘণ্টা আগে',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count মিনিট আগে',
      one: '1 মিনিট আগে',
    );
    return '$_temp0';
  }
}
