// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get cancel => '取消';

  @override
  String get delete => '删除';

  @override
  String get save => '保存';

  @override
  String get add => '添加';

  @override
  String get edit => '编辑';

  @override
  String get rename => '重命名';

  @override
  String get merge => '合并';

  @override
  String get settings => '设置';

  @override
  String get insights => '洞察';

  @override
  String get about => '关于';

  @override
  String get appearance => '外观';

  @override
  String get themeSystem => '系统';

  @override
  String get themeLight => '浅色';

  @override
  String get themeDark => '深色';

  @override
  String get language => '语言';

  @override
  String get languageSystemDefault => '系统默认';

  @override
  String get organize => '整理';

  @override
  String get manageCategories => '管理分类';

  @override
  String get manageCategoriesSubtitle => '添加或删除活动分类';

  @override
  String get data => '数据';

  @override
  String get exportBackup => '导出备份';

  @override
  String get exportBackupSubtitle => '将数据保存为 JSON';

  @override
  String get importBackup => '导入备份';

  @override
  String get importBackupSubtitle => '从 JSON 文件恢复';

  @override
  String get privacy => '隐私';

  @override
  String get usageAnalytics => '使用分析';

  @override
  String get usageAnalyticsSubtitle => '通过 Mixpanel 分享匿名的屏幕和功能使用情况';

  @override
  String aboutApp(String appName) {
    return '关于 $appName';
  }

  @override
  String get shareApp => '分享应用';

  @override
  String shareAppSubtitle(String appName) {
    return '向朋友介绍 $appName';
  }

  @override
  String get rateApp => '评价应用';

  @override
  String get rateAppSubtitle => '在应用商店留下评价';

  @override
  String get contactUs => '联系我们';

  @override
  String get contactUsSubtitle => '发送反馈或报告问题';

  @override
  String get moreApps => '更多应用';

  @override
  String get moreAppsSubtitle => '开发者的其他应用';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String backupShareSubject(String appName) {
    return '$appName 备份';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => '这里还没有内容';

  @override
  String get emptyNothingYetMessage => '记录你上次做任何事的时间 — 浇花、洗车、给家人打电话。';

  @override
  String get addActivity => '添加活动';

  @override
  String get addActivityFab => '添加活动';

  @override
  String get noMatches => '无匹配项';

  @override
  String get noMatchesFilter => '没有活动符合你的搜索或筛选。';

  @override
  String get nothingToShow => '目前没有可显示的内容。';

  @override
  String get clearFilters => '清除筛选';

  @override
  String errorWithDetails(String error) {
    return '错误：$error';
  }

  @override
  String get deleteActivityTitle => '删除活动？';

  @override
  String deleteActivityMessage(String title) {
    return '删除“$title”及其全部历史记录？';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return '删除“$title”及其全部历史记录？此操作无法撤销。';
  }

  @override
  String deletedActivity(String title) {
    return '已删除“$title”';
  }

  @override
  String loggedNow(String title) {
    return '已记录“$title”';
  }

  @override
  String get searchHint => '搜索活动...';

  @override
  String sortTooltip(String sort) {
    return '排序：$sort';
  }

  @override
  String get sortRecentlyDone => '最近完成';

  @override
  String get sortOverdueFirst => '过期优先';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => '全部';

  @override
  String get editActivity => '编辑活动';

  @override
  String get newActivity => '新活动';

  @override
  String get titleLabel => '标题 *';

  @override
  String get titleHint => '例如：浇花';

  @override
  String get titleRequired => '标题为必填项';

  @override
  String get categoryLabel => '分类';

  @override
  String get categoryHint => '家居、车辆、个人...';

  @override
  String get notes => '备注';

  @override
  String get dueInterval => '到期间隔';

  @override
  String get markDueEveryXDays => '每 X 天标记到期';

  @override
  String get dueIntervalSubtitle => '显示即将到期 / 已过期状态';

  @override
  String get frequencyPreset => '频率预设';

  @override
  String get daysUntilDue => '距到期天数';

  @override
  String get daysSuffix => '天';

  @override
  String fixedByPreset(String preset) {
    return '由 $preset 预设固定';
  }

  @override
  String get invalidDays => '请输入有效的天数';

  @override
  String get saveChanges => '保存更改';

  @override
  String get createActivity => '创建活动';

  @override
  String get reminderNone => '无';

  @override
  String get reminderDaily => '每天';

  @override
  String get reminderWeekly => '每周';

  @override
  String get reminderMonthly => '每月';

  @override
  String get reminderCustom => '自定义';

  @override
  String get statusNeverLogged => '从未记录';

  @override
  String get statusLogged => '已记录';

  @override
  String get statusRecent => '最近';

  @override
  String get statusDueSoon => '即将到期';

  @override
  String get statusOverdue => '已过期';

  @override
  String get editEntry => '编辑记录';

  @override
  String get addEntry => '添加记录';

  @override
  String get date => '日期';

  @override
  String get time => '时间';

  @override
  String get noteOptional => '备注（可选）';

  @override
  String get saveEntry => '保存记录';

  @override
  String get activityNotFound => '未找到活动';

  @override
  String get history => '历史';

  @override
  String get noLogsYet => '暂无记录';

  @override
  String get logNow => '立即记录';

  @override
  String get addCustomEntry => '添加自定义记录';

  @override
  String get lastDone => '上次完成';

  @override
  String get nextDue => '下次到期';

  @override
  String get deleteEntryTitle => '删除记录？';

  @override
  String get deleteEntryMessage => '永久删除此日志条目？';

  @override
  String get categoriesTitle => '分类';

  @override
  String get noCategoriesYet => '还没有分类。点按添加来创建一个。';

  @override
  String get deleteCategoryTitle => '删除分类？';

  @override
  String deleteCategoryMessage(String name) {
    return '从建议中移除“$name”？使用它的活动仍会保留该分类。';
  }

  @override
  String get newCategory => '新分类';

  @override
  String get categoryHintExample => '例如：健身';

  @override
  String get categoryAlreadyExists => '分类已存在';

  @override
  String get renameCategory => '重命名分类';

  @override
  String get backupExported => '备份已成功导出';

  @override
  String exportFailed(String error) {
    return '导出失败：$error';
  }

  @override
  String get importBackupTitle => '导入备份';

  @override
  String get importBackupMessage => '将导入的数据与现有活动合并？选择取消后再重新导入以改为替换全部数据。';

  @override
  String get replaceAllDataTitle => '替换全部数据？';

  @override
  String get replaceAllDataMessage => '导入前将删除所有现有活动和记录。';

  @override
  String get replaceAll => '全部替换';

  @override
  String importedCounts(int activities, int occurrences) {
    return '已导入 $activities 个活动和 $occurrences 条记录';
  }

  @override
  String importFailed(String error) {
    return '导入失败：$error';
  }

  @override
  String get insightsEmpty => '还没有数据。先记录一些活动吧！';

  @override
  String get activityBreakdown => '活动明细';

  @override
  String get overview => '概览';

  @override
  String get statActivities => '活动';

  @override
  String get statTotalLogs => '总记录数';

  @override
  String mostOverdue(String title) {
    return '最过期：$title';
  }

  @override
  String timeBetweenLogs(String title) {
    return '记录间隔 — $title';
  }

  @override
  String get intervalsCaption => '每个柱表示你再次记录前等待的天数（最新在前）。';

  @override
  String get latestGap => '最近间隔';

  @override
  String get average => '平均';

  @override
  String get reminder => '提醒';

  @override
  String daysValue(String days) {
    return '$days 天';
  }

  @override
  String get needTwoLogs => '至少需要 2 条记录才能显示条目之间的间隔';

  @override
  String get daysBetweenLogs => '记录间隔天数';

  @override
  String get reminderTarget => '提醒目标';

  @override
  String averageDaysShort(String days) {
    return '平均 ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return '提醒 ${days}d';
  }

  @override
  String gapNumber(int number) {
    return '间隔 $number';
  }

  @override
  String get latest => '最新';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 条记录',
      one: '1 条记录',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 条记录',
      one: '1 条记录',
    );
    return '$_temp0 • 平均 $avg 天';
  }

  @override
  String tooltipDays(String days) {
    return '$days 天';
  }

  @override
  String aboutBody(String appName) {
    return '$appName 是一款简单的离线优先应用，帮你追踪上次做任何事的时间 — 浇花、洗车、给家人打电话等等。';
  }

  @override
  String get aboutTagline => '没有连续打卡。没有压力。只是清楚地回答“我上次是什么时候做的？”';

  @override
  String get features => '功能';

  @override
  String get featureTrack => '无限活动追踪，可选到期间隔';

  @override
  String get featureElapsed => '查看距上次完成的时间，带有最近 / 即将到期 / 已过期状态';

  @override
  String get featureCategories => '用自定义分类整理';

  @override
  String get featureHistory => '完整历史，支持自定义补记';

  @override
  String get featureInsights => '洞察平均间隔和图表';

  @override
  String get featureThemes => '浅色和深色品牌主题（跟随系统）';

  @override
  String get featureBackup => 'JSON 导出/导入备份';

  @override
  String get featureOffline => '100% 离线 — 数据留在你的设备上';

  @override
  String get privacyUnableToLoad => '无法加载隐私政策。你可以改为在线查看。';

  @override
  String get openOnline => '在线打开';

  @override
  String get couldNotOpenPrivacyUrl => '无法打开隐私政策网址';

  @override
  String get analyticsConsentTitle => '帮助改进 RememberLast？';

  @override
  String get analyticsConsentBody =>
      '你可以选择与 Mixpanel 分享匿名使用分析（例如你访问了哪些屏幕以及何时记录活动）。我们绝不会发送你的活动标题、备注或其他个人内容。你可以随时在设置中更改。';

  @override
  String get decline => '拒绝';

  @override
  String get accept => '接受';

  @override
  String get couldNotShareApp => '无法分享应用';

  @override
  String get couldNotOpenAppStore => '无法打开应用商店';

  @override
  String get couldNotOpenEmail => '无法打开邮件应用';

  @override
  String get couldNotOpenDeveloperPage => '无法打开开发者页面';

  @override
  String get justNow => '刚刚';

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
      other: '$count 个月前',
      one: '1 个月前',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 天前',
      one: '1 天前',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 小时前',
      one: '1 小时前',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 分钟前',
      one: '1 分钟前',
    );
    return '$_temp0';
  }
}
