// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get cancel => 'Anuluj';

  @override
  String get delete => 'Usuń';

  @override
  String get save => 'Zapisz';

  @override
  String get add => 'Dodaj';

  @override
  String get edit => 'Edytuj';

  @override
  String get rename => 'Zmień nazwę';

  @override
  String get merge => 'Scal';

  @override
  String get settings => 'Ustawienia';

  @override
  String get insights => 'Statystyki';

  @override
  String get about => 'Informacje';

  @override
  String get appearance => 'Wygląd';

  @override
  String get themeSystem => 'Systemowy';

  @override
  String get themeLight => 'Jasny';

  @override
  String get themeDark => 'Ciemny';

  @override
  String get language => 'Język';

  @override
  String get languageSystemDefault => 'Domyślny systemowy';

  @override
  String get organize => 'Organizuj';

  @override
  String get manageCategories => 'Zarządzaj kategoriami';

  @override
  String get manageCategoriesSubtitle =>
      'Dodawaj lub usuwaj kategorie aktywności';

  @override
  String get data => 'Dane';

  @override
  String get exportBackup => 'Eksportuj kopię zapasową';

  @override
  String get exportBackupSubtitle => 'Zapisz dane jako JSON';

  @override
  String get importBackup => 'Importuj kopię zapasową';

  @override
  String get importBackupSubtitle => 'Przywróć z pliku JSON';

  @override
  String get privacy => 'Prywatność';

  @override
  String get usageAnalytics => 'Analityka użycia';

  @override
  String get usageAnalyticsSubtitle =>
      'Udostępniaj anonimowe użycie ekranów i funkcji przez Mixpanel';

  @override
  String aboutApp(String appName) {
    return 'O $appName';
  }

  @override
  String get shareApp => 'Udostępnij aplikację';

  @override
  String shareAppSubtitle(String appName) {
    return 'Opowiedz znajomym o $appName';
  }

  @override
  String get rateApp => 'Oceń aplikację';

  @override
  String get rateAppSubtitle => 'Zostaw recenzję w sklepie z aplikacjami';

  @override
  String get contactUs => 'Kontakt';

  @override
  String get contactUsSubtitle => 'Wyślij opinię lub zgłoś błąd';

  @override
  String get moreApps => 'Więcej aplikacji';

  @override
  String get moreAppsSubtitle => 'Inne aplikacje dewelopera';

  @override
  String get privacyPolicy => 'Polityka prywatności';

  @override
  String backupShareSubject(String appName) {
    return 'Kopia zapasowa $appName';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'Nic tu jeszcze nie ma';

  @override
  String get emptyNothingYetMessage =>
      'Śledź, kiedy ostatnio coś zrobiłeś — podlewanie roślin, mycie auta, telefon do rodziny.';

  @override
  String get addActivity => 'Dodaj aktywność';

  @override
  String get addActivityFab => 'Dodaj aktywność';

  @override
  String get noMatches => 'Brak wyników';

  @override
  String get noMatchesFilter =>
      'Żadne aktywności nie pasują do wyszukiwania lub filtra.';

  @override
  String get nothingToShow => 'Nie ma teraz nic do pokazania.';

  @override
  String get clearFilters => 'Wyczyść filtry';

  @override
  String errorWithDetails(String error) {
    return 'Błąd: $error';
  }

  @override
  String get deleteActivityTitle => 'Usunąć aktywność?';

  @override
  String deleteActivityMessage(String title) {
    return 'Usunąć „$title” i całą historię?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return 'Usunąć „$title” i całą historię? Tej operacji nie można cofnąć.';
  }

  @override
  String deletedActivity(String title) {
    return 'Usunięto „$title”';
  }

  @override
  String loggedNow(String title) {
    return 'Zarejestrowano „$title” teraz';
  }

  @override
  String get searchHint => 'Szukaj aktywności...';

  @override
  String sortTooltip(String sort) {
    return 'Sortowanie: $sort';
  }

  @override
  String get sortRecentlyDone => 'Ostatnio zrobione';

  @override
  String get sortOverdueFirst => 'Zaległe najpierw';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'Wszystkie';

  @override
  String get editActivity => 'Edytuj aktywność';

  @override
  String get newActivity => 'Nowa aktywność';

  @override
  String get titleLabel => 'Tytuł *';

  @override
  String get titleHint => 'np. Podlej rośliny';

  @override
  String get titleRequired => 'Tytuł jest wymagany';

  @override
  String get categoryLabel => 'Kategoria';

  @override
  String get categoryHint => 'Dom, Pojazd, Osobiste...';

  @override
  String get notes => 'Notatki';

  @override
  String get dueInterval => 'Interwał terminu';

  @override
  String get markDueEveryXDays => 'Oznacz jako zaległe co X dni';

  @override
  String get dueIntervalSubtitle => 'Pokazuje status wkrótce / zaległe';

  @override
  String get frequencyPreset => 'Preset częstotliwości';

  @override
  String get daysUntilDue => 'Dni do terminu';

  @override
  String get daysSuffix => 'dni';

  @override
  String fixedByPreset(String preset) {
    return 'Ustalony przez preset $preset';
  }

  @override
  String get invalidDays => 'Podaj prawidłową liczbę dni';

  @override
  String get saveChanges => 'Zapisz zmiany';

  @override
  String get createActivity => 'Utwórz aktywność';

  @override
  String get reminderNone => 'Brak';

  @override
  String get reminderDaily => 'Codziennie';

  @override
  String get reminderWeekly => 'Tygodniowo';

  @override
  String get reminderMonthly => 'Miesięcznie';

  @override
  String get reminderCustom => 'Niestandardowe';

  @override
  String get statusNeverLogged => 'Nigdy nie zarejestrowano';

  @override
  String get statusLogged => 'Zarejestrowano';

  @override
  String get statusRecent => 'Niedawne';

  @override
  String get statusDueSoon => 'Wkrótce';

  @override
  String get statusOverdue => 'Zaległe';

  @override
  String get editEntry => 'Edytuj wpis';

  @override
  String get addEntry => 'Dodaj wpis';

  @override
  String get date => 'Data';

  @override
  String get time => 'Godzina';

  @override
  String get noteOptional => 'Notatka (opcjonalnie)';

  @override
  String get saveEntry => 'Zapisz wpis';

  @override
  String get activityNotFound => 'Nie znaleziono aktywności';

  @override
  String get history => 'Historia';

  @override
  String get noLogsYet => 'Brak wpisów';

  @override
  String get logNow => 'Zarejestruj teraz';

  @override
  String get addCustomEntry => 'Dodaj wpis niestandardowy';

  @override
  String get lastDone => 'Ostatnio zrobione';

  @override
  String get nextDue => 'Następny termin';

  @override
  String get deleteEntryTitle => 'Usunąć wpis?';

  @override
  String get deleteEntryMessage => 'Trwale usunąć ten wpis dziennika?';

  @override
  String get categoriesTitle => 'Kategorie';

  @override
  String get noCategoriesYet => 'Brak kategorii. Stuknij Dodaj, aby utworzyć.';

  @override
  String get deleteCategoryTitle => 'Usunąć kategorię?';

  @override
  String deleteCategoryMessage(String name) {
    return 'Usunąć „$name” z podpowiedzi? Aktywności, które jej używają, zachowają kategorię.';
  }

  @override
  String get newCategory => 'Nowa kategoria';

  @override
  String get categoryHintExample => 'np. Fitness';

  @override
  String get categoryAlreadyExists => 'Kategoria już istnieje';

  @override
  String get renameCategory => 'Zmień nazwę kategorii';

  @override
  String get backupExported => 'Kopia zapasowa wyeksportowana pomyślnie';

  @override
  String exportFailed(String error) {
    return 'Eksport nie powiódł się: $error';
  }

  @override
  String get importBackupTitle => 'Importuj kopię zapasową';

  @override
  String get importBackupMessage =>
      'Scalić zaimportowane dane z istniejącymi aktywnościami? Wybierz Anuluj i zaimportuj ponownie, aby zastąpić wszystkie dane.';

  @override
  String get replaceAllDataTitle => 'Zastąpić wszystkie dane?';

  @override
  String get replaceAllDataMessage =>
      'To usunie wszystkie istniejące aktywności i wystąpienia przed importem.';

  @override
  String get replaceAll => 'Zastąp wszystko';

  @override
  String importedCounts(int activities, int occurrences) {
    return 'Zaimportowano $activities aktywności i $occurrences wpisów';
  }

  @override
  String importFailed(String error) {
    return 'Import nie powiódł się: $error';
  }

  @override
  String get insightsEmpty => 'Brak danych. Zarejestruj kilka aktywności!';

  @override
  String get activityBreakdown => 'Podział aktywności';

  @override
  String get overview => 'Przegląd';

  @override
  String get statActivities => 'Aktywności';

  @override
  String get statTotalLogs => 'Łącznie wpisów';

  @override
  String mostOverdue(String title) {
    return 'Najbardziej zaległe: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'Czas między wpisami — $title';
  }

  @override
  String get intervalsCaption =>
      'Każdy słupek pokazuje, ile dni czekałeś przed kolejnym wpisem (najnowsze najpierw).';

  @override
  String get latestGap => 'Ostatnia przerwa';

  @override
  String get average => 'Średnia';

  @override
  String get reminder => 'Przypomnienie';

  @override
  String daysValue(String days) {
    return '$days dni';
  }

  @override
  String get needTwoLogs =>
      'Potrzeba co najmniej 2 wpisów, aby pokazać przerwy między pozycjami';

  @override
  String get daysBetweenLogs => 'Dni między wpisami';

  @override
  String get reminderTarget => 'Cel przypomnienia';

  @override
  String averageDaysShort(String days) {
    return 'Śr. ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return 'Przypomnienie ${days}d';
  }

  @override
  String gapNumber(int number) {
    return 'Przerwa $number';
  }

  @override
  String get latest => 'Najnowsze';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count wpisów',
      one: '1 wpis',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count wpisów',
      one: '1 wpis',
    );
    return '$_temp0 • śr. $avg dni';
  }

  @override
  String tooltipDays(String days) {
    return '$days dni';
  }

  @override
  String aboutBody(String appName) {
    return '$appName to prosta aplikacja działająca offline, która pomaga śledzić, kiedy ostatnio coś zrobiłeś — podlewanie roślin, mycie auta, telefon do rodziny i więcej.';
  }

  @override
  String get aboutTagline =>
      'Bez serii. Bez presji. Tylko jasna odpowiedź na „kiedy ostatnio to zrobiłem?”';

  @override
  String get features => 'Funkcje';

  @override
  String get featureTrack =>
      'Śledź nieograniczoną liczbę aktywności z opcjonalnymi interwałami terminu';

  @override
  String get featureElapsed =>
      'Zobacz czas od ostatniego wykonania, ze statusem Niedawne / Wkrótce / Zaległe';

  @override
  String get featureCategories => 'Organizuj za pomocą własnych kategorii';

  @override
  String get featureHistory => 'Pełna historia z wpisami z wsteczną datą';

  @override
  String get featureInsights =>
      'Statystyki ze średnimi interwałami i wykresami';

  @override
  String get featureThemes =>
      'Jasne i ciemne motywy marki (zgodnie z systemem)';

  @override
  String get featureBackup => 'Kopia zapasowa przez eksport/import JSON';

  @override
  String get featureOffline =>
      'W 100% offline — dane zostają na Twoim urządzeniu';

  @override
  String get privacyUnableToLoad =>
      'Nie można wczytać polityki prywatności. Możesz zobaczyć ją online.';

  @override
  String get openOnline => 'Otwórz online';

  @override
  String get couldNotOpenPrivacyUrl =>
      'Nie można otworzyć adresu URL polityki prywatności';

  @override
  String get analyticsConsentTitle => 'Pomóc ulepszyć RememberLast?';

  @override
  String get analyticsConsentBody =>
      'Możesz opcjonalnie udostępniać anonimową analitykę użycia Mixpanel (np. które ekrany odwiedzasz i kiedy rejestrujesz aktywności). Nigdy nie wysyłamy tytułów aktywności, notatek ani innych treści osobistych. Możesz to zmienić w dowolnym momencie w Ustawieniach.';

  @override
  String get decline => 'Odrzuć';

  @override
  String get accept => 'Akceptuj';

  @override
  String get couldNotShareApp => 'Nie można udostępnić aplikacji';

  @override
  String get couldNotOpenAppStore => 'Nie można otworzyć sklepu z aplikacjami';

  @override
  String get couldNotOpenEmail => 'Nie można otworzyć aplikacji e-mail';

  @override
  String get couldNotOpenDeveloperPage =>
      'Nie można otworzyć strony dewelopera';

  @override
  String get justNow => 'Przed chwilą';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lat temu',
      one: '1 rok temu',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mies. temu',
      one: '1 miesiąc temu',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dni temu',
      one: '1 dzień temu',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count godz. temu',
      one: '1 godz. temu',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count min temu',
      one: '1 min temu',
    );
    return '$_temp0';
  }
}
