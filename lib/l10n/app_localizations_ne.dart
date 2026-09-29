// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get cancel => 'रद्द गर्नुहोस्';

  @override
  String get delete => 'मेटाउनुहोस्';

  @override
  String get save => 'सुरक्षित गर्नुहोस्';

  @override
  String get add => 'थप्नुहोस्';

  @override
  String get edit => 'सम्पादन गर्नुहोस्';

  @override
  String get rename => 'नाम परिवर्तन गर्नुहोस्';

  @override
  String get merge => 'मिलाउनुहोस्';

  @override
  String get settings => 'सेटिङहरू';

  @override
  String get insights => 'अन्तर्दृष्टि';

  @override
  String get about => 'बारेमा';

  @override
  String get appearance => 'देखावट';

  @override
  String get themeSystem => 'प्रणाली';

  @override
  String get themeLight => 'उज्यालो';

  @override
  String get themeDark => 'अँध्यारो';

  @override
  String get language => 'भाषा';

  @override
  String get languageSystemDefault => 'प्रणालीको पूर्वनिर्धारित';

  @override
  String get organize => 'व्यवस्थित गर्नुहोस्';

  @override
  String get manageCategories => 'श्रेणीहरू व्यवस्थापन गर्नुहोस्';

  @override
  String get manageCategoriesSubtitle =>
      'गतिविधि श्रेणीहरू थप्नुहोस् वा हटाउनुहोस्';

  @override
  String get data => 'डाटा';

  @override
  String get exportBackup => 'ब्याकअप निर्यात गर्नुहोस्';

  @override
  String get exportBackupSubtitle =>
      'आफ्नो डाटा JSON का रूपमा सुरक्षित गर्नुहोस्';

  @override
  String get importBackup => 'ब्याकअप आयात गर्नुहोस्';

  @override
  String get importBackupSubtitle => 'JSON फाइलबाट पुनर्स्थापना गर्नुहोस्';

  @override
  String get privacy => 'गोपनीयता';

  @override
  String get usageAnalytics => 'प्रयोग विश्लेषण';

  @override
  String get usageAnalyticsSubtitle =>
      'Mixpanel मार्फत गुमनाम स्क्रिन र सुविधा प्रयोग साझा गर्नुहोस्';

  @override
  String aboutApp(String appName) {
    return '$appName बारे';
  }

  @override
  String get shareApp => 'एप साझा गर्नुहोस्';

  @override
  String shareAppSubtitle(String appName) {
    return 'साथीहरूलाई $appName बारे बताउनुहोस्';
  }

  @override
  String get rateApp => 'एपलाई मूल्याङ्कन गर्नुहोस्';

  @override
  String get rateAppSubtitle => 'एप स्टोरमा समीक्षा छोड्नुहोस्';

  @override
  String get contactUs => 'हामीलाई सम्पर्क गर्नुहोस्';

  @override
  String get contactUsSubtitle =>
      'प्रतिक्रिया पठाउनुहोस् वा त्रुटि रिपोर्ट गर्नुहोस्';

  @override
  String get moreApps => 'थप एपहरू';

  @override
  String get moreAppsSubtitle => 'विकासकर्ताका अन्य एपहरू';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String backupShareSubject(String appName) {
    return '$appName ब्याकअप';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'यहाँ अझै केही छैन';

  @override
  String get emptyNothingYetMessage =>
      'तपाईंले अन्तिम पटक केही कहिले गर्नुभयो ट्र्याक गर्नुहोस् — बिरुवामा पानी हाल्ने, गाडी धुने, परिवारलाई फोन गर्ने।';

  @override
  String get addActivity => 'गतिविधि थप्नुहोस्';

  @override
  String get addActivityFab => 'गतिविधि थप्नुहोस्';

  @override
  String get noMatches => 'कुनै मिलान छैन';

  @override
  String get noMatchesFilter =>
      'तपाईंको खोज वा फिल्टरसँग कुनै गतिविधि मिल्दैन।';

  @override
  String get nothingToShow => 'अहिले देखाउन केही छैन।';

  @override
  String get clearFilters => 'फिल्टरहरू हटाउनुहोस्';

  @override
  String errorWithDetails(String error) {
    return 'त्रुटि: $error';
  }

  @override
  String get deleteActivityTitle => 'गतिविधि मेटाउने?';

  @override
  String deleteActivityMessage(String title) {
    return '\"$title\" र सबै इतिहास मेटाउने?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return '\"$title\" र यसको सबै इतिहास मेटाउने? यो उल्ट्याउन सकिँदैन।';
  }

  @override
  String deletedActivity(String title) {
    return '\"$title\" मेटाइयो';
  }

  @override
  String loggedNow(String title) {
    return '\"$title\" अहिले लग गरियो';
  }

  @override
  String get searchHint => 'गतिविधिहरू खोज्नुहोस्...';

  @override
  String sortTooltip(String sort) {
    return 'क्रम: $sort';
  }

  @override
  String get sortRecentlyDone => 'भर्खर गरिएका';

  @override
  String get sortOverdueFirst => 'म्याद नाघेका पहिले';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'सबै';

  @override
  String get editActivity => 'गतिविधि सम्पादन गर्नुहोस्';

  @override
  String get newActivity => 'नयाँ गतिविधि';

  @override
  String get titleLabel => 'शीर्षक *';

  @override
  String get titleHint => 'जस्तै बिरुवामा पानी हाल्नुहोस्';

  @override
  String get titleRequired => 'शीर्षक आवश्यक छ';

  @override
  String get categoryLabel => 'श्रेणी';

  @override
  String get categoryHint => 'घर, सवारी, व्यक्तिगत...';

  @override
  String get notes => 'नोटहरू';

  @override
  String get dueInterval => 'नियत अन्तराल';

  @override
  String get markDueEveryXDays => 'हरेक X दिनमा नियत चिन्ह लगाउनुहोस्';

  @override
  String get dueIntervalSubtitle => 'चाँडै नियत / म्याद नाघेको अवस्था देखाउँछ';

  @override
  String get frequencyPreset => 'आवृत्ति प्रिसेट';

  @override
  String get daysUntilDue => 'नियत हुने दिनहरू';

  @override
  String get daysSuffix => 'दिन';

  @override
  String fixedByPreset(String preset) {
    return '$preset प्रिसेटद्वारा निश्चित';
  }

  @override
  String get invalidDays => 'दिनहरूको मान्य संख्या प्रविष्ट गर्नुहोस्';

  @override
  String get saveChanges => 'परिवर्तनहरू सुरक्षित गर्नुहोस्';

  @override
  String get createActivity => 'गतिविधि सिर्जना गर्नुहोस्';

  @override
  String get reminderNone => 'कुनै पनि होइन';

  @override
  String get reminderDaily => 'दैनिक';

  @override
  String get reminderWeekly => 'साप्ताहिक';

  @override
  String get reminderMonthly => 'मासिक';

  @override
  String get reminderCustom => 'अनुकूल';

  @override
  String get statusNeverLogged => 'कहिल्यै लग गरिएको छैन';

  @override
  String get statusLogged => 'लग गरियो';

  @override
  String get statusRecent => 'हालैको';

  @override
  String get statusDueSoon => 'चाँडै नियत';

  @override
  String get statusOverdue => 'म्याद नाघेको';

  @override
  String get editEntry => 'प्रविष्टि सम्पादन गर्नुहोस्';

  @override
  String get addEntry => 'प्रविष्टि थप्नुहोस्';

  @override
  String get date => 'मिति';

  @override
  String get time => 'समय';

  @override
  String get noteOptional => 'नोट (वैकल्पिक)';

  @override
  String get saveEntry => 'प्रविष्टि सुरक्षित गर्नुहोस्';

  @override
  String get activityNotFound => 'गतिविधि फेला परेन';

  @override
  String get history => 'इतिहास';

  @override
  String get noLogsYet => 'अझै कुनै लग छैन';

  @override
  String get logNow => 'अहिले लग गर्नुहोस्';

  @override
  String get addCustomEntry => 'अनुकूल प्रविष्टि थप्नुहोस्';

  @override
  String get lastDone => 'अन्तिम पटक गरिएको';

  @override
  String get nextDue => 'अर्को नियत';

  @override
  String get deleteEntryTitle => 'प्रविष्टि मेटाउने?';

  @override
  String get deleteEntryMessage => 'यो लग प्रविष्टि स्थायी रूपमा हटाउने?';

  @override
  String get categoriesTitle => 'श्रेणीहरू';

  @override
  String get noCategoriesYet =>
      'अझै कुनै श्रेणी छैन। एउटा बनाउन थप्नुहोस् ट्याप गर्नुहोस्।';

  @override
  String get deleteCategoryTitle => 'श्रेणी मेटाउने?';

  @override
  String deleteCategoryMessage(String name) {
    return 'सुझावहरूबाट \"$name\" हटाउने? यसलाई प्रयोग गर्ने गतिविधिहरूले आफ्नो श्रेणी राख्नेछन्।';
  }

  @override
  String get newCategory => 'नयाँ श्रेणी';

  @override
  String get categoryHintExample => 'जस्तै फिटनेस';

  @override
  String get categoryAlreadyExists => 'श्रेणी पहिले नै अवस्थित छ';

  @override
  String get renameCategory => 'श्रेणीको नाम परिवर्तन गर्नुहोस्';

  @override
  String get backupExported => 'ब्याकअप सफलतापूर्वक निर्यात भयो';

  @override
  String exportFailed(String error) {
    return 'निर्यात असफल: $error';
  }

  @override
  String get importBackupTitle => 'ब्याकअप आयात गर्नुहोस्';

  @override
  String get importBackupMessage =>
      'आयात गरिएको डाटालाई विद्यमान गतिविधिहरूसँग मिलाउने? सबै डाटा प्रतिस्थापन गर्न रद्द गर्नुहोस् छान्नुहोस् र फेरि आयात गर्नुहोस्।';

  @override
  String get replaceAllDataTitle => 'सबै डाटा प्रतिस्थापन गर्ने?';

  @override
  String get replaceAllDataMessage =>
      'आयात गर्नु अघि सबै विद्यमान गतिविधि र घटनाहरू मेटिनेछन्।';

  @override
  String get replaceAll => 'सबै प्रतिस्थापन गर्नुहोस्';

  @override
  String importedCounts(int activities, int occurrences) {
    return '$activities गतिविधि र $occurrences लग आयात गरियो';
  }

  @override
  String importFailed(String error) {
    return 'आयात असफल: $error';
  }

  @override
  String get insightsEmpty => 'अझै कुनै डाटा छैन। केही गतिविधि लग गर्नुहोस्!';

  @override
  String get activityBreakdown => 'गतिविधि विवरण';

  @override
  String get overview => 'अवलोकन';

  @override
  String get statActivities => 'गतिविधिहरू';

  @override
  String get statTotalLogs => 'कुल लगहरू';

  @override
  String mostOverdue(String title) {
    return 'सबैभन्दा बढी म्याद नाघेको: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'लगबीचको समय — $title';
  }

  @override
  String get intervalsCaption =>
      'प्रत्येक बारले फेरि लग गर्नु अघि तपाईंले कति दिन पर्खनुभयो देखाउँछ (नयाँ पहिले)।';

  @override
  String get latestGap => 'पछिल्लो अन्तराल';

  @override
  String get average => 'औसत';

  @override
  String get reminder => 'स्मरण';

  @override
  String daysValue(String days) {
    return '$days दिन';
  }

  @override
  String get needTwoLogs =>
      'प्रविष्टिहरूबीच अन्तराल देखाउन कम्तीमा २ लग चाहिन्छ';

  @override
  String get daysBetweenLogs => 'लगबीचका दिनहरू';

  @override
  String get reminderTarget => 'स्मरण लक्ष्य';

  @override
  String averageDaysShort(String days) {
    return 'औसत ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return 'स्मरण ${days}d';
  }

  @override
  String gapNumber(int number) {
    return 'अन्तराल $number';
  }

  @override
  String get latest => 'पछिल्लो';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count लग',
      one: '1 लग',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count लग',
      one: '1 लग',
    );
    return '$_temp0 • औसत $avg दिन';
  }

  @override
  String tooltipDays(String days) {
    return '$days दिन';
  }

  @override
  String aboutBody(String appName) {
    return '$appName एउटा सरल, अफलाइन-प्रथम एप हो जसले तपाईंलाई ट्र्याक गर्न मद्दत गर्छ तपाईंले अन्तिम पटक केही कहिले गर्नुभयो — बिरुवामा पानी हाल्ने, गाडी धुने, परिवारलाई फोन गर्ने र थप।';
  }

  @override
  String get aboutTagline =>
      'कुनै स्ट्रिक छैन। कुनै दबाब छैन। केवल \"मैले त्यो अन्तिम पटक कहिले गरेँ?\" को स्पष्ट उत्तर।';

  @override
  String get features => 'विशेषताहरू';

  @override
  String get featureTrack =>
      'वैकल्पिक नियत अन्तरालसहित असीमित गतिविधि ट्र्याक गर्नुहोस्';

  @override
  String get featureElapsed =>
      'अन्तिम पटक गरेपछिको समय हेर्नुहोस्, हालैको / चाँडै नियत / म्याद नाघेको अवस्थासहित';

  @override
  String get featureCategories => 'अनुकूल श्रेणीहरूले व्यवस्थित गर्नुहोस्';

  @override
  String get featureHistory =>
      'अनुकूल पछाडि मिति राखिएका प्रविष्टिहरूसहित पूर्ण इतिहास';

  @override
  String get featureInsights => 'औसत अन्तराल र चार्टसहित अन्तर्दृष्टि';

  @override
  String get featureThemes => 'उज्यालो र अँध्यारो ब्रान्ड थिम (प्रणालीअनुसार)';

  @override
  String get featureBackup => 'JSON निर्यात/आयात ब्याकअप';

  @override
  String get featureOffline =>
      '१००% अफलाइन — तपाईंको डाटा तपाईंको यन्त्रमा रहन्छ';

  @override
  String get privacyUnableToLoad =>
      'गोपनीयता नीति लोड गर्न सकिएन। तपाईं यसलाई अनलाइन हेर्न सक्नुहुन्छ।';

  @override
  String get openOnline => 'अनलाइन खोल्नुहोस्';

  @override
  String get couldNotOpenPrivacyUrl => 'गोपनीयता नीतिको URL खोल्न सकिएन';

  @override
  String get analyticsConsentTitle => 'RememberLast सुधार्न सहयोग गर्ने?';

  @override
  String get analyticsConsentBody =>
      'तपाईं वैकल्पिक रूपमा Mixpanel सँग गुमनाम प्रयोग विश्लेषण साझा गर्न सक्नुहुन्छ (जस्तै कुन स्क्रिन हेर्नुहुन्छ र कहिले गतिविधि लग गर्नुहुन्छ)। हामी कहिल्यै तपाईंका गतिविधि शीर्षक, नोट वा अन्य व्यक्तिगत सामग्री पठाउँदैनौं। तपाईं यो सेटिङमा जुनसुकै बेला परिवर्तन गर्न सक्नुहुन्छ।';

  @override
  String get decline => 'अस्वीकार गर्नुहोस्';

  @override
  String get accept => 'स्वीकार गर्नुहोस्';

  @override
  String get couldNotShareApp => 'एप साझा गर्न सकिएन';

  @override
  String get couldNotOpenAppStore => 'एप स्टोर खोल्न सकिएन';

  @override
  String get couldNotOpenEmail => 'इमेल एप खोल्न सकिएन';

  @override
  String get couldNotOpenDeveloperPage => 'विकासकर्ता पृष्ठ खोल्न सकिएन';

  @override
  String get justNow => 'भर्खरै';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count वर्षअघि',
      one: '1 वर्षअघि',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count महिनाअघि',
      one: '1 महिनाअघि',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिनअघि',
      one: '1 दिनअघि',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count घण्टाअघि',
      one: '1 घण्टाअघि',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count मिनेटअघि',
      one: '1 मिनेटअघि',
    );
    return '$_temp0';
  }
}
