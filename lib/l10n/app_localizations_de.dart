// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get cancel => 'Abbrechen';

  @override
  String get delete => 'Löschen';

  @override
  String get save => 'Speichern';

  @override
  String get add => 'Hinzufügen';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get rename => 'Umbenennen';

  @override
  String get merge => 'Zusammenführen';

  @override
  String get settings => 'Einstellungen';

  @override
  String get insights => 'Einblicke';

  @override
  String get about => 'Info';

  @override
  String get appearance => 'Erscheinungsbild';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Hell';

  @override
  String get themeDark => 'Dunkel';

  @override
  String get language => 'Sprache';

  @override
  String get languageSystemDefault => 'Systemstandard';

  @override
  String get organize => 'Organisieren';

  @override
  String get manageCategories => 'Kategorien verwalten';

  @override
  String get manageCategoriesSubtitle =>
      'Aktivitätskategorien hinzufügen oder entfernen';

  @override
  String get data => 'Daten';

  @override
  String get exportBackup => 'Backup exportieren';

  @override
  String get exportBackupSubtitle => 'Daten als JSON speichern';

  @override
  String get importBackup => 'Backup importieren';

  @override
  String get importBackupSubtitle => 'Aus einer JSON-Datei wiederherstellen';

  @override
  String get privacy => 'Datenschutz';

  @override
  String get usageAnalytics => 'Nutzungsanalysen';

  @override
  String get usageAnalyticsSubtitle =>
      'Anonyme Bildschirm- und Funktionsnutzung über Mixpanel teilen';

  @override
  String aboutApp(String appName) {
    return 'Über $appName';
  }

  @override
  String get shareApp => 'App teilen';

  @override
  String shareAppSubtitle(String appName) {
    return 'Freunden von $appName erzählen';
  }

  @override
  String get rateApp => 'App bewerten';

  @override
  String get rateAppSubtitle => 'Eine Bewertung im App Store hinterlassen';

  @override
  String get contactUs => 'Kontakt';

  @override
  String get contactUsSubtitle => 'Feedback senden oder einen Fehler melden';

  @override
  String get moreApps => 'Mehr Apps';

  @override
  String get moreAppsSubtitle => 'Weitere Apps des Entwicklers';

  @override
  String get privacyPolicy => 'Datenschutzerklärung';

  @override
  String backupShareSubject(String appName) {
    return '$appName Backup';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'Noch nichts hier';

  @override
  String get emptyNothingYetMessage =>
      'Halte fest, wann du etwas zuletzt getan hast — Pflanzen gießen, Auto waschen, Familie anrufen.';

  @override
  String get addActivity => 'Aktivität hinzufügen';

  @override
  String get addActivityFab => 'Aktivität hinzufügen';

  @override
  String get noMatches => 'Keine Treffer';

  @override
  String get noMatchesFilter =>
      'Keine Aktivitäten passen zu deiner Suche oder dem Filter.';

  @override
  String get nothingToShow => 'Derzeit nichts anzuzeigen.';

  @override
  String get clearFilters => 'Filter zurücksetzen';

  @override
  String errorWithDetails(String error) {
    return 'Fehler: $error';
  }

  @override
  String get deleteActivityTitle => 'Aktivität löschen?';

  @override
  String deleteActivityMessage(String title) {
    return '„$title“ und den gesamten Verlauf löschen?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return '„$title“ und den gesamten Verlauf löschen? Dies kann nicht rückgängig gemacht werden.';
  }

  @override
  String deletedActivity(String title) {
    return '„$title“ gelöscht';
  }

  @override
  String loggedNow(String title) {
    return '„$title“ jetzt protokolliert';
  }

  @override
  String get searchHint => 'Aktivitäten suchen...';

  @override
  String sortTooltip(String sort) {
    return 'Sortierung: $sort';
  }

  @override
  String get sortRecentlyDone => 'Zuletzt erledigt';

  @override
  String get sortOverdueFirst => 'Überfällig zuerst';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'Alle';

  @override
  String get editActivity => 'Aktivität bearbeiten';

  @override
  String get newActivity => 'Neue Aktivität';

  @override
  String get titleLabel => 'Titel *';

  @override
  String get titleHint => 'z. B. Pflanzen gießen';

  @override
  String get titleRequired => 'Titel ist erforderlich';

  @override
  String get categoryLabel => 'Kategorie';

  @override
  String get categoryHint => 'Zuhause, Fahrzeug, Persönlich...';

  @override
  String get notes => 'Notizen';

  @override
  String get dueInterval => 'Fälligkeitsintervall';

  @override
  String get markDueEveryXDays => 'Alle X Tage als fällig markieren';

  @override
  String get dueIntervalSubtitle => 'Zeigt bald fällig / überfällig an';

  @override
  String get frequencyPreset => 'Häufigkeitsvorgabe';

  @override
  String get daysUntilDue => 'Tage bis zur Fälligkeit';

  @override
  String get daysSuffix => 'Tage';

  @override
  String fixedByPreset(String preset) {
    return 'Festgelegt durch Vorgabe $preset';
  }

  @override
  String get invalidDays => 'Gib eine gültige Anzahl von Tagen ein';

  @override
  String get saveChanges => 'Änderungen speichern';

  @override
  String get createActivity => 'Aktivität erstellen';

  @override
  String get reminderNone => 'Keine';

  @override
  String get reminderDaily => 'Täglich';

  @override
  String get reminderWeekly => 'Wöchentlich';

  @override
  String get reminderMonthly => 'Monatlich';

  @override
  String get reminderCustom => 'Benutzerdefiniert';

  @override
  String get statusNeverLogged => 'Nie protokolliert';

  @override
  String get statusLogged => 'Protokolliert';

  @override
  String get statusRecent => 'Kürzlich';

  @override
  String get statusDueSoon => 'Bald fällig';

  @override
  String get statusOverdue => 'Überfällig';

  @override
  String get editEntry => 'Eintrag bearbeiten';

  @override
  String get addEntry => 'Eintrag hinzufügen';

  @override
  String get date => 'Datum';

  @override
  String get time => 'Uhrzeit';

  @override
  String get noteOptional => 'Notiz (optional)';

  @override
  String get saveEntry => 'Eintrag speichern';

  @override
  String get activityNotFound => 'Aktivität nicht gefunden';

  @override
  String get history => 'Verlauf';

  @override
  String get noLogsYet => 'Noch keine Einträge';

  @override
  String get logNow => 'Jetzt protokollieren';

  @override
  String get addCustomEntry => 'Benutzerdefinierten Eintrag hinzufügen';

  @override
  String get lastDone => 'Zuletzt erledigt';

  @override
  String get nextDue => 'Nächste Fälligkeit';

  @override
  String get deleteEntryTitle => 'Eintrag löschen?';

  @override
  String get deleteEntryMessage =>
      'Diesen Protokolleintrag dauerhaft entfernen?';

  @override
  String get categoriesTitle => 'Kategorien';

  @override
  String get noCategoriesYet =>
      'Noch keine Kategorien. Tippe auf Hinzufügen, um eine zu erstellen.';

  @override
  String get deleteCategoryTitle => 'Kategorie löschen?';

  @override
  String deleteCategoryMessage(String name) {
    return '„$name“ aus den Vorschlägen entfernen? Aktivitäten, die sie verwenden, behalten ihre Kategorie.';
  }

  @override
  String get newCategory => 'Neue Kategorie';

  @override
  String get categoryHintExample => 'z. B. Fitness';

  @override
  String get categoryAlreadyExists => 'Kategorie existiert bereits';

  @override
  String get renameCategory => 'Kategorie umbenennen';

  @override
  String get backupExported => 'Backup erfolgreich exportiert';

  @override
  String exportFailed(String error) {
    return 'Export fehlgeschlagen: $error';
  }

  @override
  String get importBackupTitle => 'Backup importieren';

  @override
  String get importBackupMessage =>
      'Importierte Daten mit vorhandenen Aktivitäten zusammenführen? Wähle Abbrechen und importiere erneut, um stattdessen alle Daten zu ersetzen.';

  @override
  String get replaceAllDataTitle => 'Alle Daten ersetzen?';

  @override
  String get replaceAllDataMessage =>
      'Dadurch werden alle vorhandenen Aktivitäten und Vorkommen vor dem Import gelöscht.';

  @override
  String get replaceAll => 'Alle ersetzen';

  @override
  String importedCounts(int activities, int occurrences) {
    return '$activities Aktivitäten und $occurrences Einträge importiert';
  }

  @override
  String importFailed(String error) {
    return 'Import fehlgeschlagen: $error';
  }

  @override
  String get insightsEmpty =>
      'Noch keine Daten. Protokolliere einige Aktivitäten!';

  @override
  String get activityBreakdown => 'Aktivitätsaufschlüsselung';

  @override
  String get overview => 'Übersicht';

  @override
  String get statActivities => 'Aktivitäten';

  @override
  String get statTotalLogs => 'Einträge gesamt';

  @override
  String mostOverdue(String title) {
    return 'Am längsten überfällig: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'Zeit zwischen Einträgen — $title';
  }

  @override
  String get intervalsCaption =>
      'Jeder Balken zeigt, wie viele Tage du gewartet hast, bevor du erneut protokolliert hast (neueste zuerst).';

  @override
  String get latestGap => 'Letzter Abstand';

  @override
  String get average => 'Durchschnitt';

  @override
  String get reminder => 'Erinnerung';

  @override
  String daysValue(String days) {
    return '$days Tage';
  }

  @override
  String get needTwoLogs =>
      'Mindestens 2 Einträge nötig, um Abstände zwischen Einträgen anzuzeigen';

  @override
  String get daysBetweenLogs => 'Tage zwischen Einträgen';

  @override
  String get reminderTarget => 'Erinnerungsziel';

  @override
  String averageDaysShort(String days) {
    return 'Ø ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return 'Erinnerung ${days}d';
  }

  @override
  String gapNumber(int number) {
    return 'Abstand $number';
  }

  @override
  String get latest => 'Neueste';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Einträge',
      one: '1 Eintrag',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Einträge',
      one: '1 Eintrag',
    );
    return '$_temp0 • Ø $avg Tage';
  }

  @override
  String tooltipDays(String days) {
    return '$days Tage';
  }

  @override
  String aboutBody(String appName) {
    return '$appName ist eine einfache Offline-First-App, mit der du festhältst, wann du etwas zuletzt getan hast — Pflanzen gießen, Auto waschen, Familie anrufen und mehr.';
  }

  @override
  String get aboutTagline =>
      'Keine Serien. Kein Druck. Nur eine klare Antwort auf „Wann habe ich das zuletzt gemacht?“';

  @override
  String get features => 'Funktionen';

  @override
  String get featureTrack =>
      'Unbegrenzt Aktivitäten mit optionalen Fälligkeitsintervallen verfolgen';

  @override
  String get featureElapsed =>
      'Zeit seit dem letzten Mal anzeigen, mit Status Kürzlich / Bald fällig / Überfällig';

  @override
  String get featureCategories => 'Mit eigenen Kategorien organisieren';

  @override
  String get featureHistory =>
      'Vollständiger Verlauf mit rückdatierten Einträgen';

  @override
  String get featureInsights =>
      'Einblicke mit Durchschnittsintervallen und Diagrammen';

  @override
  String get featureThemes =>
      'Helle und dunkle Marken-Themes (folgt dem System)';

  @override
  String get featureBackup => 'JSON-Export/Import-Backup';

  @override
  String get featureOffline =>
      '100% offline — deine Daten bleiben auf deinem Gerät';

  @override
  String get privacyUnableToLoad =>
      'Datenschutzerklärung konnte nicht geladen werden. Du kannst sie stattdessen online ansehen.';

  @override
  String get openOnline => 'Online öffnen';

  @override
  String get couldNotOpenPrivacyUrl =>
      'URL der Datenschutzerklärung konnte nicht geöffnet werden';

  @override
  String get analyticsConsentTitle => 'RememberLast verbessern helfen?';

  @override
  String get analyticsConsentBody =>
      'Du kannst optional anonyme Nutzungsanalysen mit Mixpanel teilen (z. B. welche Bildschirme du besuchst und wann du Aktivitäten protokollierst). Wir senden niemals deine Aktivitätstitel, Notizen oder andere persönliche Inhalte. Du kannst das jederzeit in den Einstellungen ändern.';

  @override
  String get decline => 'Ablehnen';

  @override
  String get accept => 'Akzeptieren';

  @override
  String get couldNotShareApp => 'App konnte nicht geteilt werden';

  @override
  String get couldNotOpenAppStore => 'App Store konnte nicht geöffnet werden';

  @override
  String get couldNotOpenEmail => 'E-Mail-App konnte nicht geöffnet werden';

  @override
  String get couldNotOpenDeveloperPage =>
      'Entwicklerseite konnte nicht geöffnet werden';

  @override
  String get justNow => 'Gerade eben';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Jahre zuvor',
      one: '1 Jahr zuvor',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Monate zuvor',
      one: '1 Monat zuvor',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Tage zuvor',
      one: '1 Tag zuvor',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Stunden zuvor',
      one: '1 Stunde zuvor',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Minuten zuvor',
      one: '1 Minute zuvor',
    );
    return '$_temp0';
  }
}
