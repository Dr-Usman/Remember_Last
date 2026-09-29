// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get cancel => 'रद्द करें';

  @override
  String get delete => 'हटाएँ';

  @override
  String get save => 'सहेजें';

  @override
  String get add => 'जोड़ें';

  @override
  String get edit => 'संपादित करें';

  @override
  String get rename => 'नाम बदलें';

  @override
  String get merge => 'मिलाएँ';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get insights => 'जानकारियाँ';

  @override
  String get about => 'परिचय';

  @override
  String get appearance => 'दिखावट';

  @override
  String get themeSystem => 'सिस्टम';

  @override
  String get themeLight => 'हल्का';

  @override
  String get themeDark => 'गहरा';

  @override
  String get language => 'भाषा';

  @override
  String get languageSystemDefault => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get organize => 'व्यवस्थित करें';

  @override
  String get manageCategories => 'श्रेणियाँ प्रबंधित करें';

  @override
  String get manageCategoriesSubtitle => 'गतिविधि श्रेणियाँ जोड़ें या हटाएँ';

  @override
  String get data => 'डेटा';

  @override
  String get exportBackup => 'बैकअप निर्यात करें';

  @override
  String get exportBackupSubtitle => 'अपना डेटा JSON के रूप में सहेजें';

  @override
  String get importBackup => 'बैकअप आयात करें';

  @override
  String get importBackupSubtitle => 'JSON फ़ाइल से पुनर्स्थापित करें';

  @override
  String get privacy => 'गोपनीयता';

  @override
  String get usageAnalytics => 'उपयोग विश्लेषण';

  @override
  String get usageAnalyticsSubtitle =>
      'Mixpanel के माध्यम से गुमनाम स्क्रीन और सुविधा उपयोग साझा करें';

  @override
  String aboutApp(String appName) {
    return '$appName के बारे में';
  }

  @override
  String get shareApp => 'ऐप साझा करें';

  @override
  String shareAppSubtitle(String appName) {
    return 'दोस्तों को $appName के बारे में बताएँ';
  }

  @override
  String get rateApp => 'ऐप को रेट करें';

  @override
  String get rateAppSubtitle => 'ऐप स्टोर पर समीक्षा छोड़ें';

  @override
  String get contactUs => 'संपर्क करें';

  @override
  String get contactUsSubtitle => 'प्रतिक्रिया भेजें या बग रिपोर्ट करें';

  @override
  String get moreApps => 'और ऐप';

  @override
  String get moreAppsSubtitle => 'डेवलपर के अन्य ऐप';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String backupShareSubject(String appName) {
    return '$appName बैकअप';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'यहाँ अभी कुछ नहीं है';

  @override
  String get emptyNothingYetMessage =>
      'ट्रैक करें कि आपने आखिरी बार कुछ कब किया — पौधों को पानी देना, कार धोना, परिवार को कॉल करना।';

  @override
  String get addActivity => 'गतिविधि जोड़ें';

  @override
  String get addActivityFab => 'गतिविधि जोड़ें';

  @override
  String get noMatches => 'कोई मेल नहीं';

  @override
  String get noMatchesFilter =>
      'आपकी खोज या फ़िल्टर से कोई गतिविधि मेल नहीं खाती।';

  @override
  String get nothingToShow => 'अभी दिखाने के लिए कुछ नहीं है।';

  @override
  String get clearFilters => 'फ़िल्टर साफ़ करें';

  @override
  String errorWithDetails(String error) {
    return 'त्रुटि: $error';
  }

  @override
  String get deleteActivityTitle => 'गतिविधि हटाएँ?';

  @override
  String deleteActivityMessage(String title) {
    return '\"$title\" और पूरा इतिहास हटाएँ?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return '\"$title\" और उसका पूरा इतिहास हटाएँ? इसे पूर्ववत नहीं किया जा सकता।';
  }

  @override
  String deletedActivity(String title) {
    return '\"$title\" हटा दी गई';
  }

  @override
  String loggedNow(String title) {
    return '\"$title\" अभी लॉग की गई';
  }

  @override
  String get searchHint => 'गतिविधियाँ खोजें...';

  @override
  String sortTooltip(String sort) {
    return 'क्रम: $sort';
  }

  @override
  String get sortRecentlyDone => 'हाल ही में की गई';

  @override
  String get sortOverdueFirst => 'अतिदेय पहले';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'सभी';

  @override
  String get editActivity => 'गतिविधि संपादित करें';

  @override
  String get newActivity => 'नई गतिविधि';

  @override
  String get titleLabel => 'शीर्षक *';

  @override
  String get titleHint => 'जैसे पौधे सींचें';

  @override
  String get titleRequired => 'शीर्षक आवश्यक है';

  @override
  String get categoryLabel => 'श्रेणी';

  @override
  String get categoryHint => 'घर, वाहन, व्यक्तिगत...';

  @override
  String get notes => 'नोट्स';

  @override
  String get dueInterval => 'नियत अंतराल';

  @override
  String get markDueEveryXDays => 'हर X दिनों में नियत चिह्नित करें';

  @override
  String get dueIntervalSubtitle => 'जल्द नियत / अतिदेय स्थिति दिखाता है';

  @override
  String get frequencyPreset => 'आवृत्ति प्रीसेट';

  @override
  String get daysUntilDue => 'नियत होने तक दिन';

  @override
  String get daysSuffix => 'दिन';

  @override
  String fixedByPreset(String preset) {
    return '$preset प्रीसेट द्वारा तय';
  }

  @override
  String get invalidDays => 'दिनों की मान्य संख्या दर्ज करें';

  @override
  String get saveChanges => 'परिवर्तन सहेजें';

  @override
  String get createActivity => 'गतिविधि बनाएँ';

  @override
  String get reminderNone => 'कोई नहीं';

  @override
  String get reminderDaily => 'दैनिक';

  @override
  String get reminderWeekly => 'साप्ताहिक';

  @override
  String get reminderMonthly => 'मासिक';

  @override
  String get reminderCustom => 'कस्टम';

  @override
  String get statusNeverLogged => 'कभी लॉग नहीं';

  @override
  String get statusLogged => 'लॉग किया गया';

  @override
  String get statusRecent => 'हालिया';

  @override
  String get statusDueSoon => 'जल्द नियत';

  @override
  String get statusOverdue => 'अतिदेय';

  @override
  String get editEntry => 'प्रविष्टि संपादित करें';

  @override
  String get addEntry => 'प्रविष्टि जोड़ें';

  @override
  String get date => 'तारीख';

  @override
  String get time => 'समय';

  @override
  String get noteOptional => 'नोट (वैकल्पिक)';

  @override
  String get saveEntry => 'प्रविष्टि सहेजें';

  @override
  String get activityNotFound => 'गतिविधि नहीं मिली';

  @override
  String get history => 'इतिहास';

  @override
  String get noLogsYet => 'अभी कोई लॉग नहीं';

  @override
  String get logNow => 'अभी लॉग करें';

  @override
  String get addCustomEntry => 'कस्टम प्रविष्टि जोड़ें';

  @override
  String get lastDone => 'आखिरी बार किया';

  @override
  String get nextDue => 'अगली नियत तिथि';

  @override
  String get deleteEntryTitle => 'प्रविष्टि हटाएँ?';

  @override
  String get deleteEntryMessage => 'इस लॉग प्रविष्टि को स्थायी रूप से हटाएँ?';

  @override
  String get categoriesTitle => 'श्रेणियाँ';

  @override
  String get noCategoriesYet =>
      'अभी कोई श्रेणी नहीं। बनाने के लिए जोड़ें टैप करें।';

  @override
  String get deleteCategoryTitle => 'श्रेणी हटाएँ?';

  @override
  String deleteCategoryMessage(String name) {
    return 'सुझावों से \"$name\" हटाएँ? इसका उपयोग करने वाली गतिविधियाँ अपनी श्रेणी रखेंगी।';
  }

  @override
  String get newCategory => 'नई श्रेणी';

  @override
  String get categoryHintExample => 'जैसे फिटनेस';

  @override
  String get categoryAlreadyExists => 'श्रेणी पहले से मौजूद है';

  @override
  String get renameCategory => 'श्रेणी का नाम बदलें';

  @override
  String get backupExported => 'बैकअप सफलतापूर्वक निर्यात हुआ';

  @override
  String exportFailed(String error) {
    return 'निर्यात विफल: $error';
  }

  @override
  String get importBackupTitle => 'बैकअप आयात करें';

  @override
  String get importBackupMessage =>
      'आयातित डेटा को मौजूदा गतिविधियों के साथ मिलाएँ? सभी डेटा बदलने के लिए रद्द करें चुनें और फिर से आयात करें।';

  @override
  String get replaceAllDataTitle => 'सारा डेटा बदलें?';

  @override
  String get replaceAllDataMessage =>
      'आयात से पहले सभी मौजूदा गतिविधियाँ और घटनाएँ हटा दी जाएँगी।';

  @override
  String get replaceAll => 'सभी बदलें';

  @override
  String importedCounts(int activities, int occurrences) {
    return '$activities गतिविधियाँ और $occurrences लॉग आयात किए गए';
  }

  @override
  String importFailed(String error) {
    return 'आयात विफल: $error';
  }

  @override
  String get insightsEmpty => 'अभी कोई डेटा नहीं। कुछ गतिविधियाँ लॉग करें!';

  @override
  String get activityBreakdown => 'गतिविधि विवरण';

  @override
  String get overview => 'अवलोकन';

  @override
  String get statActivities => 'गतिविधियाँ';

  @override
  String get statTotalLogs => 'कुल लॉग';

  @override
  String mostOverdue(String title) {
    return 'सबसे अधिक अतिदेय: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'लॉग के बीच समय — $title';
  }

  @override
  String get intervalsCaption =>
      'प्रत्येक बार यह दिखाता है कि फिर से लॉग करने से पहले आपने कितने दिन इंतजार किया (नवीनतम पहले)।';

  @override
  String get latestGap => 'नवीनतम अंतराल';

  @override
  String get average => 'औसत';

  @override
  String get reminder => 'अनुस्मारक';

  @override
  String daysValue(String days) {
    return '$days दिन';
  }

  @override
  String get needTwoLogs =>
      'प्रविष्टियों के बीच अंतराल दिखाने के लिए कम से कम 2 लॉग चाहिए';

  @override
  String get daysBetweenLogs => 'लॉग के बीच दिन';

  @override
  String get reminderTarget => 'अनुस्मारक लक्ष्य';

  @override
  String averageDaysShort(String days) {
    return 'औसत ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return 'अनुस्मारक ${days}d';
  }

  @override
  String gapNumber(int number) {
    return 'अंतराल $number';
  }

  @override
  String get latest => 'नवीनतम';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count लॉग',
      one: '1 लॉग',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count लॉग',
      one: '1 लॉग',
    );
    return '$_temp0 • औसत $avg दिन';
  }

  @override
  String tooltipDays(String days) {
    return '$days दिन';
  }

  @override
  String aboutBody(String appName) {
    return '$appName एक सरल, ऑफ़लाइन-प्रथम ऐप है जो यह ट्रैक करने में मदद करता है कि आपने आखिरी बार कुछ कब किया — पौधे सींचना, कार धोना, परिवार को कॉल करना और अधिक।';
  }

  @override
  String get aboutTagline =>
      'कोई स्ट्रीक नहीं। कोई दबाव नहीं। बस \"मैंने वह आखिरी बार कब किया?\" का स्पष्ट उत्तर।';

  @override
  String get features => 'विशेषताएँ';

  @override
  String get featureTrack =>
      'वैकल्पिक नियत अंतराल के साथ असीमित गतिविधियाँ ट्रैक करें';

  @override
  String get featureElapsed =>
      'आखिरी बार किए जाने के बाद बीता समय देखें, हालिया / जल्द नियत / अतिदेय स्थिति के साथ';

  @override
  String get featureCategories => 'कस्टम श्रेणियों से व्यवस्थित करें';

  @override
  String get featureHistory =>
      'कस्टम पिछली तिथि की प्रविष्टियों के साथ पूरा इतिहास';

  @override
  String get featureInsights => 'औसत अंतराल और चार्ट के साथ जानकारियाँ';

  @override
  String get featureThemes => 'हल्के और गहरे ब्रांड थीम (सिस्टम का अनुसरण)';

  @override
  String get featureBackup => 'JSON निर्यात/आयात बैकअप';

  @override
  String get featureOffline =>
      '100% ऑफ़लाइन — आपका डेटा आपके डिवाइस पर रहता है';

  @override
  String get privacyUnableToLoad =>
      'गोपनीयता नीति लोड नहीं हो सकी। आप इसे ऑनलाइन देख सकते हैं।';

  @override
  String get openOnline => 'ऑनलाइन खोलें';

  @override
  String get couldNotOpenPrivacyUrl => 'गोपनीयता नीति URL नहीं खुल सका';

  @override
  String get analyticsConsentTitle =>
      'RememberLast को बेहतर बनाने में मदद करें?';

  @override
  String get analyticsConsentBody =>
      'आप वैकल्पिक रूप से Mixpanel के साथ गुमनाम उपयोग विश्लेषण साझा कर सकते हैं (जैसे आप कौन सी स्क्रीन देखते हैं और कब गतिविधियाँ लॉग करते हैं)। हम कभी भी आपकी गतिविधि के शीर्षक, नोट्स या अन्य व्यक्तिगत सामग्री नहीं भेजते। आप इसे सेटिंग्स में कभी भी बदल सकते हैं।';

  @override
  String get decline => 'अस्वीकार करें';

  @override
  String get accept => 'स्वीकार करें';

  @override
  String get couldNotShareApp => 'ऐप साझा नहीं किया जा सका';

  @override
  String get couldNotOpenAppStore => 'ऐप स्टोर नहीं खुल सका';

  @override
  String get couldNotOpenEmail => 'ईमेल ऐप नहीं खुल सका';

  @override
  String get couldNotOpenDeveloperPage => 'डेवलपर पृष्ठ नहीं खुल सका';

  @override
  String get justNow => 'अभी-अभी';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count साल पहले',
      one: '1 साल पहले',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count महीने पहले',
      one: '1 महीना पहले',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन पहले',
      one: '1 दिन पहले',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count घंटे पहले',
      one: '1 घंटा पहले',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count मिनट पहले',
      one: '1 मिनट पहले',
    );
    return '$_temp0';
  }
}
