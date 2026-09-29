// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get cancel => 'Batal';

  @override
  String get delete => 'Hapus';

  @override
  String get save => 'Simpan';

  @override
  String get add => 'Tambah';

  @override
  String get edit => 'Edit';

  @override
  String get rename => 'Ganti nama';

  @override
  String get merge => 'Gabungkan';

  @override
  String get settings => 'Pengaturan';

  @override
  String get insights => 'Wawasan';

  @override
  String get about => 'Tentang';

  @override
  String get appearance => 'Tampilan';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Terang';

  @override
  String get themeDark => 'Gelap';

  @override
  String get language => 'Bahasa';

  @override
  String get languageSystemDefault => 'Default sistem';

  @override
  String get organize => 'Atur';

  @override
  String get manageCategories => 'Kelola kategori';

  @override
  String get manageCategoriesSubtitle => 'Tambah atau hapus kategori aktivitas';

  @override
  String get data => 'Data';

  @override
  String get exportBackup => 'Ekspor cadangan';

  @override
  String get exportBackupSubtitle => 'Simpan data Anda sebagai JSON';

  @override
  String get importBackup => 'Impor cadangan';

  @override
  String get importBackupSubtitle => 'Pulihkan dari file JSON';

  @override
  String get privacy => 'Privasi';

  @override
  String get usageAnalytics => 'Analitik penggunaan';

  @override
  String get usageAnalyticsSubtitle =>
      'Bagikan penggunaan layar dan fitur anonim melalui Mixpanel';

  @override
  String aboutApp(String appName) {
    return 'Tentang $appName';
  }

  @override
  String get shareApp => 'Bagikan aplikasi';

  @override
  String shareAppSubtitle(String appName) {
    return 'Ceritakan $appName kepada teman';
  }

  @override
  String get rateApp => 'Nilai aplikasi';

  @override
  String get rateAppSubtitle => 'Tinggalkan ulasan di toko aplikasi';

  @override
  String get contactUs => 'Hubungi kami';

  @override
  String get contactUsSubtitle => 'Kirim masukan atau laporkan bug';

  @override
  String get moreApps => 'Aplikasi lainnya';

  @override
  String get moreAppsSubtitle => 'Aplikasi lain dari pengembang';

  @override
  String get privacyPolicy => 'Kebijakan privasi';

  @override
  String backupShareSubject(String appName) {
    return 'Cadangan $appName';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'Belum ada apa pun di sini';

  @override
  String get emptyNothingYetMessage =>
      'Lacak kapan terakhir kali Anda melakukan sesuatu — menyiram tanaman, cuci mobil, telepon keluarga.';

  @override
  String get addActivity => 'Tambah aktivitas';

  @override
  String get addActivityFab => 'Tambah Aktivitas';

  @override
  String get noMatches => 'Tidak ada yang cocok';

  @override
  String get noMatchesFilter =>
      'Tidak ada aktivitas yang cocok dengan pencarian atau filter Anda.';

  @override
  String get nothingToShow => 'Tidak ada yang ditampilkan saat ini.';

  @override
  String get clearFilters => 'Hapus filter';

  @override
  String errorWithDetails(String error) {
    return 'Kesalahan: $error';
  }

  @override
  String get deleteActivityTitle => 'Hapus aktivitas?';

  @override
  String deleteActivityMessage(String title) {
    return 'Hapus \"$title\" dan semua riwayat?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return 'Hapus \"$title\" dan semua riwayatnya? Ini tidak dapat dibatalkan.';
  }

  @override
  String deletedActivity(String title) {
    return '\"$title\" dihapus';
  }

  @override
  String loggedNow(String title) {
    return '\"$title\" dicatat sekarang';
  }

  @override
  String get searchHint => 'Cari aktivitas...';

  @override
  String sortTooltip(String sort) {
    return 'Urutkan: $sort';
  }

  @override
  String get sortRecentlyDone => 'Baru-baru ini dilakukan';

  @override
  String get sortOverdueFirst => 'Terlambat dulu';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'Semua';

  @override
  String get editActivity => 'Edit Aktivitas';

  @override
  String get newActivity => 'Aktivitas Baru';

  @override
  String get titleLabel => 'Judul *';

  @override
  String get titleHint => 'mis. Siram tanaman';

  @override
  String get titleRequired => 'Judul wajib diisi';

  @override
  String get categoryLabel => 'Kategori';

  @override
  String get categoryHint => 'Rumah, Kendaraan, Pribadi...';

  @override
  String get notes => 'Catatan';

  @override
  String get dueInterval => 'Interval jatuh tempo';

  @override
  String get markDueEveryXDays => 'Tandai jatuh tempo setiap X hari';

  @override
  String get dueIntervalSubtitle =>
      'Menampilkan status segera jatuh tempo / terlambat';

  @override
  String get frequencyPreset => 'Prasetel frekuensi';

  @override
  String get daysUntilDue => 'Hari hingga jatuh tempo';

  @override
  String get daysSuffix => 'hari';

  @override
  String fixedByPreset(String preset) {
    return 'Ditetapkan oleh prasetel $preset';
  }

  @override
  String get invalidDays => 'Masukkan jumlah hari yang valid';

  @override
  String get saveChanges => 'Simpan Perubahan';

  @override
  String get createActivity => 'Buat Aktivitas';

  @override
  String get reminderNone => 'Tidak ada';

  @override
  String get reminderDaily => 'Harian';

  @override
  String get reminderWeekly => 'Mingguan';

  @override
  String get reminderMonthly => 'Bulanan';

  @override
  String get reminderCustom => 'Kustom';

  @override
  String get statusNeverLogged => 'Belum pernah dicatat';

  @override
  String get statusLogged => 'Dicatat';

  @override
  String get statusRecent => 'Baru';

  @override
  String get statusDueSoon => 'Segera jatuh tempo';

  @override
  String get statusOverdue => 'Terlambat';

  @override
  String get editEntry => 'Edit Entri';

  @override
  String get addEntry => 'Tambah Entri';

  @override
  String get date => 'Tanggal';

  @override
  String get time => 'Waktu';

  @override
  String get noteOptional => 'Catatan (opsional)';

  @override
  String get saveEntry => 'Simpan Entri';

  @override
  String get activityNotFound => 'Aktivitas tidak ditemukan';

  @override
  String get history => 'Riwayat';

  @override
  String get noLogsYet => 'Belum ada catatan';

  @override
  String get logNow => 'Catat Sekarang';

  @override
  String get addCustomEntry => 'Tambah Entri Kustom';

  @override
  String get lastDone => 'Terakhir dilakukan';

  @override
  String get nextDue => 'Jatuh tempo berikutnya';

  @override
  String get deleteEntryTitle => 'Hapus entri?';

  @override
  String get deleteEntryMessage => 'Hapus entri catatan ini secara permanen?';

  @override
  String get categoriesTitle => 'Kategori';

  @override
  String get noCategoriesYet =>
      'Belum ada kategori. Ketuk Tambah untuk membuat satu.';

  @override
  String get deleteCategoryTitle => 'Hapus kategori?';

  @override
  String deleteCategoryMessage(String name) {
    return 'Hapus \"$name\" dari saran? Aktivitas yang menggunakannya akan tetap menyimpan kategorinya.';
  }

  @override
  String get newCategory => 'Kategori baru';

  @override
  String get categoryHintExample => 'mis. Kebugaran';

  @override
  String get categoryAlreadyExists => 'Kategori sudah ada';

  @override
  String get renameCategory => 'Ganti nama kategori';

  @override
  String get backupExported => 'Cadangan berhasil diekspor';

  @override
  String exportFailed(String error) {
    return 'Ekspor gagal: $error';
  }

  @override
  String get importBackupTitle => 'Impor cadangan';

  @override
  String get importBackupMessage =>
      'Gabungkan data yang diimpor dengan aktivitas yang ada? Pilih Batal lalu impor ulang untuk mengganti semua data.';

  @override
  String get replaceAllDataTitle => 'Ganti semua data?';

  @override
  String get replaceAllDataMessage =>
      'Ini akan menghapus semua aktivitas dan kejadian yang ada sebelum mengimpor.';

  @override
  String get replaceAll => 'Ganti semua';

  @override
  String importedCounts(int activities, int occurrences) {
    return '$activities aktivitas dan $occurrences catatan diimpor';
  }

  @override
  String importFailed(String error) {
    return 'Impor gagal: $error';
  }

  @override
  String get insightsEmpty => 'Belum ada data. Catat beberapa aktivitas!';

  @override
  String get activityBreakdown => 'Rincian aktivitas';

  @override
  String get overview => 'Ikhtisar';

  @override
  String get statActivities => 'Aktivitas';

  @override
  String get statTotalLogs => 'Total catatan';

  @override
  String mostOverdue(String title) {
    return 'Paling terlambat: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'Waktu antar catatan — $title';
  }

  @override
  String get intervalsCaption =>
      'Setiap batang adalah berapa hari Anda menunggu sebelum mencatat lagi (terbaru dulu).';

  @override
  String get latestGap => 'Jeda terbaru';

  @override
  String get average => 'Rata-rata';

  @override
  String get reminder => 'Pengingat';

  @override
  String daysValue(String days) {
    return '$days hari';
  }

  @override
  String get needTwoLogs =>
      'Perlu setidaknya 2 catatan untuk menampilkan jeda antar entri';

  @override
  String get daysBetweenLogs => 'Hari antar catatan';

  @override
  String get reminderTarget => 'Target pengingat';

  @override
  String averageDaysShort(String days) {
    return 'Rata-rata ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return 'Pengingat ${days}d';
  }

  @override
  String gapNumber(int number) {
    return 'Jeda $number';
  }

  @override
  String get latest => 'Terbaru';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count catatan',
      one: '1 catatan',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count catatan',
      one: '1 catatan',
    );
    return '$_temp0 • rata-rata $avg hari';
  }

  @override
  String tooltipDays(String days) {
    return '$days hari';
  }

  @override
  String aboutBody(String appName) {
    return '$appName adalah aplikasi sederhana yang mengutamakan luring, membantu Anda melacak kapan terakhir kali melakukan sesuatu — menyiram tanaman, mencuci mobil, menelepon keluarga, dan lainnya.';
  }

  @override
  String get aboutTagline =>
      'Tanpa streak. Tanpa tekanan. Hanya jawaban jelas untuk \"kapan terakhir kali saya melakukan itu?\"';

  @override
  String get features => 'Fitur';

  @override
  String get featureTrack =>
      'Lacak aktivitas tanpa batas dengan interval jatuh tempo opsional';

  @override
  String get featureElapsed =>
      'Lihat waktu yang berlalu sejak terakhir dilakukan, dengan status Baru / Segera jatuh tempo / Terlambat';

  @override
  String get featureCategories => 'Atur dengan kategori kustom';

  @override
  String get featureHistory =>
      'Riwayat lengkap dengan entri bertanggal mundur kustom';

  @override
  String get featureInsights => 'Wawasan dengan interval rata-rata dan grafik';

  @override
  String get featureThemes => 'Tema merek terang dan gelap (mengikuti sistem)';

  @override
  String get featureBackup => 'Cadangan ekspor/impor JSON';

  @override
  String get featureOffline =>
      '100% luring — data Anda tetap di perangkat Anda';

  @override
  String get privacyUnableToLoad =>
      'Tidak dapat memuat kebijakan privasi. Anda dapat melihatnya secara daring.';

  @override
  String get openOnline => 'Buka daring';

  @override
  String get couldNotOpenPrivacyUrl =>
      'Tidak dapat membuka URL kebijakan privasi';

  @override
  String get analyticsConsentTitle => 'Bantu tingkatkan RememberLast?';

  @override
  String get analyticsConsentBody =>
      'Anda dapat secara opsional membagikan analitik penggunaan anonim dengan Mixpanel (seperti layar mana yang Anda kunjungi dan kapan Anda mencatat aktivitas). Kami tidak pernah mengirim judul aktivitas, catatan, atau konten pribadi lainnya. Anda dapat mengubah ini kapan saja di Pengaturan.';

  @override
  String get decline => 'Tolak';

  @override
  String get accept => 'Terima';

  @override
  String get couldNotShareApp => 'Tidak dapat membagikan aplikasi';

  @override
  String get couldNotOpenAppStore => 'Tidak dapat membuka toko aplikasi';

  @override
  String get couldNotOpenEmail => 'Tidak dapat membuka aplikasi email';

  @override
  String get couldNotOpenDeveloperPage =>
      'Tidak dapat membuka halaman pengembang';

  @override
  String get justNow => 'Baru saja';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tahun yang lalu',
      one: '1 tahun yang lalu',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bulan yang lalu',
      one: '1 bulan yang lalu',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari yang lalu',
      one: '1 hari yang lalu',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jam yang lalu',
      one: '1 jam yang lalu',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count menit yang lalu',
      one: '1 menit yang lalu',
    );
    return '$_temp0';
  }
}
