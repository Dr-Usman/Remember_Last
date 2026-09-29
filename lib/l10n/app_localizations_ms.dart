// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get cancel => 'Batal';

  @override
  String get delete => 'Padam';

  @override
  String get save => 'Simpan';

  @override
  String get add => 'Tambah';

  @override
  String get edit => 'Edit';

  @override
  String get rename => 'Tukar nama';

  @override
  String get merge => 'Gabung';

  @override
  String get settings => 'Tetapan';

  @override
  String get insights => 'Wawasan';

  @override
  String get about => 'Perihal';

  @override
  String get appearance => 'Penampilan';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Cerah';

  @override
  String get themeDark => 'Gelap';

  @override
  String get language => 'Bahasa';

  @override
  String get languageSystemDefault => 'Lalai sistem';

  @override
  String get organize => 'Susun';

  @override
  String get manageCategories => 'Urus kategori';

  @override
  String get manageCategoriesSubtitle => 'Tambah atau buang kategori aktiviti';

  @override
  String get data => 'Data';

  @override
  String get exportBackup => 'Eksport sandaran';

  @override
  String get exportBackupSubtitle => 'Simpan data anda sebagai JSON';

  @override
  String get importBackup => 'Import sandaran';

  @override
  String get importBackupSubtitle => 'Pulihkan daripada fail JSON';

  @override
  String get privacy => 'Privasi';

  @override
  String get usageAnalytics => 'Analitik penggunaan';

  @override
  String get usageAnalyticsSubtitle =>
      'Kongsi penggunaan skrin dan ciri tanpa nama melalui Mixpanel';

  @override
  String aboutApp(String appName) {
    return 'Perihal $appName';
  }

  @override
  String get shareApp => 'Kongsi aplikasi';

  @override
  String shareAppSubtitle(String appName) {
    return 'Beritahu rakan tentang $appName';
  }

  @override
  String get rateApp => 'Nilai aplikasi';

  @override
  String get rateAppSubtitle => 'Tinggalkan ulasan di gedung aplikasi';

  @override
  String get contactUs => 'Hubungi kami';

  @override
  String get contactUsSubtitle => 'Hantar maklum balas atau laporkan pepijat';

  @override
  String get moreApps => 'Lagi aplikasi';

  @override
  String get moreAppsSubtitle => 'Aplikasi lain daripada pembangun';

  @override
  String get privacyPolicy => 'Dasar privasi';

  @override
  String backupShareSubject(String appName) {
    return 'Sandaran $appName';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'Belum ada apa-apa di sini';

  @override
  String get emptyNothingYetMessage =>
      'Jejaki bila kali terakhir anda melakukan sesuatu — siram tanaman, cuci kereta, telefon keluarga.';

  @override
  String get addActivity => 'Tambah aktiviti';

  @override
  String get addActivityFab => 'Tambah aktiviti';

  @override
  String get noMatches => 'Tiada padanan';

  @override
  String get noMatchesFilter =>
      'Tiada aktiviti yang sepadan dengan carian atau penapis anda.';

  @override
  String get nothingToShow => 'Tiada apa-apa untuk ditunjukkan sekarang.';

  @override
  String get clearFilters => 'Kosongkan penapis';

  @override
  String errorWithDetails(String error) {
    return 'Ralat: $error';
  }

  @override
  String get deleteActivityTitle => 'Padam aktiviti?';

  @override
  String deleteActivityMessage(String title) {
    return 'Padam \"$title\" dan semua sejarah?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return 'Padam \"$title\" dan semua sejarahnya? Ini tidak boleh dibuat asal.';
  }

  @override
  String deletedActivity(String title) {
    return '\"$title\" dipadam';
  }

  @override
  String loggedNow(String title) {
    return '\"$title\" dilog sekarang';
  }

  @override
  String get searchHint => 'Cari aktiviti...';

  @override
  String sortTooltip(String sort) {
    return 'Isih: $sort';
  }

  @override
  String get sortRecentlyDone => 'Baru-baru ini dilakukan';

  @override
  String get sortOverdueFirst => 'Tertunggak dahulu';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'Semua';

  @override
  String get editActivity => 'Edit aktiviti';

  @override
  String get newActivity => 'Aktiviti baharu';

  @override
  String get titleLabel => 'Tajuk *';

  @override
  String get titleHint => 'cth. Siram tanaman';

  @override
  String get titleRequired => 'Tajuk diperlukan';

  @override
  String get categoryLabel => 'Kategori';

  @override
  String get categoryHint => 'Rumah, Kenderaan, Peribadi...';

  @override
  String get notes => 'Nota';

  @override
  String get dueInterval => 'Selang tarikh akhir';

  @override
  String get markDueEveryXDays => 'Tanda jatuh tempo setiap X hari';

  @override
  String get dueIntervalSubtitle =>
      'Menunjukkan status hampir tamat / tertunggak';

  @override
  String get frequencyPreset => 'Praset kekerapan';

  @override
  String get daysUntilDue => 'Hari hingga tarikh akhir';

  @override
  String get daysSuffix => 'hari';

  @override
  String fixedByPreset(String preset) {
    return 'Ditetapkan oleh praset $preset';
  }

  @override
  String get invalidDays => 'Masukkan bilangan hari yang sah';

  @override
  String get saveChanges => 'Simpan perubahan';

  @override
  String get createActivity => 'Cipta aktiviti';

  @override
  String get reminderNone => 'Tiada';

  @override
  String get reminderDaily => 'Harian';

  @override
  String get reminderWeekly => 'Mingguan';

  @override
  String get reminderMonthly => 'Bulanan';

  @override
  String get reminderCustom => 'Tersuai';

  @override
  String get statusNeverLogged => 'Tidak pernah dilog';

  @override
  String get statusLogged => 'Dilog';

  @override
  String get statusRecent => 'Terkini';

  @override
  String get statusDueSoon => 'Hampir tamat';

  @override
  String get statusOverdue => 'Tertunggak';

  @override
  String get editEntry => 'Edit entri';

  @override
  String get addEntry => 'Tambah entri';

  @override
  String get date => 'Tarikh';

  @override
  String get time => 'Masa';

  @override
  String get noteOptional => 'Nota (pilihan)';

  @override
  String get saveEntry => 'Simpan entri';

  @override
  String get activityNotFound => 'Aktiviti tidak dijumpai';

  @override
  String get history => 'Sejarah';

  @override
  String get noLogsYet => 'Belum ada log';

  @override
  String get logNow => 'Log sekarang';

  @override
  String get addCustomEntry => 'Tambah entri tersuai';

  @override
  String get lastDone => 'Kali terakhir dilakukan';

  @override
  String get nextDue => 'Tarikh akhir seterusnya';

  @override
  String get deleteEntryTitle => 'Padam entri?';

  @override
  String get deleteEntryMessage => 'Buang entri log ini secara kekal?';

  @override
  String get categoriesTitle => 'Kategori';

  @override
  String get noCategoriesYet =>
      'Belum ada kategori. Ketik Tambah untuk mencipta satu.';

  @override
  String get deleteCategoryTitle => 'Padam kategori?';

  @override
  String deleteCategoryMessage(String name) {
    return 'Buang \"$name\" daripada cadangan? Aktiviti yang menggunakannya akan mengekalkan kategorinya.';
  }

  @override
  String get newCategory => 'Kategori baharu';

  @override
  String get categoryHintExample => 'cth. Kecergasan';

  @override
  String get categoryAlreadyExists => 'Kategori sudah wujud';

  @override
  String get renameCategory => 'Tukar nama kategori';

  @override
  String get backupExported => 'Sandaran berjaya dieksport';

  @override
  String exportFailed(String error) {
    return 'Eksport gagal: $error';
  }

  @override
  String get importBackupTitle => 'Import sandaran';

  @override
  String get importBackupMessage =>
      'Gabungkan data yang diimport dengan aktiviti sedia ada? Pilih Batal kemudian import semula untuk mengganti semua data.';

  @override
  String get replaceAllDataTitle => 'Ganti semua data?';

  @override
  String get replaceAllDataMessage =>
      'Ini akan memadam semua aktiviti dan kejadian sedia ada sebelum mengimport.';

  @override
  String get replaceAll => 'Ganti semua';

  @override
  String importedCounts(int activities, int occurrences) {
    return '$activities aktiviti dan $occurrences log diimport';
  }

  @override
  String importFailed(String error) {
    return 'Import gagal: $error';
  }

  @override
  String get insightsEmpty => 'Belum ada data. Log beberapa aktiviti!';

  @override
  String get activityBreakdown => 'Pecahan aktiviti';

  @override
  String get overview => 'Gambaran keseluruhan';

  @override
  String get statActivities => 'Aktiviti';

  @override
  String get statTotalLogs => 'Jumlah log';

  @override
  String mostOverdue(String title) {
    return 'Paling tertunggak: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'Masa antara log — $title';
  }

  @override
  String get intervalsCaption =>
      'Setiap bar ialah berapa hari anda menunggu sebelum log semula (terbaru dahulu).';

  @override
  String get latestGap => 'Jurang terkini';

  @override
  String get average => 'Purata';

  @override
  String get reminder => 'Peringatan';

  @override
  String daysValue(String days) {
    return '$days hari';
  }

  @override
  String get needTwoLogs =>
      'Perlu sekurang-kurangnya 2 log untuk menunjukkan jurang antara entri';

  @override
  String get daysBetweenLogs => 'Hari antara log';

  @override
  String get reminderTarget => 'Sasaran peringatan';

  @override
  String averageDaysShort(String days) {
    return 'Purata ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return 'Peringatan ${days}d';
  }

  @override
  String gapNumber(int number) {
    return 'Jurang $number';
  }

  @override
  String get latest => 'Terkini';

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
    return '$_temp0 • purata $avg hari';
  }

  @override
  String tooltipDays(String days) {
    return '$days hari';
  }

  @override
  String aboutBody(String appName) {
    return '$appName ialah aplikasi mudah, luar talian dahulu, yang membantu anda jejaki bila kali terakhir anda melakukan sesuatu — siram tanaman, cuci kereta, telefon keluarga dan banyak lagi.';
  }

  @override
  String get aboutTagline =>
      'Tiada rentetan. Tiada tekanan. Hanya jawapan jelas kepada \"bila kali terakhir saya buat itu?\"';

  @override
  String get features => 'Ciri';

  @override
  String get featureTrack =>
      'Jejaki aktiviti tanpa had dengan selang tarikh akhir pilihan';

  @override
  String get featureElapsed =>
      'Lihat masa berlalu sejak kali terakhir, dengan status Terkini / Hampir tamat / Tertunggak';

  @override
  String get featureCategories => 'Susun dengan kategori tersuai';

  @override
  String get featureHistory =>
      'Sejarah penuh dengan entri bertarikh undur tersuai';

  @override
  String get featureInsights => 'Wawasan dengan selang purata dan carta';

  @override
  String get featureThemes => 'Tema jenama cerah dan gelap (mengikut sistem)';

  @override
  String get featureBackup => 'Sandaran eksport/import JSON';

  @override
  String get featureOffline =>
      '100% luar talian — data anda kekal pada peranti anda';

  @override
  String get privacyUnableToLoad =>
      'Tidak dapat memuatkan dasar privasi. Anda boleh melihatnya dalam talian.';

  @override
  String get openOnline => 'Buka dalam talian';

  @override
  String get couldNotOpenPrivacyUrl => 'Tidak dapat membuka URL dasar privasi';

  @override
  String get analyticsConsentTitle => 'Bantu menambah baik RememberLast?';

  @override
  String get analyticsConsentBody =>
      'Anda boleh secara pilihan berkongsi analitik penggunaan tanpa nama dengan Mixpanel (seperti skrin yang anda lawati dan bila anda log aktiviti). Kami tidak pernah menghantar tajuk aktiviti, nota atau kandungan peribadi lain. Anda boleh menukar ini pada bila-bila masa dalam Tetapan.';

  @override
  String get decline => 'Tolak';

  @override
  String get accept => 'Terima';

  @override
  String get couldNotShareApp => 'Tidak dapat kongsi aplikasi';

  @override
  String get couldNotOpenAppStore => 'Tidak dapat membuka gedung aplikasi';

  @override
  String get couldNotOpenEmail => 'Tidak dapat membuka aplikasi e-mel';

  @override
  String get couldNotOpenDeveloperPage =>
      'Tidak dapat membuka halaman pembangun';

  @override
  String get justNow => 'Tadi';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tahun lalu',
      one: '1 tahun lalu',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bulan lalu',
      one: '1 bulan lalu',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari lalu',
      one: '1 hari lalu',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jam lalu',
      one: '1 jam lalu',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minit lalu',
      one: '1 minit lalu',
    );
    return '$_temp0';
  }
}
