// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get cancel => 'İptal';

  @override
  String get delete => 'Sil';

  @override
  String get save => 'Kaydet';

  @override
  String get add => 'Ekle';

  @override
  String get edit => 'Düzenle';

  @override
  String get rename => 'Yeniden adlandır';

  @override
  String get merge => 'Birleştir';

  @override
  String get settings => 'Ayarlar';

  @override
  String get insights => 'İçgörüler';

  @override
  String get about => 'Hakkında';

  @override
  String get appearance => 'Görünüm';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Açık';

  @override
  String get themeDark => 'Koyu';

  @override
  String get language => 'Dil';

  @override
  String get languageSystemDefault => 'Sistem varsayılanı';

  @override
  String get organize => 'Düzenle';

  @override
  String get manageCategories => 'Kategorileri yönet';

  @override
  String get manageCategoriesSubtitle =>
      'Etkinlik kategorileri ekle veya kaldır';

  @override
  String get data => 'Veri';

  @override
  String get exportBackup => 'Yedeği dışa aktar';

  @override
  String get exportBackupSubtitle => 'Verilerinizi JSON olarak kaydedin';

  @override
  String get importBackup => 'Yedeği içe aktar';

  @override
  String get importBackupSubtitle => 'Bir JSON dosyasından geri yükleyin';

  @override
  String get privacy => 'Gizlilik';

  @override
  String get usageAnalytics => 'Kullanım analitiği';

  @override
  String get usageAnalyticsSubtitle =>
      'Anonim ekran ve özellik kullanımını Mixpanel üzerinden paylaş';

  @override
  String aboutApp(String appName) {
    return '$appName hakkında';
  }

  @override
  String get shareApp => 'Uygulamayı paylaş';

  @override
  String shareAppSubtitle(String appName) {
    return 'Arkadaşlarına $appName uygulamasını anlat';
  }

  @override
  String get rateApp => 'Uygulamayı puanla';

  @override
  String get rateAppSubtitle => 'Uygulama mağazasında inceleme bırak';

  @override
  String get contactUs => 'Bize ulaşın';

  @override
  String get contactUsSubtitle => 'Geri bildirim gönder veya hata bildir';

  @override
  String get moreApps => 'Daha fazla uygulama';

  @override
  String get moreAppsSubtitle => 'Geliştiricinin diğer uygulamaları';

  @override
  String get privacyPolicy => 'Gizlilik politikası';

  @override
  String backupShareSubject(String appName) {
    return '$appName yedeği';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'Henüz burada bir şey yok';

  @override
  String get emptyNothingYetMessage =>
      'Bir şeyi en son ne zaman yaptığını takip et — bitki sulamak, araba yıkamak, aileyi aramak.';

  @override
  String get addActivity => 'Etkinlik ekle';

  @override
  String get addActivityFab => 'Etkinlik ekle';

  @override
  String get noMatches => 'Eşleşme yok';

  @override
  String get noMatchesFilter =>
      'Aramanız veya filtrenizle eşleşen etkinlik yok.';

  @override
  String get nothingToShow => 'Şu anda gösterilecek bir şey yok.';

  @override
  String get clearFilters => 'Filtreleri temizle';

  @override
  String errorWithDetails(String error) {
    return 'Hata: $error';
  }

  @override
  String get deleteActivityTitle => 'Etkinlik silinsin mi?';

  @override
  String deleteActivityMessage(String title) {
    return '\"$title\" ve tüm geçmiş silinsin mi?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return '\"$title\" ve tüm geçmişi silinsin mi? Bu geri alınamaz.';
  }

  @override
  String deletedActivity(String title) {
    return '\"$title\" silindi';
  }

  @override
  String loggedNow(String title) {
    return '\"$title\" şimdi kaydedildi';
  }

  @override
  String get searchHint => 'Etkinlik ara...';

  @override
  String sortTooltip(String sort) {
    return 'Sırala: $sort';
  }

  @override
  String get sortRecentlyDone => 'Yakın zamanda yapılanlar';

  @override
  String get sortOverdueFirst => 'Gecikenler önce';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'Tümü';

  @override
  String get editActivity => 'Etkinliği düzenle';

  @override
  String get newActivity => 'Yeni etkinlik';

  @override
  String get titleLabel => 'Başlık *';

  @override
  String get titleHint => 'örn. Bitkileri sula';

  @override
  String get titleRequired => 'Başlık gerekli';

  @override
  String get categoryLabel => 'Kategori';

  @override
  String get categoryHint => 'Ev, Araç, Kişisel...';

  @override
  String get notes => 'Notlar';

  @override
  String get dueInterval => 'Vade aralığı';

  @override
  String get markDueEveryXDays => 'Her X günde vadesi gelmiş işaretle';

  @override
  String get dueIntervalSubtitle => 'Yakında / gecikmiş durumunu gösterir';

  @override
  String get frequencyPreset => 'Sıklık ön ayarı';

  @override
  String get daysUntilDue => 'Vadeye kalan gün';

  @override
  String get daysSuffix => 'gün';

  @override
  String fixedByPreset(String preset) {
    return '$preset ön ayarıyla sabit';
  }

  @override
  String get invalidDays => 'Geçerli bir gün sayısı girin';

  @override
  String get saveChanges => 'Değişiklikleri kaydet';

  @override
  String get createActivity => 'Etkinlik oluştur';

  @override
  String get reminderNone => 'Yok';

  @override
  String get reminderDaily => 'Günlük';

  @override
  String get reminderWeekly => 'Haftalık';

  @override
  String get reminderMonthly => 'Aylık';

  @override
  String get reminderCustom => 'Özel';

  @override
  String get statusNeverLogged => 'Hiç kaydedilmedi';

  @override
  String get statusLogged => 'Kaydedildi';

  @override
  String get statusRecent => 'Yakın';

  @override
  String get statusDueSoon => 'Yakında';

  @override
  String get statusOverdue => 'Gecikmiş';

  @override
  String get editEntry => 'Kaydı düzenle';

  @override
  String get addEntry => 'Kayıt ekle';

  @override
  String get date => 'Tarih';

  @override
  String get time => 'Saat';

  @override
  String get noteOptional => 'Not (isteğe bağlı)';

  @override
  String get saveEntry => 'Kaydı kaydet';

  @override
  String get activityNotFound => 'Etkinlik bulunamadı';

  @override
  String get history => 'Geçmiş';

  @override
  String get noLogsYet => 'Henüz kayıt yok';

  @override
  String get logNow => 'Şimdi kaydet';

  @override
  String get addCustomEntry => 'Özel kayıt ekle';

  @override
  String get lastDone => 'Son yapılış';

  @override
  String get nextDue => 'Sonraki vade';

  @override
  String get deleteEntryTitle => 'Kayıt silinsin mi?';

  @override
  String get deleteEntryMessage =>
      'Bu günlük kaydı kalıcı olarak kaldırılsın mı?';

  @override
  String get categoriesTitle => 'Kategoriler';

  @override
  String get noCategoriesYet =>
      'Henüz kategori yok. Oluşturmak için Ekle’ye dokunun.';

  @override
  String get deleteCategoryTitle => 'Kategori silinsin mi?';

  @override
  String deleteCategoryMessage(String name) {
    return '\"$name\" önerilerden kaldırılsın mı? Bunu kullanan etkinlikler kategorilerini korur.';
  }

  @override
  String get newCategory => 'Yeni kategori';

  @override
  String get categoryHintExample => 'örn. Fitness';

  @override
  String get categoryAlreadyExists => 'Kategori zaten var';

  @override
  String get renameCategory => 'Kategoriyi yeniden adlandır';

  @override
  String get backupExported => 'Yedek başarıyla dışa aktarıldı';

  @override
  String exportFailed(String error) {
    return 'Dışa aktarma başarısız: $error';
  }

  @override
  String get importBackupTitle => 'Yedeği içe aktar';

  @override
  String get importBackupMessage =>
      'İçe aktarılan veriler mevcut etkinliklerle birleştirilsin mi? Tüm verileri değiştirmek için İptal’i seçip yeniden içe aktarın.';

  @override
  String get replaceAllDataTitle => 'Tüm veriler değiştirilsin mi?';

  @override
  String get replaceAllDataMessage =>
      'İçe aktarmadan önce mevcut tüm etkinlikler ve oluşumlar silinir.';

  @override
  String get replaceAll => 'Tümünü değiştir';

  @override
  String importedCounts(int activities, int occurrences) {
    return '$activities etkinlik ve $occurrences kayıt içe aktarıldı';
  }

  @override
  String importFailed(String error) {
    return 'İçe aktarma başarısız: $error';
  }

  @override
  String get insightsEmpty => 'Henüz veri yok. Birkaç etkinlik kaydedin!';

  @override
  String get activityBreakdown => 'Etkinlik dökümü';

  @override
  String get overview => 'Genel bakış';

  @override
  String get statActivities => 'Etkinlikler';

  @override
  String get statTotalLogs => 'Toplam kayıt';

  @override
  String mostOverdue(String title) {
    return 'En gecikmiş: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'Kayıtlar arası süre — $title';
  }

  @override
  String get intervalsCaption =>
      'Her çubuk, yeniden kaydetmeden önce kaç gün beklediğinizi gösterir (en yeniler önce).';

  @override
  String get latestGap => 'Son boşluk';

  @override
  String get average => 'Ortalama';

  @override
  String get reminder => 'Hatırlatıcı';

  @override
  String daysValue(String days) {
    return '$days gün';
  }

  @override
  String get needTwoLogs =>
      'Kayıtlar arası boşlukları göstermek için en az 2 kayıt gerekir';

  @override
  String get daysBetweenLogs => 'Kayıtlar arası gün';

  @override
  String get reminderTarget => 'Hatırlatıcı hedefi';

  @override
  String averageDaysShort(String days) {
    return 'Ort. ${days}g';
  }

  @override
  String reminderDaysShort(String days) {
    return 'Hatırlatıcı ${days}g';
  }

  @override
  String gapNumber(int number) {
    return 'Boşluk $number';
  }

  @override
  String get latest => 'En son';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kayıt',
      one: '1 kayıt',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kayıt',
      one: '1 kayıt',
    );
    return '$_temp0 • ort. $avg gün';
  }

  @override
  String tooltipDays(String days) {
    return '$days gün';
  }

  @override
  String aboutBody(String appName) {
    return '$appName basit, çevrimdışı öncelikli bir uygulamadır; bir şeyi en son ne zaman yaptığınızı takip etmenize yardımcı olur — bitki sulamak, araba yıkamak, aileyi aramak ve daha fazlası.';
  }

  @override
  String get aboutTagline =>
      'Seri yok. Baskı yok. Sadece \"bunu en son ne zaman yaptım?\" sorusuna net bir yanıt.';

  @override
  String get features => 'Özellikler';

  @override
  String get featureTrack =>
      'İsteğe bağlı vade aralıklarıyla sınırsız etkinlik takip edin';

  @override
  String get featureElapsed =>
      'Son yapılıştan bu yana geçen süreyi Yakın / Yakında / Gecikmiş durumuyla görün';

  @override
  String get featureCategories => 'Özel kategorilerle düzenleyin';

  @override
  String get featureHistory => 'Özel geri tarihli kayıtlarla tam geçmiş';

  @override
  String get featureInsights => 'Ortalama aralıklar ve grafiklerle içgörüler';

  @override
  String get featureThemes => 'Açık ve koyu marka temaları (sistemi izler)';

  @override
  String get featureBackup => 'JSON dışa/içe aktarma yedeği';

  @override
  String get featureOffline =>
      '%100 çevrimdışı — verileriniz cihazınızda kalır';

  @override
  String get privacyUnableToLoad =>
      'Gizlilik politikası yüklenemedi. Çevrimiçi görüntüleyebilirsiniz.';

  @override
  String get openOnline => 'Çevrimiçi aç';

  @override
  String get couldNotOpenPrivacyUrl => 'Gizlilik politikası URL’si açılamadı';

  @override
  String get analyticsConsentTitle =>
      'RememberLast’i geliştirmeye yardımcı olun?';

  @override
  String get analyticsConsentBody =>
      'İsteğe bağlı olarak Mixpanel ile anonim kullanım analitiği paylaşabilirsiniz (hangi ekranları ziyaret ettiğiniz ve etkinlikleri ne zaman kaydettiğiniz gibi). Etkinlik başlıklarınızı, notlarınızı veya diğer kişisel içeriği asla göndermeyiz. Bunu Ayarlar’dan istediğiniz zaman değiştirebilirsiniz.';

  @override
  String get decline => 'Reddet';

  @override
  String get accept => 'Kabul et';

  @override
  String get couldNotShareApp => 'Uygulama paylaşılamadı';

  @override
  String get couldNotOpenAppStore => 'Uygulama mağazası açılamadı';

  @override
  String get couldNotOpenEmail => 'E-posta uygulaması açılamadı';

  @override
  String get couldNotOpenDeveloperPage => 'Geliştirici sayfası açılamadı';

  @override
  String get justNow => 'Az önce';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count yıl önce',
      one: '1 yıl önce',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ay önce',
      one: '1 ay önce',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün önce',
      one: '1 gün önce',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saat önce',
      one: '1 saat önce',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dakika önce',
      one: '1 dakika önce',
    );
    return '$_temp0';
  }
}
