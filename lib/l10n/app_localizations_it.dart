// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get cancel => 'Annulla';

  @override
  String get delete => 'Elimina';

  @override
  String get save => 'Salva';

  @override
  String get add => 'Aggiungi';

  @override
  String get edit => 'Modifica';

  @override
  String get rename => 'Rinomina';

  @override
  String get merge => 'Unisci';

  @override
  String get settings => 'Impostazioni';

  @override
  String get insights => 'Statistiche';

  @override
  String get about => 'Informazioni';

  @override
  String get appearance => 'Aspetto';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Chiaro';

  @override
  String get themeDark => 'Scuro';

  @override
  String get language => 'Lingua';

  @override
  String get languageSystemDefault => 'Predefinito di sistema';

  @override
  String get organize => 'Organizza';

  @override
  String get manageCategories => 'Gestisci categorie';

  @override
  String get manageCategoriesSubtitle =>
      'Aggiungi o rimuovi categorie di attività';

  @override
  String get data => 'Dati';

  @override
  String get exportBackup => 'Esporta backup';

  @override
  String get exportBackupSubtitle => 'Salva i tuoi dati come JSON';

  @override
  String get importBackup => 'Importa backup';

  @override
  String get importBackupSubtitle => 'Ripristina da un file JSON';

  @override
  String get privacy => 'Privacy';

  @override
  String get usageAnalytics => 'Analisi di utilizzo';

  @override
  String get usageAnalyticsSubtitle =>
      'Condividi l’uso anonimo di schermate e funzioni tramite Mixpanel';

  @override
  String aboutApp(String appName) {
    return 'Informazioni su $appName';
  }

  @override
  String get shareApp => 'Condividi app';

  @override
  String shareAppSubtitle(String appName) {
    return 'Parla di $appName agli amici';
  }

  @override
  String get rateApp => 'Valuta l’app';

  @override
  String get rateAppSubtitle => 'Lascia una recensione sull’app store';

  @override
  String get contactUs => 'Contattaci';

  @override
  String get contactUsSubtitle => 'Invia un feedback o segnala un bug';

  @override
  String get moreApps => 'Altre app';

  @override
  String get moreAppsSubtitle => 'Altre app dello sviluppatore';

  @override
  String get privacyPolicy => 'Informativa sulla privacy';

  @override
  String backupShareSubject(String appName) {
    return 'Backup di $appName';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'Ancora niente qui';

  @override
  String get emptyNothingYetMessage =>
      'Tieni traccia di quando hai fatto qualcosa l’ultima volta — annaffiare le piante, lavare l’auto, chiamare la famiglia.';

  @override
  String get addActivity => 'Aggiungi attività';

  @override
  String get addActivityFab => 'Aggiungi attività';

  @override
  String get noMatches => 'Nessuna corrispondenza';

  @override
  String get noMatchesFilter =>
      'Nessuna attività corrisponde alla ricerca o al filtro.';

  @override
  String get nothingToShow => 'Niente da mostrare al momento.';

  @override
  String get clearFilters => 'Cancella filtri';

  @override
  String errorWithDetails(String error) {
    return 'Errore: $error';
  }

  @override
  String get deleteActivityTitle => 'Eliminare l’attività?';

  @override
  String deleteActivityMessage(String title) {
    return 'Eliminare \"$title\" e tutta la cronologia?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return 'Eliminare \"$title\" e tutta la cronologia? Questa azione non può essere annullata.';
  }

  @override
  String deletedActivity(String title) {
    return '\"$title\" eliminata';
  }

  @override
  String loggedNow(String title) {
    return '\"$title\" registrata ora';
  }

  @override
  String get searchHint => 'Cerca attività...';

  @override
  String sortTooltip(String sort) {
    return 'Ordina: $sort';
  }

  @override
  String get sortRecentlyDone => 'Fatte di recente';

  @override
  String get sortOverdueFirst => 'Scadute prima';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'Tutte';

  @override
  String get editActivity => 'Modifica attività';

  @override
  String get newActivity => 'Nuova attività';

  @override
  String get titleLabel => 'Titolo *';

  @override
  String get titleHint => 'es. Annaffia le piante';

  @override
  String get titleRequired => 'Il titolo è obbligatorio';

  @override
  String get categoryLabel => 'Categoria';

  @override
  String get categoryHint => 'Casa, Veicolo, Personale...';

  @override
  String get notes => 'Note';

  @override
  String get dueInterval => 'Intervallo di scadenza';

  @override
  String get markDueEveryXDays => 'Segna come scaduta ogni X giorni';

  @override
  String get dueIntervalSubtitle => 'Mostra lo stato in scadenza / scaduta';

  @override
  String get frequencyPreset => 'Preimpostazione frequenza';

  @override
  String get daysUntilDue => 'Giorni alla scadenza';

  @override
  String get daysSuffix => 'giorni';

  @override
  String fixedByPreset(String preset) {
    return 'Fissato dalla preimpostazione $preset';
  }

  @override
  String get invalidDays => 'Inserisci un numero di giorni valido';

  @override
  String get saveChanges => 'Salva modifiche';

  @override
  String get createActivity => 'Crea attività';

  @override
  String get reminderNone => 'Nessuno';

  @override
  String get reminderDaily => 'Giornaliero';

  @override
  String get reminderWeekly => 'Settimanale';

  @override
  String get reminderMonthly => 'Mensile';

  @override
  String get reminderCustom => 'Personalizzato';

  @override
  String get statusNeverLogged => 'Mai registrata';

  @override
  String get statusLogged => 'Registrata';

  @override
  String get statusRecent => 'Recente';

  @override
  String get statusDueSoon => 'In scadenza';

  @override
  String get statusOverdue => 'Scaduta';

  @override
  String get editEntry => 'Modifica voce';

  @override
  String get addEntry => 'Aggiungi voce';

  @override
  String get date => 'Data';

  @override
  String get time => 'Ora';

  @override
  String get noteOptional => 'Nota (facoltativa)';

  @override
  String get saveEntry => 'Salva voce';

  @override
  String get activityNotFound => 'Attività non trovata';

  @override
  String get history => 'Cronologia';

  @override
  String get noLogsYet => 'Ancora nessun registro';

  @override
  String get logNow => 'Registra ora';

  @override
  String get addCustomEntry => 'Aggiungi voce personalizzata';

  @override
  String get lastDone => 'Ultima volta';

  @override
  String get nextDue => 'Prossima scadenza';

  @override
  String get deleteEntryTitle => 'Eliminare la voce?';

  @override
  String get deleteEntryMessage =>
      'Rimuovere definitivamente questa voce del registro?';

  @override
  String get categoriesTitle => 'Categorie';

  @override
  String get noCategoriesYet =>
      'Ancora nessuna categoria. Tocca Aggiungi per crearne una.';

  @override
  String get deleteCategoryTitle => 'Eliminare la categoria?';

  @override
  String deleteCategoryMessage(String name) {
    return 'Rimuovere \"$name\" dai suggerimenti? Le attività che la usano manterranno la categoria.';
  }

  @override
  String get newCategory => 'Nuova categoria';

  @override
  String get categoryHintExample => 'es. Fitness';

  @override
  String get categoryAlreadyExists => 'La categoria esiste già';

  @override
  String get renameCategory => 'Rinomina categoria';

  @override
  String get backupExported => 'Backup esportato correttamente';

  @override
  String exportFailed(String error) {
    return 'Esportazione non riuscita: $error';
  }

  @override
  String get importBackupTitle => 'Importa backup';

  @override
  String get importBackupMessage =>
      'Unire i dati importati con le attività esistenti? Scegli Annulla e reimporta per sostituire tutti i dati.';

  @override
  String get replaceAllDataTitle => 'Sostituire tutti i dati?';

  @override
  String get replaceAllDataMessage =>
      'Questo eliminerà tutte le attività e le occorrenze esistenti prima dell’importazione.';

  @override
  String get replaceAll => 'Sostituisci tutto';

  @override
  String importedCounts(int activities, int occurrences) {
    return 'Importate $activities attività e $occurrences registri';
  }

  @override
  String importFailed(String error) {
    return 'Importazione non riuscita: $error';
  }

  @override
  String get insightsEmpty => 'Ancora nessun dato. Registra alcune attività!';

  @override
  String get activityBreakdown => 'Ripartizione attività';

  @override
  String get overview => 'Panoramica';

  @override
  String get statActivities => 'Attività';

  @override
  String get statTotalLogs => 'Registri totali';

  @override
  String mostOverdue(String title) {
    return 'Più scaduta: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'Tempo tra i registri — $title';
  }

  @override
  String get intervalsCaption =>
      'Ogni barra indica quanti giorni hai aspettato prima di registrare di nuovo (più recente prima).';

  @override
  String get latestGap => 'Ultimo intervallo';

  @override
  String get average => 'Media';

  @override
  String get reminder => 'Promemoria';

  @override
  String daysValue(String days) {
    return '$days giorni';
  }

  @override
  String get needTwoLogs =>
      'Servono almeno 2 registri per mostrare gli intervalli tra le voci';

  @override
  String get daysBetweenLogs => 'Giorni tra i registri';

  @override
  String get reminderTarget => 'Obiettivo promemoria';

  @override
  String averageDaysShort(String days) {
    return 'Media ${days}g';
  }

  @override
  String reminderDaysShort(String days) {
    return 'Promemoria ${days}g';
  }

  @override
  String gapNumber(int number) {
    return 'Intervallo $number';
  }

  @override
  String get latest => 'Più recente';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count registri',
      one: '1 registro',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count registri',
      one: '1 registro',
    );
    return '$_temp0 • media $avg giorni';
  }

  @override
  String tooltipDays(String days) {
    return '$days giorni';
  }

  @override
  String aboutBody(String appName) {
    return '$appName è un’app semplice, prima di tutto offline, che ti aiuta a tenere traccia di quando hai fatto qualcosa l’ultima volta — annaffiare le piante, lavare l’auto, chiamare la famiglia e altro.';
  }

  @override
  String get aboutTagline =>
      'Niente serie. Niente pressione. Solo una risposta chiara a \"quando l’ho fatto l’ultima volta?\"';

  @override
  String get features => 'Funzioni';

  @override
  String get featureTrack =>
      'Traccia attività illimitate con intervalli di scadenza opzionali';

  @override
  String get featureElapsed =>
      'Vedi il tempo trascorso dall’ultima volta, con stato Recente / In scadenza / Scaduta';

  @override
  String get featureCategories => 'Organizza con categorie personalizzate';

  @override
  String get featureHistory =>
      'Cronologia completa con voci retrodatate personalizzate';

  @override
  String get featureInsights => 'Statistiche con intervalli medi e grafici';

  @override
  String get featureThemes => 'Temi brand chiari e scuri (segue il sistema)';

  @override
  String get featureBackup => 'Backup tramite esportazione/importazione JSON';

  @override
  String get featureOffline =>
      '100% offline — i tuoi dati restano sul dispositivo';

  @override
  String get privacyUnableToLoad =>
      'Impossibile caricare l’informativa sulla privacy. Puoi visualizzarla online.';

  @override
  String get openOnline => 'Apri online';

  @override
  String get couldNotOpenPrivacyUrl =>
      'Impossibile aprire l’URL dell’informativa sulla privacy';

  @override
  String get analyticsConsentTitle => 'Aiutare a migliorare RememberLast?';

  @override
  String get analyticsConsentBody =>
      'Puoi facoltativamente condividere analisi di utilizzo anonime con Mixpanel (ad esempio quali schermate visiti e quando registri attività). Non inviamo mai i titoli delle attività, le note o altri contenuti personali. Puoi modificare questa impostazione in qualsiasi momento in Impostazioni.';

  @override
  String get decline => 'Rifiuta';

  @override
  String get accept => 'Accetta';

  @override
  String get couldNotShareApp => 'Impossibile condividere l’app';

  @override
  String get couldNotOpenAppStore => 'Impossibile aprire l’app store';

  @override
  String get couldNotOpenEmail => 'Impossibile aprire l’app e-mail';

  @override
  String get couldNotOpenDeveloperPage =>
      'Impossibile aprire la pagina dello sviluppatore';

  @override
  String get justNow => 'Proprio ora';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count anni fa',
      one: '1 anno fa',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mesi fa',
      one: '1 mese fa',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni fa',
      one: '1 giorno fa',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ore fa',
      one: '1 ora fa',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuti fa',
      one: '1 minuto fa',
    );
    return '$_temp0';
  }
}
