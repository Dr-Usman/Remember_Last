// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get cancel => 'Kanselahin';

  @override
  String get delete => 'Tanggalin';

  @override
  String get save => 'I-save';

  @override
  String get add => 'Magdagdag';

  @override
  String get edit => 'I-edit';

  @override
  String get rename => 'Palitan ng pangalan';

  @override
  String get merge => 'Pagsamahin';

  @override
  String get settings => 'Mga setting';

  @override
  String get insights => 'Mga insight';

  @override
  String get about => 'Tungkol';

  @override
  String get appearance => 'Hitsura';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Maliwanag';

  @override
  String get themeDark => 'Madilim';

  @override
  String get language => 'Wika';

  @override
  String get languageSystemDefault => 'Default ng system';

  @override
  String get organize => 'Ayusin';

  @override
  String get manageCategories => 'Pamahalaan ang mga kategorya';

  @override
  String get manageCategoriesSubtitle =>
      'Magdagdag o magtanggal ng mga kategorya ng aktibidad';

  @override
  String get data => 'Data';

  @override
  String get exportBackup => 'I-export ang backup';

  @override
  String get exportBackupSubtitle => 'I-save ang iyong data bilang JSON';

  @override
  String get importBackup => 'I-import ang backup';

  @override
  String get importBackupSubtitle => 'Ibalik mula sa isang JSON file';

  @override
  String get privacy => 'Privacy';

  @override
  String get usageAnalytics => 'Analytics ng paggamit';

  @override
  String get usageAnalyticsSubtitle =>
      'Ibahagi ang anonymous na paggamit ng screen at feature sa pamamagitan ng Mixpanel';

  @override
  String aboutApp(String appName) {
    return 'Tungkol sa $appName';
  }

  @override
  String get shareApp => 'Ibahagi ang app';

  @override
  String shareAppSubtitle(String appName) {
    return 'Sabihin sa mga kaibigan ang tungkol sa $appName';
  }

  @override
  String get rateApp => 'I-rate ang app';

  @override
  String get rateAppSubtitle => 'Mag-iwan ng review sa app store';

  @override
  String get contactUs => 'Makipag-ugnayan sa amin';

  @override
  String get contactUsSubtitle => 'Magpadala ng feedback o mag-ulat ng bug';

  @override
  String get moreApps => 'Higit pang app';

  @override
  String get moreAppsSubtitle => 'Iba pang app mula sa developer';

  @override
  String get privacyPolicy => 'Patakaran sa privacy';

  @override
  String backupShareSubject(String appName) {
    return 'Backup ng $appName';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'Wala pa rito';

  @override
  String get emptyNothingYetMessage =>
      'Subaybayan kung kailan mo huling ginawa ang kahit ano — diligan ang halaman, maghugas ng kotse, tumawag sa pamilya.';

  @override
  String get addActivity => 'Magdagdag ng aktibidad';

  @override
  String get addActivityFab => 'Magdagdag ng Aktibidad';

  @override
  String get noMatches => 'Walang tugma';

  @override
  String get noMatchesFilter =>
      'Walang aktibidad na tumutugma sa iyong paghahanap o filter.';

  @override
  String get nothingToShow => 'Walang ipapakita sa ngayon.';

  @override
  String get clearFilters => 'I-clear ang mga filter';

  @override
  String errorWithDetails(String error) {
    return 'Error: $error';
  }

  @override
  String get deleteActivityTitle => 'Tanggalin ang aktibidad?';

  @override
  String deleteActivityMessage(String title) {
    return 'Tanggalin ang \"$title\" at lahat ng history?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return 'Tanggalin ang \"$title\" at lahat ng history nito? Hindi ito mababawi.';
  }

  @override
  String deletedActivity(String title) {
    return 'Tinanggal ang \"$title\"';
  }

  @override
  String loggedNow(String title) {
    return 'Nai-log na ngayon ang \"$title\"';
  }

  @override
  String get searchHint => 'Maghanap ng mga aktibidad...';

  @override
  String sortTooltip(String sort) {
    return 'Ayusin: $sort';
  }

  @override
  String get sortRecentlyDone => 'Kamakailang ginawa';

  @override
  String get sortOverdueFirst => 'Overdue muna';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'Lahat';

  @override
  String get editActivity => 'I-edit ang Aktibidad';

  @override
  String get newActivity => 'Bagong Aktibidad';

  @override
  String get titleLabel => 'Pamagat *';

  @override
  String get titleHint => 'hal. Diligan ang halaman';

  @override
  String get titleRequired => 'Kailangan ang pamagat';

  @override
  String get categoryLabel => 'Kategorya';

  @override
  String get categoryHint => 'Tahanan, Sasakyan, Personal...';

  @override
  String get notes => 'Mga tala';

  @override
  String get dueInterval => 'Interval ng due';

  @override
  String get markDueEveryXDays => 'Markahan bilang due tuwing X araw';

  @override
  String get dueIntervalSubtitle =>
      'Ipinapakita ang due soon / overdue na status';

  @override
  String get frequencyPreset => 'Preset ng dalas';

  @override
  String get daysUntilDue => 'Mga araw hanggang due';

  @override
  String get daysSuffix => 'araw';

  @override
  String fixedByPreset(String preset) {
    return 'Nakapirmi ayon sa $preset preset';
  }

  @override
  String get invalidDays => 'Maglagay ng wastong bilang ng araw';

  @override
  String get saveChanges => 'I-save ang Mga Pagbabago';

  @override
  String get createActivity => 'Gumawa ng Aktibidad';

  @override
  String get reminderNone => 'Wala';

  @override
  String get reminderDaily => 'Araw-araw';

  @override
  String get reminderWeekly => 'Lingguhan';

  @override
  String get reminderMonthly => 'Buwanan';

  @override
  String get reminderCustom => 'Custom';

  @override
  String get statusNeverLogged => 'Hindi pa nai-log';

  @override
  String get statusLogged => 'Nai-log';

  @override
  String get statusRecent => 'Kamakailan';

  @override
  String get statusDueSoon => 'Malapit nang due';

  @override
  String get statusOverdue => 'Overdue';

  @override
  String get editEntry => 'I-edit ang Entry';

  @override
  String get addEntry => 'Magdagdag ng Entry';

  @override
  String get date => 'Petsa';

  @override
  String get time => 'Oras';

  @override
  String get noteOptional => 'Tala (opsyonal)';

  @override
  String get saveEntry => 'I-save ang Entry';

  @override
  String get activityNotFound => 'Hindi nahanap ang aktibidad';

  @override
  String get history => 'History';

  @override
  String get noLogsYet => 'Wala pang mga log';

  @override
  String get logNow => 'I-log Ngayon';

  @override
  String get addCustomEntry => 'Magdagdag ng Custom na Entry';

  @override
  String get lastDone => 'Huling ginawa';

  @override
  String get nextDue => 'Susunod na due';

  @override
  String get deleteEntryTitle => 'Tanggalin ang entry?';

  @override
  String get deleteEntryMessage =>
      'Alisin nang permanente ang log entry na ito?';

  @override
  String get categoriesTitle => 'Mga kategorya';

  @override
  String get noCategoriesYet =>
      'Wala pang kategorya. I-tap ang Magdagdag para gumawa ng isa.';

  @override
  String get deleteCategoryTitle => 'Tanggalin ang kategorya?';

  @override
  String deleteCategoryMessage(String name) {
    return 'Alisin ang \"$name\" sa mga suhestiyon? Pananatilihin ng mga aktibidad na gumagamit nito ang kanilang kategorya.';
  }

  @override
  String get newCategory => 'Bagong kategorya';

  @override
  String get categoryHintExample => 'hal. Fitness';

  @override
  String get categoryAlreadyExists => 'Umiiral na ang kategorya';

  @override
  String get renameCategory => 'Palitan ng pangalan ang kategorya';

  @override
  String get backupExported => 'Matagumpay na na-export ang backup';

  @override
  String exportFailed(String error) {
    return 'Nabigo ang export: $error';
  }

  @override
  String get importBackupTitle => 'I-import ang backup';

  @override
  String get importBackupMessage =>
      'Pagsamahin ang na-import na data sa umiiral na mga aktibidad? Piliin ang Kanselahin tapos mag-import ulit para palitan ang lahat ng data.';

  @override
  String get replaceAllDataTitle => 'Palitan ang lahat ng data?';

  @override
  String get replaceAllDataMessage =>
      'Tatanggalin nito ang lahat ng umiiral na aktibidad at occurrence bago mag-import.';

  @override
  String get replaceAll => 'Palitan lahat';

  @override
  String importedCounts(int activities, int occurrences) {
    return 'Na-import ang $activities na aktibidad at $occurrences na log';
  }

  @override
  String importFailed(String error) {
    return 'Nabigo ang import: $error';
  }

  @override
  String get insightsEmpty => 'Wala pang data. Mag-log ng ilang aktibidad!';

  @override
  String get activityBreakdown => 'Breakdown ng aktibidad';

  @override
  String get overview => 'Pangkalahatang-ideya';

  @override
  String get statActivities => 'Mga aktibidad';

  @override
  String get statTotalLogs => 'Kabuuang log';

  @override
  String mostOverdue(String title) {
    return 'Pinaka-overdue: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'Oras sa pagitan ng mga log — $title';
  }

  @override
  String get intervalsCaption =>
      'Bawat bar ay kung ilang araw kang naghintay bago mag-log ulit (pinakabago muna).';

  @override
  String get latestGap => 'Pinakabagong agwat';

  @override
  String get average => 'Average';

  @override
  String get reminder => 'Paalala';

  @override
  String daysValue(String days) {
    return '$days araw';
  }

  @override
  String get needTwoLogs =>
      'Kailangan ng hindi bababa sa 2 log para ipakita ang agwat sa pagitan ng mga entry';

  @override
  String get daysBetweenLogs => 'Mga araw sa pagitan ng mga log';

  @override
  String get reminderTarget => 'Target ng paalala';

  @override
  String averageDaysShort(String days) {
    return 'Average ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return 'Paalala ${days}d';
  }

  @override
  String gapNumber(int number) {
    return 'Agwat $number';
  }

  @override
  String get latest => 'Pinakabago';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count log',
      one: '1 log',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count log',
      one: '1 log',
    );
    return '$_temp0 • avg $avg araw';
  }

  @override
  String tooltipDays(String days) {
    return '$days araw';
  }

  @override
  String aboutBody(String appName) {
    return 'Ang $appName ay isang simpleng, offline-first na app na tumutulong sa iyo subaybayan kung kailan mo huling ginawa ang kahit ano — diligan ang halaman, maghugas ng kotse, tumawag sa pamilya, at marami pa.';
  }

  @override
  String get aboutTagline =>
      'Walang streak. Walang pressure. Malinaw lang na sagot sa \"kailan ko huling ginawa iyon?\"';

  @override
  String get features => 'Mga feature';

  @override
  String get featureTrack =>
      'Subaybayan ang walang limitasyong aktibidad na may opsyonal na due interval';

  @override
  String get featureElapsed =>
      'Tingnan ang oras mula noong huling gawin, na may status na Kamakailan / Malapit nang due / Overdue';

  @override
  String get featureCategories => 'Ayusin gamit ang custom na kategorya';

  @override
  String get featureHistory =>
      'Buong history na may custom na backdated na entry';

  @override
  String get featureInsights =>
      'Mga insight na may average na interval at chart';

  @override
  String get featureThemes =>
      'Maliwanag at madilim na brand theme (sumusunod sa system)';

  @override
  String get featureBackup => 'JSON export/import backup';

  @override
  String get featureOffline =>
      '100% offline — nananatili ang data sa iyong device';

  @override
  String get privacyUnableToLoad =>
      'Hindi ma-load ang patakaran sa privacy. Maaari mo itong tingnan online.';

  @override
  String get openOnline => 'Buksan online';

  @override
  String get couldNotOpenPrivacyUrl =>
      'Hindi mabuksan ang URL ng patakaran sa privacy';

  @override
  String get analyticsConsentTitle => 'Tulungan mapabuti ang RememberLast?';

  @override
  String get analyticsConsentBody =>
      'Opsyonal mong maibabahagi ang anonymous na usage analytics sa Mixpanel (tulad ng kung aling screen ang binibisita mo at kailan ka mag-log ng aktibidad). Hindi namin kailanman ipinapadala ang mga pamagat ng aktibidad, tala, o iba pang personal na nilalaman. Maaari mo itong baguhin anumang oras sa Mga Setting.';

  @override
  String get decline => 'Tanggihan';

  @override
  String get accept => 'Tanggapin';

  @override
  String get couldNotShareApp => 'Hindi maibahagi ang app';

  @override
  String get couldNotOpenAppStore => 'Hindi mabuksan ang app store';

  @override
  String get couldNotOpenEmail => 'Hindi mabuksan ang email app';

  @override
  String get couldNotOpenDeveloperPage =>
      'Hindi mabuksan ang pahina ng developer';

  @override
  String get justNow => 'Ngayon lang';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count taon ang nakalipas',
      one: '1 taon ang nakalipas',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count buwan ang nakalipas',
      one: '1 buwan ang nakalipas',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count araw ang nakalipas',
      one: '1 araw ang nakalipas',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count oras ang nakalipas',
      one: '1 oras ang nakalipas',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuto ang nakalipas',
      one: '1 minuto ang nakalipas',
    );
    return '$_temp0';
  }
}
