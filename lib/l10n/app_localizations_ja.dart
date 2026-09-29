// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get cancel => 'キャンセル';

  @override
  String get delete => '削除';

  @override
  String get save => '保存';

  @override
  String get add => '追加';

  @override
  String get edit => '編集';

  @override
  String get rename => '名前を変更';

  @override
  String get merge => '結合';

  @override
  String get settings => '設定';

  @override
  String get insights => 'インサイト';

  @override
  String get about => 'このアプリについて';

  @override
  String get appearance => '外観';

  @override
  String get themeSystem => 'システム';

  @override
  String get themeLight => 'ライト';

  @override
  String get themeDark => 'ダーク';

  @override
  String get language => '言語';

  @override
  String get languageSystemDefault => 'システムのデフォルト';

  @override
  String get organize => '整理';

  @override
  String get manageCategories => 'カテゴリを管理';

  @override
  String get manageCategoriesSubtitle => 'アクティビティのカテゴリを追加または削除';

  @override
  String get data => 'データ';

  @override
  String get exportBackup => 'バックアップを書き出す';

  @override
  String get exportBackupSubtitle => 'データを JSON として保存';

  @override
  String get importBackup => 'バックアップを読み込む';

  @override
  String get importBackupSubtitle => 'JSON ファイルから復元';

  @override
  String get privacy => 'プライバシー';

  @override
  String get usageAnalytics => '使用状況分析';

  @override
  String get usageAnalyticsSubtitle => 'Mixpanel 経由で匿名の画面・機能の使用状況を共有';

  @override
  String aboutApp(String appName) {
    return '$appName について';
  }

  @override
  String get shareApp => 'アプリを共有';

  @override
  String shareAppSubtitle(String appName) {
    return '友達に $appName を教える';
  }

  @override
  String get rateApp => 'アプリを評価';

  @override
  String get rateAppSubtitle => 'アプリストアにレビューを残す';

  @override
  String get contactUs => 'お問い合わせ';

  @override
  String get contactUsSubtitle => 'フィードバックを送るか不具合を報告';

  @override
  String get moreApps => 'その他のアプリ';

  @override
  String get moreAppsSubtitle => '開発者のその他のアプリ';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String backupShareSubject(String appName) {
    return '$appName のバックアップ';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'まだ何もありません';

  @override
  String get emptyNothingYetMessage => '何かを最後にした日時を記録 — 水やり、洗車、家族への電話。';

  @override
  String get addActivity => 'アクティビティを追加';

  @override
  String get addActivityFab => 'アクティビティを追加';

  @override
  String get noMatches => '一致なし';

  @override
  String get noMatchesFilter => '検索またはフィルターに一致するアクティビティはありません。';

  @override
  String get nothingToShow => '現在表示するものはありません。';

  @override
  String get clearFilters => 'フィルターをクリア';

  @override
  String errorWithDetails(String error) {
    return 'エラー: $error';
  }

  @override
  String get deleteActivityTitle => 'アクティビティを削除しますか？';

  @override
  String deleteActivityMessage(String title) {
    return '「$title」とすべての履歴を削除しますか？';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return '「$title」とすべての履歴を削除しますか？この操作は元に戻せません。';
  }

  @override
  String deletedActivity(String title) {
    return '「$title」を削除しました';
  }

  @override
  String loggedNow(String title) {
    return '「$title」を今記録しました';
  }

  @override
  String get searchHint => 'アクティビティを検索...';

  @override
  String sortTooltip(String sort) {
    return '並べ替え: $sort';
  }

  @override
  String get sortRecentlyDone => '最近完了';

  @override
  String get sortOverdueFirst => '期限切れ優先';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'すべて';

  @override
  String get editActivity => 'アクティビティを編集';

  @override
  String get newActivity => '新しいアクティビティ';

  @override
  String get titleLabel => 'タイトル *';

  @override
  String get titleHint => '例: 植物に水をやる';

  @override
  String get titleRequired => 'タイトルは必須です';

  @override
  String get categoryLabel => 'カテゴリ';

  @override
  String get categoryHint => '家庭、車両、個人...';

  @override
  String get notes => 'メモ';

  @override
  String get dueInterval => '期限の間隔';

  @override
  String get markDueEveryXDays => 'X 日ごとに期限切れにする';

  @override
  String get dueIntervalSubtitle => 'まもなく期限 / 期限切れの状態を表示';

  @override
  String get frequencyPreset => '頻度プリセット';

  @override
  String get daysUntilDue => '期限までの日数';

  @override
  String get daysSuffix => '日';

  @override
  String fixedByPreset(String preset) {
    return '$preset プリセットで固定';
  }

  @override
  String get invalidDays => '有効な日数を入力してください';

  @override
  String get saveChanges => '変更を保存';

  @override
  String get createActivity => 'アクティビティを作成';

  @override
  String get reminderNone => 'なし';

  @override
  String get reminderDaily => '毎日';

  @override
  String get reminderWeekly => '毎週';

  @override
  String get reminderMonthly => '毎月';

  @override
  String get reminderCustom => 'カスタム';

  @override
  String get statusNeverLogged => '未記録';

  @override
  String get statusLogged => '記録済み';

  @override
  String get statusRecent => '最近';

  @override
  String get statusDueSoon => 'まもなく期限';

  @override
  String get statusOverdue => '期限切れ';

  @override
  String get editEntry => 'エントリを編集';

  @override
  String get addEntry => 'エントリを追加';

  @override
  String get date => '日付';

  @override
  String get time => '時刻';

  @override
  String get noteOptional => 'メモ（任意）';

  @override
  String get saveEntry => 'エントリを保存';

  @override
  String get activityNotFound => 'アクティビティが見つかりません';

  @override
  String get history => '履歴';

  @override
  String get noLogsYet => 'まだ記録がありません';

  @override
  String get logNow => '今すぐ記録';

  @override
  String get addCustomEntry => 'カスタムエントリを追加';

  @override
  String get lastDone => '前回完了';

  @override
  String get nextDue => '次の期限';

  @override
  String get deleteEntryTitle => 'エントリを削除しますか？';

  @override
  String get deleteEntryMessage => 'このログエントリを完全に削除しますか？';

  @override
  String get categoriesTitle => 'カテゴリ';

  @override
  String get noCategoriesYet => 'まだカテゴリがありません。追加をタップして作成してください。';

  @override
  String get deleteCategoryTitle => 'カテゴリを削除しますか？';

  @override
  String deleteCategoryMessage(String name) {
    return '候補から「$name」を削除しますか？使用中のアクティビティはカテゴリを保持します。';
  }

  @override
  String get newCategory => '新しいカテゴリ';

  @override
  String get categoryHintExample => '例: フィットネス';

  @override
  String get categoryAlreadyExists => 'カテゴリは既に存在します';

  @override
  String get renameCategory => 'カテゴリ名を変更';

  @override
  String get backupExported => 'バックアップの書き出しに成功しました';

  @override
  String exportFailed(String error) {
    return '書き出しに失敗: $error';
  }

  @override
  String get importBackupTitle => 'バックアップを読み込む';

  @override
  String get importBackupMessage =>
      '読み込んだデータを既存のアクティビティと結合しますか？すべてのデータを置き換えるにはキャンセルしてから再読み込みしてください。';

  @override
  String get replaceAllDataTitle => 'すべてのデータを置き換えますか？';

  @override
  String get replaceAllDataMessage => '読み込む前に既存のすべてのアクティビティと発生記録が削除されます。';

  @override
  String get replaceAll => 'すべて置き換え';

  @override
  String importedCounts(int activities, int occurrences) {
    return '$activities 件のアクティビティと $occurrences 件のログを読み込みました';
  }

  @override
  String importFailed(String error) {
    return '読み込みに失敗: $error';
  }

  @override
  String get insightsEmpty => 'まだデータがありません。アクティビティを記録しましょう！';

  @override
  String get activityBreakdown => 'アクティビティの内訳';

  @override
  String get overview => '概要';

  @override
  String get statActivities => 'アクティビティ';

  @override
  String get statTotalLogs => '合計ログ';

  @override
  String mostOverdue(String title) {
    return '最も期限切れ: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'ログ間隔 — $title';
  }

  @override
  String get intervalsCaption => '各バーは再記録までに待った日数です（新しい順）。';

  @override
  String get latestGap => '最新の間隔';

  @override
  String get average => '平均';

  @override
  String get reminder => 'リマインダー';

  @override
  String daysValue(String days) {
    return '$days 日';
  }

  @override
  String get needTwoLogs => 'エントリ間の間隔を表示するには少なくとも 2 件のログが必要です';

  @override
  String get daysBetweenLogs => 'ログ間の日数';

  @override
  String get reminderTarget => 'リマインダー目標';

  @override
  String averageDaysShort(String days) {
    return '平均 ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return 'リマインダー ${days}d';
  }

  @override
  String gapNumber(int number) {
    return '間隔 $number';
  }

  @override
  String get latest => '最新';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 件のログ',
      one: '1 件のログ',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 件のログ',
      one: '1 件のログ',
    );
    return '$_temp0 • 平均 $avg 日';
  }

  @override
  String tooltipDays(String days) {
    return '$days 日';
  }

  @override
  String aboutBody(String appName) {
    return '$appName はシンプルなオフライン優先アプリで、何かを最後にした日時を記録できます — 水やり、洗車、家族への電話など。';
  }

  @override
  String get aboutTagline => '連続記録もプレッシャーもなし。「あれ、最後にいつやった？」への明確な答えだけ。';

  @override
  String get features => '機能';

  @override
  String get featureTrack => '任意の期限間隔で無制限のアクティビティを記録';

  @override
  String get featureElapsed => '前回からの経過時間を、最近 / まもなく期限 / 期限切れの状態で表示';

  @override
  String get featureCategories => 'カスタムカテゴリで整理';

  @override
  String get featureHistory => '日付を遡ったカスタムエントリ付きの完全な履歴';

  @override
  String get featureInsights => '平均間隔とチャートのインサイト';

  @override
  String get featureThemes => 'ライトとダークのブランドテーマ（システムに従う）';

  @override
  String get featureBackup => 'JSON の書き出し/読み込みバックアップ';

  @override
  String get featureOffline => '100% オフライン — データはデバイスに残ります';

  @override
  String get privacyUnableToLoad => 'プライバシーポリシーを読み込めません。オンラインでご覧ください。';

  @override
  String get openOnline => 'オンラインで開く';

  @override
  String get couldNotOpenPrivacyUrl => 'プライバシーポリシーの URL を開けませんでした';

  @override
  String get analyticsConsentTitle => 'RememberLast の改善にご協力ください';

  @override
  String get analyticsConsentBody =>
      'Mixpanel と匿名の使用状況分析を任意で共有できます（訪問した画面やアクティビティを記録したタイミングなど）。アクティビティのタイトル、メモ、その他の個人コンテンツは一切送信しません。設定からいつでも変更できます。';

  @override
  String get decline => '拒否';

  @override
  String get accept => '同意';

  @override
  String get couldNotShareApp => 'アプリを共有できませんでした';

  @override
  String get couldNotOpenAppStore => 'アプリストアを開けませんでした';

  @override
  String get couldNotOpenEmail => 'メールアプリを開けませんでした';

  @override
  String get couldNotOpenDeveloperPage => '開発者ページを開けませんでした';

  @override
  String get justNow => 'たった今';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 年前',
      one: '1 年前',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count か月前',
      one: '1 か月前',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 日前',
      one: '1 日前',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 時間前',
      one: '1 時間前',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 分前',
      one: '1 分前',
    );
    return '$_temp0';
  }
}
