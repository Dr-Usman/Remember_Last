// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get cancel => 'Anulează';

  @override
  String get delete => 'Șterge';

  @override
  String get save => 'Salvează';

  @override
  String get add => 'Adaugă';

  @override
  String get edit => 'Editează';

  @override
  String get rename => 'Redenumește';

  @override
  String get merge => 'Unește';

  @override
  String get settings => 'Setări';

  @override
  String get insights => 'Statistici';

  @override
  String get about => 'Despre';

  @override
  String get appearance => 'Aspect';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Luminos';

  @override
  String get themeDark => 'Întunecat';

  @override
  String get language => 'Limbă';

  @override
  String get languageSystemDefault => 'Implicit sistem';

  @override
  String get organize => 'Organizează';

  @override
  String get manageCategories => 'Gestionează categoriile';

  @override
  String get manageCategoriesSubtitle =>
      'Adaugă sau elimină categorii de activități';

  @override
  String get data => 'Date';

  @override
  String get exportBackup => 'Exportă copia de rezervă';

  @override
  String get exportBackupSubtitle => 'Salvează datele ca JSON';

  @override
  String get importBackup => 'Importă copia de rezervă';

  @override
  String get importBackupSubtitle => 'Restaurează dintr-un fișier JSON';

  @override
  String get privacy => 'Confidențialitate';

  @override
  String get usageAnalytics => 'Analize de utilizare';

  @override
  String get usageAnalyticsSubtitle =>
      'Partajează utilizarea anonimă a ecranelor și funcțiilor prin Mixpanel';

  @override
  String aboutApp(String appName) {
    return 'Despre $appName';
  }

  @override
  String get shareApp => 'Distribuie aplicația';

  @override
  String shareAppSubtitle(String appName) {
    return 'Spune-le prietenilor despre $appName';
  }

  @override
  String get rateApp => 'Evaluează aplicația';

  @override
  String get rateAppSubtitle => 'Lasă o recenzie în magazinul de aplicații';

  @override
  String get contactUs => 'Contactează-ne';

  @override
  String get contactUsSubtitle => 'Trimite feedback sau raportează o eroare';

  @override
  String get moreApps => 'Mai multe aplicații';

  @override
  String get moreAppsSubtitle => 'Alte aplicații ale dezvoltatorului';

  @override
  String get privacyPolicy => 'Politica de confidențialitate';

  @override
  String backupShareSubject(String appName) {
    return 'Copie de rezervă $appName';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'Nimic aici încă';

  @override
  String get emptyNothingYetMessage =>
      'Notează când ai făcut ultima dată ceva — udat plantele, spălat mașina, sunat familia.';

  @override
  String get addActivity => 'Adaugă activitate';

  @override
  String get addActivityFab => 'Adaugă activitate';

  @override
  String get noMatches => 'Nicio potrivire';

  @override
  String get noMatchesFilter =>
      'Nicio activitate nu corespunde căutării sau filtrului.';

  @override
  String get nothingToShow => 'Nimic de afișat momentan.';

  @override
  String get clearFilters => 'Șterge filtrele';

  @override
  String errorWithDetails(String error) {
    return 'Eroare: $error';
  }

  @override
  String get deleteActivityTitle => 'Ștergi activitatea?';

  @override
  String deleteActivityMessage(String title) {
    return 'Ștergi „$title” și tot istoricul?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return 'Ștergi „$title” și tot istoricul? Această acțiune nu poate fi anulată.';
  }

  @override
  String deletedActivity(String title) {
    return '„$title” a fost ștearsă';
  }

  @override
  String loggedNow(String title) {
    return '„$title” înregistrată acum';
  }

  @override
  String get searchHint => 'Caută activități...';

  @override
  String sortTooltip(String sort) {
    return 'Sortare: $sort';
  }

  @override
  String get sortRecentlyDone => 'Făcute recent';

  @override
  String get sortOverdueFirst => 'Întârziate primele';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'Toate';

  @override
  String get editActivity => 'Editează activitatea';

  @override
  String get newActivity => 'Activitate nouă';

  @override
  String get titleLabel => 'Titlu *';

  @override
  String get titleHint => 'ex. Udă plantele';

  @override
  String get titleRequired => 'Titlul este obligatoriu';

  @override
  String get categoryLabel => 'Categorie';

  @override
  String get categoryHint => 'Casă, Vehicul, Personal...';

  @override
  String get notes => 'Note';

  @override
  String get dueInterval => 'Interval de scadență';

  @override
  String get markDueEveryXDays => 'Marchează scadent la fiecare X zile';

  @override
  String get dueIntervalSubtitle => 'Afișează starea în curând / întârziat';

  @override
  String get frequencyPreset => 'Presetare de frecvență';

  @override
  String get daysUntilDue => 'Zile până la scadență';

  @override
  String get daysSuffix => 'zile';

  @override
  String fixedByPreset(String preset) {
    return 'Fixat de presetarea $preset';
  }

  @override
  String get invalidDays => 'Introdu un număr valid de zile';

  @override
  String get saveChanges => 'Salvează modificările';

  @override
  String get createActivity => 'Creează activitate';

  @override
  String get reminderNone => 'Niciuna';

  @override
  String get reminderDaily => 'Zilnic';

  @override
  String get reminderWeekly => 'Săptămânal';

  @override
  String get reminderMonthly => 'Lunar';

  @override
  String get reminderCustom => 'Personalizat';

  @override
  String get statusNeverLogged => 'Niciodată înregistrată';

  @override
  String get statusLogged => 'Înregistrată';

  @override
  String get statusRecent => 'Recent';

  @override
  String get statusDueSoon => 'În curând';

  @override
  String get statusOverdue => 'Întârziat';

  @override
  String get editEntry => 'Editează înregistrarea';

  @override
  String get addEntry => 'Adaugă înregistrare';

  @override
  String get date => 'Dată';

  @override
  String get time => 'Oră';

  @override
  String get noteOptional => 'Notă (opțional)';

  @override
  String get saveEntry => 'Salvează înregistrarea';

  @override
  String get activityNotFound => 'Activitatea nu a fost găsită';

  @override
  String get history => 'Istoric';

  @override
  String get noLogsYet => 'Nicio înregistrare încă';

  @override
  String get logNow => 'Înregistrează acum';

  @override
  String get addCustomEntry => 'Adaugă înregistrare personalizată';

  @override
  String get lastDone => 'Ultima dată';

  @override
  String get nextDue => 'Următoarea scadență';

  @override
  String get deleteEntryTitle => 'Ștergi înregistrarea?';

  @override
  String get deleteEntryMessage => 'Elimini definitiv această înregistrare?';

  @override
  String get categoriesTitle => 'Categorii';

  @override
  String get noCategoriesYet =>
      'Nicio categorie încă. Atinge Adaugă pentru a crea una.';

  @override
  String get deleteCategoryTitle => 'Ștergi categoria?';

  @override
  String deleteCategoryMessage(String name) {
    return 'Elimini „$name” din sugestii? Activitățile care o folosesc își păstrează categoria.';
  }

  @override
  String get newCategory => 'Categorie nouă';

  @override
  String get categoryHintExample => 'ex. Fitness';

  @override
  String get categoryAlreadyExists => 'Categoria există deja';

  @override
  String get renameCategory => 'Redenumește categoria';

  @override
  String get backupExported => 'Copia de rezervă a fost exportată cu succes';

  @override
  String exportFailed(String error) {
    return 'Exportul a eșuat: $error';
  }

  @override
  String get importBackupTitle => 'Importă copia de rezervă';

  @override
  String get importBackupMessage =>
      'Unești datele importate cu activitățile existente? Alege Anulează și apoi reimportă pentru a înlocui toate datele.';

  @override
  String get replaceAllDataTitle => 'Înlocuiești toate datele?';

  @override
  String get replaceAllDataMessage =>
      'Se vor șterge toate activitățile și aparițiile existente înainte de import.';

  @override
  String get replaceAll => 'Înlocuiește tot';

  @override
  String importedCounts(int activities, int occurrences) {
    return 'Importate $activities activități și $occurrences înregistrări';
  }

  @override
  String importFailed(String error) {
    return 'Importul a eșuat: $error';
  }

  @override
  String get insightsEmpty =>
      'Nicio dată încă. Înregistrează câteva activități!';

  @override
  String get activityBreakdown => 'Defalcarea activităților';

  @override
  String get overview => 'Prezentare generală';

  @override
  String get statActivities => 'Activități';

  @override
  String get statTotalLogs => 'Total înregistrări';

  @override
  String mostOverdue(String title) {
    return 'Cel mai întârziat: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'Timp între înregistrări — $title';
  }

  @override
  String get intervalsCaption =>
      'Fiecare bară arată câte zile ai așteptat înainte de a înregistra din nou (cele mai noi primele).';

  @override
  String get latestGap => 'Ultimul interval';

  @override
  String get average => 'Medie';

  @override
  String get reminder => 'Memento';

  @override
  String daysValue(String days) {
    return '$days zile';
  }

  @override
  String get needTwoLogs =>
      'Sunt necesare cel puțin 2 înregistrări pentru a arăta intervalele';

  @override
  String get daysBetweenLogs => 'Zile între înregistrări';

  @override
  String get reminderTarget => 'Țintă memento';

  @override
  String averageDaysShort(String days) {
    return 'Medie ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return 'Memento ${days}d';
  }

  @override
  String gapNumber(int number) {
    return 'Interval $number';
  }

  @override
  String get latest => 'Cel mai recent';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count înregistrări',
      one: '1 înregistrare',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count înregistrări',
      one: '1 înregistrare',
    );
    return '$_temp0 • medie $avg zile';
  }

  @override
  String tooltipDays(String days) {
    return '$days zile';
  }

  @override
  String aboutBody(String appName) {
    return '$appName este o aplicație simplă, offline-first, care te ajută să ții evidența când ai făcut ultima dată ceva — udat plantele, spălat mașina, sunat familia și altele.';
  }

  @override
  String get aboutTagline =>
      'Fără serii. Fără presiune. Doar un răspuns clar la „când am făcut ultima dată asta?”';

  @override
  String get features => 'Funcții';

  @override
  String get featureTrack =>
      'Urmărește activități nelimitate cu intervale de scadență opționale';

  @override
  String get featureElapsed =>
      'Vezi timpul scurs de la ultima dată, cu starea Recent / În curând / Întârziat';

  @override
  String get featureCategories => 'Organizează cu categorii personalizate';

  @override
  String get featureHistory => 'Istoric complet cu înregistrări antedatate';

  @override
  String get featureInsights => 'Statistici cu intervale medii și diagrame';

  @override
  String get featureThemes =>
      'Teme de brand deschise și întunecate (urmează sistemul)';

  @override
  String get featureBackup => 'Copie de rezervă prin export/import JSON';

  @override
  String get featureOffline => '100% offline — datele rămân pe dispozitiv';

  @override
  String get privacyUnableToLoad =>
      'Politica de confidențialitate nu a putut fi încărcată. O poți vizualiza online.';

  @override
  String get openOnline => 'Deschide online';

  @override
  String get couldNotOpenPrivacyUrl =>
      'URL-ul politicii de confidențialitate nu a putut fi deschis';

  @override
  String get analyticsConsentTitle => 'Ajuți la îmbunătățirea RememberLast?';

  @override
  String get analyticsConsentBody =>
      'Poți partaja opțional analize anonime de utilizare cu Mixpanel (de exemplu ce ecrane vizitezi și când înregistrezi activități). Nu trimitem niciodată titlurile activităților, notele sau alt conținut personal. Poți schimba oricând acest lucru în Setări.';

  @override
  String get decline => 'Refuz';

  @override
  String get accept => 'Accept';

  @override
  String get couldNotShareApp => 'Aplicația nu a putut fi partajată';

  @override
  String get couldNotOpenAppStore =>
      'Magazinul de aplicații nu a putut fi deschis';

  @override
  String get couldNotOpenEmail => 'Aplicația de e-mail nu a putut fi deschisă';

  @override
  String get couldNotOpenDeveloperPage =>
      'Pagina dezvoltatorului nu a putut fi deschisă';

  @override
  String get justNow => 'Chiar acum';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ani în urmă',
      one: '1 an în urmă',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count luni în urmă',
      one: '1 lună în urmă',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zile în urmă',
      one: '1 zi în urmă',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ore în urmă',
      one: '1 oră în urmă',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minute în urmă',
      one: '1 minut în urmă',
    );
    return '$_temp0';
  }
}
