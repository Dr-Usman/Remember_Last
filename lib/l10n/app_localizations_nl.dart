// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get cancel => 'Annuleren';

  @override
  String get delete => 'Verwijderen';

  @override
  String get save => 'Opslaan';

  @override
  String get add => 'Toevoegen';

  @override
  String get edit => 'Bewerken';

  @override
  String get rename => 'Hernoemen';

  @override
  String get merge => 'Samenvoegen';

  @override
  String get settings => 'Instellingen';

  @override
  String get insights => 'Inzichten';

  @override
  String get about => 'Over';

  @override
  String get appearance => 'Weergave';

  @override
  String get themeSystem => 'Systeem';

  @override
  String get themeLight => 'Licht';

  @override
  String get themeDark => 'Donker';

  @override
  String get language => 'Taal';

  @override
  String get languageSystemDefault => 'Systeemstandaard';

  @override
  String get organize => 'Organiseren';

  @override
  String get manageCategories => 'Categorieën beheren';

  @override
  String get manageCategoriesSubtitle =>
      'Activiteitscategorieën toevoegen of verwijderen';

  @override
  String get data => 'Gegevens';

  @override
  String get exportBackup => 'Back-up exporteren';

  @override
  String get exportBackupSubtitle => 'Sla je gegevens op als JSON';

  @override
  String get importBackup => 'Back-up importeren';

  @override
  String get importBackupSubtitle => 'Herstellen vanuit een JSON-bestand';

  @override
  String get privacy => 'Privacy';

  @override
  String get usageAnalytics => 'Gebruiksanalyse';

  @override
  String get usageAnalyticsSubtitle =>
      'Deel anoniem scherm- en functiegebruik via Mixpanel';

  @override
  String aboutApp(String appName) {
    return 'Over $appName';
  }

  @override
  String get shareApp => 'App delen';

  @override
  String shareAppSubtitle(String appName) {
    return 'Vertel vrienden over $appName';
  }

  @override
  String get rateApp => 'App beoordelen';

  @override
  String get rateAppSubtitle => 'Laat een recensie achter in de app store';

  @override
  String get contactUs => 'Contact';

  @override
  String get contactUsSubtitle => 'Feedback sturen of een bug melden';

  @override
  String get moreApps => 'Meer apps';

  @override
  String get moreAppsSubtitle => 'Andere apps van de ontwikkelaar';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String backupShareSubject(String appName) {
    return '$appName-back-up';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'Nog niets hier';

  @override
  String get emptyNothingYetMessage =>
      'Houd bij wanneer je iets voor het laatst deed — planten water geven, auto wassen, familie bellen.';

  @override
  String get addActivity => 'Activiteit toevoegen';

  @override
  String get addActivityFab => 'Activiteit toevoegen';

  @override
  String get noMatches => 'Geen overeenkomsten';

  @override
  String get noMatchesFilter =>
      'Geen activiteiten komen overeen met je zoekopdracht of filter.';

  @override
  String get nothingToShow => 'Momenteel niets om te tonen.';

  @override
  String get clearFilters => 'Filters wissen';

  @override
  String errorWithDetails(String error) {
    return 'Fout: $error';
  }

  @override
  String get deleteActivityTitle => 'Activiteit verwijderen?';

  @override
  String deleteActivityMessage(String title) {
    return '\"$title\" en alle geschiedenis verwijderen?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return '\"$title\" en alle geschiedenis verwijderen? Dit kan niet ongedaan worden gemaakt.';
  }

  @override
  String deletedActivity(String title) {
    return '\"$title\" verwijderd';
  }

  @override
  String loggedNow(String title) {
    return '\"$title\" nu gelogd';
  }

  @override
  String get searchHint => 'Activiteiten zoeken...';

  @override
  String sortTooltip(String sort) {
    return 'Sorteren: $sort';
  }

  @override
  String get sortRecentlyDone => 'Recent gedaan';

  @override
  String get sortOverdueFirst => 'Achterstallig eerst';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'Alle';

  @override
  String get editActivity => 'Activiteit bewerken';

  @override
  String get newActivity => 'Nieuwe activiteit';

  @override
  String get titleLabel => 'Titel *';

  @override
  String get titleHint => 'bijv. Planten water geven';

  @override
  String get titleRequired => 'Titel is verplicht';

  @override
  String get categoryLabel => 'Categorie';

  @override
  String get categoryHint => 'Thuis, Voertuig, Persoonlijk...';

  @override
  String get notes => 'Notities';

  @override
  String get dueInterval => 'Vervalinterval';

  @override
  String get markDueEveryXDays => 'Markeer als vervallen elke X dagen';

  @override
  String get dueIntervalSubtitle => 'Toont status binnenkort / achterstallig';

  @override
  String get frequencyPreset => 'Frequentievoorinstelling';

  @override
  String get daysUntilDue => 'Dagen tot vervaldatum';

  @override
  String get daysSuffix => 'dagen';

  @override
  String fixedByPreset(String preset) {
    return 'Vastgezet door voorinstelling $preset';
  }

  @override
  String get invalidDays => 'Voer een geldig aantal dagen in';

  @override
  String get saveChanges => 'Wijzigingen opslaan';

  @override
  String get createActivity => 'Activiteit maken';

  @override
  String get reminderNone => 'Geen';

  @override
  String get reminderDaily => 'Dagelijks';

  @override
  String get reminderWeekly => 'Wekelijks';

  @override
  String get reminderMonthly => 'Maandelijks';

  @override
  String get reminderCustom => 'Aangepast';

  @override
  String get statusNeverLogged => 'Nooit gelogd';

  @override
  String get statusLogged => 'Gelogd';

  @override
  String get statusRecent => 'Recent';

  @override
  String get statusDueSoon => 'Binnenkort';

  @override
  String get statusOverdue => 'Achterstallig';

  @override
  String get editEntry => 'Item bewerken';

  @override
  String get addEntry => 'Item toevoegen';

  @override
  String get date => 'Datum';

  @override
  String get time => 'Tijd';

  @override
  String get noteOptional => 'Notitie (optioneel)';

  @override
  String get saveEntry => 'Item opslaan';

  @override
  String get activityNotFound => 'Activiteit niet gevonden';

  @override
  String get history => 'Geschiedenis';

  @override
  String get noLogsYet => 'Nog geen logs';

  @override
  String get logNow => 'Nu loggen';

  @override
  String get addCustomEntry => 'Aangepast item toevoegen';

  @override
  String get lastDone => 'Laatst gedaan';

  @override
  String get nextDue => 'Volgende vervaldatum';

  @override
  String get deleteEntryTitle => 'Item verwijderen?';

  @override
  String get deleteEntryMessage => 'Dit logitem permanent verwijderen?';

  @override
  String get categoriesTitle => 'Categorieën';

  @override
  String get noCategoriesYet =>
      'Nog geen categorieën. Tik op Toevoegen om er een te maken.';

  @override
  String get deleteCategoryTitle => 'Categorie verwijderen?';

  @override
  String deleteCategoryMessage(String name) {
    return '\"$name\" uit suggesties verwijderen? Activiteiten die deze gebruiken behouden hun categorie.';
  }

  @override
  String get newCategory => 'Nieuwe categorie';

  @override
  String get categoryHintExample => 'bijv. Fitness';

  @override
  String get categoryAlreadyExists => 'Categorie bestaat al';

  @override
  String get renameCategory => 'Categorie hernoemen';

  @override
  String get backupExported => 'Back-up succesvol geëxporteerd';

  @override
  String exportFailed(String error) {
    return 'Exporteren mislukt: $error';
  }

  @override
  String get importBackupTitle => 'Back-up importeren';

  @override
  String get importBackupMessage =>
      'Geïmporteerde gegevens samenvoegen met bestaande activiteiten? Kies Annuleren en importeer opnieuw om alle gegevens te vervangen.';

  @override
  String get replaceAllDataTitle => 'Alle gegevens vervangen?';

  @override
  String get replaceAllDataMessage =>
      'Dit verwijdert alle bestaande activiteiten en gebeurtenissen vóór het importeren.';

  @override
  String get replaceAll => 'Alles vervangen';

  @override
  String importedCounts(int activities, int occurrences) {
    return '$activities activiteiten en $occurrences logs geïmporteerd';
  }

  @override
  String importFailed(String error) {
    return 'Importeren mislukt: $error';
  }

  @override
  String get insightsEmpty => 'Nog geen gegevens. Log wat activiteiten!';

  @override
  String get activityBreakdown => 'Activiteitsverdeling';

  @override
  String get overview => 'Overzicht';

  @override
  String get statActivities => 'Activiteiten';

  @override
  String get statTotalLogs => 'Totaal logs';

  @override
  String mostOverdue(String title) {
    return 'Meest achterstallig: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'Tijd tussen logs — $title';
  }

  @override
  String get intervalsCaption =>
      'Elke staaf is hoeveel dagen je wachtte voordat je opnieuw logde (nieuwste eerst).';

  @override
  String get latestGap => 'Laatste gat';

  @override
  String get average => 'Gemiddelde';

  @override
  String get reminder => 'Herinnering';

  @override
  String daysValue(String days) {
    return '$days dagen';
  }

  @override
  String get needTwoLogs =>
      'Minimaal 2 logs nodig om gaten tussen items te tonen';

  @override
  String get daysBetweenLogs => 'Dagen tussen logs';

  @override
  String get reminderTarget => 'Herinneringsdoel';

  @override
  String averageDaysShort(String days) {
    return 'Gem. ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return 'Herinnering ${days}d';
  }

  @override
  String gapNumber(int number) {
    return 'Gat $number';
  }

  @override
  String get latest => 'Nieuwste';

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
    return '$_temp0 • gem. $avg dagen';
  }

  @override
  String tooltipDays(String days) {
    return '$days dagen';
  }

  @override
  String aboutBody(String appName) {
    return '$appName is een eenvoudige, offline-eerst app die je helpt bijhouden wanneer je iets voor het laatst deed — planten water geven, auto wassen, familie bellen en meer.';
  }

  @override
  String get aboutTagline =>
      'Geen reeksen. Geen druk. Alleen een duidelijk antwoord op \"wanneer deed ik dat voor het laatst?\"';

  @override
  String get features => 'Functies';

  @override
  String get featureTrack =>
      'Onbeperkt activiteiten bijhouden met optionele vervalintervallen';

  @override
  String get featureElapsed =>
      'Zie de verstreken tijd sinds de laatste keer, met status Recent / Binnenkort / Achterstallig';

  @override
  String get featureCategories => 'Organiseer met eigen categorieën';

  @override
  String get featureHistory =>
      'Volledige geschiedenis met aangepaste terug gedateerde items';

  @override
  String get featureInsights =>
      'Inzichten met gemiddelde intervallen en grafieken';

  @override
  String get featureThemes => 'Lichte en donkere merkthema\'s (volgt systeem)';

  @override
  String get featureBackup => 'JSON-export/importback-up';

  @override
  String get featureOffline =>
      '100% offline — je gegevens blijven op je apparaat';

  @override
  String get privacyUnableToLoad =>
      'Kan het privacybeleid niet laden. Je kunt het online bekijken.';

  @override
  String get openOnline => 'Online openen';

  @override
  String get couldNotOpenPrivacyUrl =>
      'Kon de URL van het privacybeleid niet openen';

  @override
  String get analyticsConsentTitle => 'Helpen RememberLast te verbeteren?';

  @override
  String get analyticsConsentBody =>
      'Je kunt optioneel anonieme gebruiksanalyses delen met Mixpanel (zoals welke schermen je bezoekt en wanneer je activiteiten logt). We sturen nooit je activiteitstitels, notities of andere persoonlijke inhoud. Je kunt dit altijd wijzigen in Instellingen.';

  @override
  String get decline => 'Weigeren';

  @override
  String get accept => 'Accepteren';

  @override
  String get couldNotShareApp => 'Kon app niet delen';

  @override
  String get couldNotOpenAppStore => 'Kon app store niet openen';

  @override
  String get couldNotOpenEmail => 'Kon e-mailapp niet openen';

  @override
  String get couldNotOpenDeveloperPage => 'Kon ontwikkelaarspagina niet openen';

  @override
  String get justNow => 'Zojuist';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jaar geleden',
      one: '1 jaar geleden',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count maanden geleden',
      one: '1 maand geleden',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagen geleden',
      one: '1 dag geleden',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uur geleden',
      one: '1 uur geleden',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuten geleden',
      one: '1 minuut geleden',
    );
    return '$_temp0';
  }
}
