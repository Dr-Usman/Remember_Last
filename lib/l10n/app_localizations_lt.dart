// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get cancel => 'Atšaukti';

  @override
  String get delete => 'Ištrinti';

  @override
  String get save => 'Išsaugoti';

  @override
  String get add => 'Pridėti';

  @override
  String get edit => 'Redaguoti';

  @override
  String get rename => 'Pervadinti';

  @override
  String get merge => 'Sujungti';

  @override
  String get settings => 'Nustatymai';

  @override
  String get insights => 'Įžvalgos';

  @override
  String get about => 'Apie';

  @override
  String get appearance => 'Išvaizda';

  @override
  String get themeSystem => 'Sistemos';

  @override
  String get themeLight => 'Šviesi';

  @override
  String get themeDark => 'Tamsi';

  @override
  String get language => 'Kalba';

  @override
  String get languageSystemDefault => 'Sistemos numatytoji';

  @override
  String get organize => 'Tvarkyti';

  @override
  String get manageCategories => 'Tvarkyti kategorijas';

  @override
  String get manageCategoriesSubtitle =>
      'Pridėkite arba pašalinkite veiklos kategorijas';

  @override
  String get data => 'Duomenys';

  @override
  String get exportBackup => 'Eksportuoti atsarginę kopiją';

  @override
  String get exportBackupSubtitle => 'Išsaugokite duomenis JSON formatu';

  @override
  String get importBackup => 'Importuoti atsarginę kopiją';

  @override
  String get importBackupSubtitle => 'Atkurti iš JSON failo';

  @override
  String get privacy => 'Privatumas';

  @override
  String get usageAnalytics => 'Naudojimo analitika';

  @override
  String get usageAnalyticsSubtitle =>
      'Dalytis anonimine ekranų ir funkcijų statistika per „Mixpanel“';

  @override
  String aboutApp(String appName) {
    return 'Apie „$appName“';
  }

  @override
  String get shareApp => 'Dalytis programėle';

  @override
  String shareAppSubtitle(String appName) {
    return 'Papasakokite draugams apie „$appName“';
  }

  @override
  String get rateApp => 'Įvertinti programėlę';

  @override
  String get rateAppSubtitle => 'Palikite atsiliepimą programėlių parduotuvėje';

  @override
  String get contactUs => 'Susisiekite su mumis';

  @override
  String get contactUsSubtitle =>
      'Siųskite atsiliepimus arba praneškite apie klaidą';

  @override
  String get moreApps => 'Daugiau programėlių';

  @override
  String get moreAppsSubtitle => 'Kitos kūrėjo programėlės';

  @override
  String get privacyPolicy => 'Privatumo politika';

  @override
  String backupShareSubject(String appName) {
    return '„$appName“ atsarginė kopija';
  }

  @override
  String versionLabelLoading(String appName) {
    return '„$appName“ …';
  }

  @override
  String get emptyNothingYetTitle => 'Čia dar nieko nėra';

  @override
  String get emptyNothingYetMessage =>
      'Fiksuokite, kada ką nors darėte paskutinį kartą — palaistėte augalus, nuplovėte automobilį, paskambinote šeimai.';

  @override
  String get addActivity => 'Pridėti veiklą';

  @override
  String get addActivityFab => 'Pridėti veiklą';

  @override
  String get noMatches => 'Atitikmenų nerasta';

  @override
  String get noMatchesFilter =>
      'Nėra veiklų, atitinkančių jūsų paiešką ar filtrą.';

  @override
  String get nothingToShow => 'Šiuo metu nėra ką rodyti.';

  @override
  String get clearFilters => 'Išvalyti filtrus';

  @override
  String errorWithDetails(String error) {
    return 'Klaida: $error';
  }

  @override
  String get deleteActivityTitle => 'Ištrinti veiklą?';

  @override
  String deleteActivityMessage(String title) {
    return 'Ištrinti „$title“ ir visą istoriją?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return 'Ištrinti „$title“ ir visą jos istoriją? Šio veiksmo negalima anuliuoti.';
  }

  @override
  String deletedActivity(String title) {
    return 'Ištrinta „$title“';
  }

  @override
  String loggedNow(String title) {
    return 'Užregistruota „$title“ ką tik';
  }

  @override
  String get searchHint => 'Ieškoti veiklų...';

  @override
  String sortTooltip(String sort) {
    return 'Rūšiuoti: $sort';
  }

  @override
  String get sortRecentlyDone => 'Paskutiniai atlikti';

  @override
  String get sortOverdueFirst => 'Pirmiausia vėluojantys';

  @override
  String get sortAlphabetical => 'A–Ž';

  @override
  String get categoryAll => 'Visi';

  @override
  String get editActivity => 'Redaguoti veiklą';

  @override
  String get newActivity => 'Nauja veikla';

  @override
  String get titleLabel => 'Pavadinimas *';

  @override
  String get titleHint => 'pvz., Palaistyti augalus';

  @override
  String get titleRequired => 'Pavadinimas yra privalomas';

  @override
  String get categoryLabel => 'Kategorija';

  @override
  String get categoryHint => 'Namai, Automobilis, Asmeniniai...';

  @override
  String get notes => 'Pastabos';

  @override
  String get dueInterval => 'Termino intervalas';

  @override
  String get markDueEveryXDays => 'Nustatyti terminą kas X d.';

  @override
  String get dueIntervalSubtitle => 'Rodo būseną „Artėja terminas“ / „Vėluoja“';

  @override
  String get frequencyPreset => 'Dažnumo šablonas';

  @override
  String get daysUntilDue => 'Dienos iki termino';

  @override
  String get daysSuffix => 'd.';

  @override
  String fixedByPreset(String preset) {
    return 'Fiksuota pagal šabloną: $preset';
  }

  @override
  String get invalidDays => 'Įveskite galiojantį dienų skaičių';

  @override
  String get saveChanges => 'Išsaugoti pakeitimus';

  @override
  String get createActivity => 'Sukurti veiklą';

  @override
  String get reminderNone => 'Nėra';

  @override
  String get reminderDaily => 'Kasdien';

  @override
  String get reminderWeekly => 'Kas savaitę';

  @override
  String get reminderMonthly => 'Kas mėnesį';

  @override
  String get reminderCustom => 'Pasirinktinis';

  @override
  String get statusNeverLogged => 'Niekada neregistruota';

  @override
  String get statusLogged => 'Užregistruota';

  @override
  String get statusRecent => 'Neseniai';

  @override
  String get statusDueSoon => 'Artėja terminas';

  @override
  String get statusOverdue => 'Vėluoja';

  @override
  String get editEntry => 'Redaguoti įrašą';

  @override
  String get addEntry => 'Pridėti įrašą';

  @override
  String get date => 'Data';

  @override
  String get time => 'Laikas';

  @override
  String get noteOptional => 'Pastaba (neprivaloma)';

  @override
  String get saveEntry => 'Išsaugoti įrašą';

  @override
  String get activityNotFound => 'Veikla nerasta';

  @override
  String get history => 'Istorija';

  @override
  String get noLogsYet => 'Įrašų dar nėra';

  @override
  String get logNow => 'Registruoti dabar';

  @override
  String get addCustomEntry => 'Pridėti pasirinktinį įrašą';

  @override
  String get lastDone => 'Paskutinį kartą atlikta';

  @override
  String get nextDue => 'Kitas terminas';

  @override
  String get deleteEntryTitle => 'Ištrinti įrašą?';

  @override
  String get deleteEntryMessage => 'Visam laikui pašalinti šį įrašą?';

  @override
  String get categoriesTitle => 'Kategorijos';

  @override
  String get noCategoriesYet =>
      'Kategorijų dar nėra. Norėdami sukurti, bakstelėkite „Pridėti“.';

  @override
  String get deleteCategoryTitle => 'Ištrinti kategoriją?';

  @override
  String deleteCategoryMessage(String name) {
    return 'Pašalinti „$name“ iš pasiūlymų? Veiklos, kuriose ji naudojama, išlaikys savo kategoriją.';
  }

  @override
  String get newCategory => 'Nauja kategorija';

  @override
  String get categoryHintExample => 'pvz., Sportas';

  @override
  String get categoryAlreadyExists => 'Kategorija jau yra';

  @override
  String get renameCategory => 'Pervadinti kategoriją';

  @override
  String get backupExported => 'Atsarginė kopija sėkmingai eksportuota';

  @override
  String exportFailed(String error) {
    return 'Eksportuoti nepavyko: $error';
  }

  @override
  String get importBackupTitle => 'Importuoti atsarginę kopiją';

  @override
  String get importBackupMessage =>
      'Sujungti importuotus duomenis su esamomis veiklomis? Pasirinkite „Atšaukti“, tada importuokite iš naujo, kad pakeistumėte visus duomenis.';

  @override
  String get replaceAllDataTitle => 'Pakeisti visus duomenis?';

  @override
  String get replaceAllDataMessage =>
      'Prieš importuojant bus ištrintos visos esamos veiklos ir įrašai.';

  @override
  String get replaceAll => 'Pakeisti viską';

  @override
  String importedCounts(int activities, int occurrences) {
    return 'Importuota $activities veiklų ir $occurrences įrašų';
  }

  @override
  String importFailed(String error) {
    return 'Importuoti nepavyko: $error';
  }

  @override
  String get insightsEmpty =>
      'Duomenų dar nėra. Užregistruokite keletą veiklų!';

  @override
  String get activityBreakdown => 'Veiklų apžvalga';

  @override
  String get overview => 'Bendra apžvalga';

  @override
  String get statActivities => 'Veiklos';

  @override
  String get statTotalLogs => 'Iš viso įrašų';

  @override
  String mostOverdue(String title) {
    return 'Labiausiai vėluoja: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'Laikas tarp įrašų — $title';
  }

  @override
  String get intervalsCaption =>
      'Kiekviena juostelė rodo, kiek dienų laukėte prieš vėl registruodami (naujausi pirma).';

  @override
  String get latestGap => 'Paskutinis intervalas';

  @override
  String get average => 'Vidurkis';

  @override
  String get reminder => 'Priminimas';

  @override
  String daysValue(String days) {
    return '$days d.';
  }

  @override
  String get needTwoLogs => 'Reikia bent 2 įrašų, kad būtų rodomi intervalai';

  @override
  String get daysBetweenLogs => 'Dienos tarp įrašų';

  @override
  String get reminderTarget => 'Priminimo tikslas';

  @override
  String averageDaysShort(String days) {
    return 'Vid. $days d.';
  }

  @override
  String reminderDaysShort(String days) {
    return 'Priminimas $days d.';
  }

  @override
  String gapNumber(int number) {
    return '$number intervalas';
  }

  @override
  String get latest => 'Naujausias';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count įrašai',
      one: '1 įrašas',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count įrašai',
      one: '1 įrašas',
    );
    return '$_temp0 • vid. $avg d.';
  }

  @override
  String tooltipDays(String days) {
    return '$days d.';
  }

  @override
  String aboutBody(String appName) {
    return '„$appName“ yra paprasta, neprisijungus veikianti programėlė, padedanti sekti, kada ką nors darėte paskutinį kartą — laistėte augalus, plovėte automobilį, skambinote artimiesiems ir kt.';
  }

  @override
  String get aboutTagline =>
      'Jokių privalomų serijų. Jokio spaudimo. Tik aiškus atsakymas į klausimą: „Kada paskutinį kartą tai dariau?“';

  @override
  String get features => 'Funkcijos';

  @override
  String get featureTrack =>
      'Neribotas veiklų sekimas su pasirinktiniais terminų intervalais';

  @override
  String get featureElapsed =>
      'Praėjęs laikas nuo paskutinio atlikimo su būsenomis: Neseniai / Artėja terminas / Vėluoja';

  @override
  String get featureCategories =>
      'Tvarkymas naudojant pasirinktines kategorijas';

  @override
  String get featureHistory =>
      'Išsami istorija su galimybe pridėti įrašus atgaline data';

  @override
  String get featureInsights =>
      'Įžvalgos su vidutiniais intervalais ir diagramomis';

  @override
  String get featureThemes =>
      'Šviesi ir tamsi temos (prisitaiko prie sistemos)';

  @override
  String get featureBackup =>
      'Atsarginių kopijų eksportas ir importas JSON formatu';

  @override
  String get featureOffline =>
      '100% neprisijungus — jūsų duomenys lieka jūsų įrenginyje';

  @override
  String get privacyUnableToLoad =>
      'Nepavyko įkelti privatumo politikos. Galite ją peržiūrėti internete.';

  @override
  String get openOnline => 'Atidaryti internete';

  @override
  String get couldNotOpenPrivacyUrl =>
      'Nepavyko atidaryti privatumo politikos nuorodos';

  @override
  String get analyticsConsentTitle => 'Padėti tobulinti „RememberLast“?';

  @override
  String get analyticsConsentBody =>
      'Galite pasirinktinai dalytis anonimine naudojimo statistika per „Mixpanel“ (pvz., kuriuose ekranuose lankotės ir kada registruojate veiklas). Mes niekada nerenkame veiklų pavadinimų, pastabų ar kito asmeninio turinio. Tai galite bet kada pakeisti nustatymuose.';

  @override
  String get decline => 'Atsisakyti';

  @override
  String get accept => 'Sutikti';

  @override
  String get couldNotShareApp => 'Nepavyko pasidalyti programėle';

  @override
  String get couldNotOpenAppStore =>
      'Nepavyko atidaryti programėlių parduotuvės';

  @override
  String get couldNotOpenEmail => 'Nepavyko atidaryti el. pašto programos';

  @override
  String get couldNotOpenDeveloperPage => 'Nepavyko atidaryti kūrėjo puslapio';

  @override
  String get justNow => 'Ką tik';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'prieš $count m.',
      one: 'prieš 1 metus',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'prieš $count mėn.',
      one: 'prieš 1 mėnesį',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'prieš $count d.',
      one: 'prieš 1 dieną',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'prieš $count val.',
      one: 'prieš 1 valandą',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'prieš $count min.',
      one: 'prieš 1 minutę',
    );
    return '$_temp0';
  }
}
