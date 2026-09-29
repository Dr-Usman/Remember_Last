// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get cancel => 'Hủy';

  @override
  String get delete => 'Xóa';

  @override
  String get save => 'Lưu';

  @override
  String get add => 'Thêm';

  @override
  String get edit => 'Sửa';

  @override
  String get rename => 'Đổi tên';

  @override
  String get merge => 'Gộp';

  @override
  String get settings => 'Cài đặt';

  @override
  String get insights => 'Thống kê';

  @override
  String get about => 'Giới thiệu';

  @override
  String get appearance => 'Giao diện';

  @override
  String get themeSystem => 'Hệ thống';

  @override
  String get themeLight => 'Sáng';

  @override
  String get themeDark => 'Tối';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get languageSystemDefault => 'Mặc định hệ thống';

  @override
  String get organize => 'Sắp xếp';

  @override
  String get manageCategories => 'Quản lý danh mục';

  @override
  String get manageCategoriesSubtitle => 'Thêm hoặc xóa danh mục hoạt động';

  @override
  String get data => 'Dữ liệu';

  @override
  String get exportBackup => 'Xuất bản sao lưu';

  @override
  String get exportBackupSubtitle => 'Lưu dữ liệu dưới dạng JSON';

  @override
  String get importBackup => 'Nhập bản sao lưu';

  @override
  String get importBackupSubtitle => 'Khôi phục từ tệp JSON';

  @override
  String get privacy => 'Quyền riêng tư';

  @override
  String get usageAnalytics => 'Phân tích sử dụng';

  @override
  String get usageAnalyticsSubtitle =>
      'Chia sẻ mức sử dụng màn hình và tính năng ẩn danh qua Mixpanel';

  @override
  String aboutApp(String appName) {
    return 'Giới thiệu $appName';
  }

  @override
  String get shareApp => 'Chia sẻ ứng dụng';

  @override
  String shareAppSubtitle(String appName) {
    return 'Kể với bạn bè về $appName';
  }

  @override
  String get rateApp => 'Đánh giá ứng dụng';

  @override
  String get rateAppSubtitle => 'Để lại đánh giá trên cửa hàng ứng dụng';

  @override
  String get contactUs => 'Liên hệ';

  @override
  String get contactUsSubtitle => 'Gửi phản hồi hoặc báo lỗi';

  @override
  String get moreApps => 'Thêm ứng dụng';

  @override
  String get moreAppsSubtitle => 'Các ứng dụng khác từ nhà phát triển';

  @override
  String get privacyPolicy => 'Chính sách quyền riêng tư';

  @override
  String backupShareSubject(String appName) {
    return 'Bản sao lưu $appName';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'Chưa có gì ở đây';

  @override
  String get emptyNothingYetMessage =>
      'Theo dõi lần cuối bạn làm bất cứ việc gì — tưới cây, rửa xe, gọi gia đình.';

  @override
  String get addActivity => 'Thêm hoạt động';

  @override
  String get addActivityFab => 'Thêm hoạt động';

  @override
  String get noMatches => 'Không có kết quả';

  @override
  String get noMatchesFilter =>
      'Không có hoạt động nào khớp với tìm kiếm hoặc bộ lọc.';

  @override
  String get nothingToShow => 'Hiện không có gì để hiển thị.';

  @override
  String get clearFilters => 'Xóa bộ lọc';

  @override
  String errorWithDetails(String error) {
    return 'Lỗi: $error';
  }

  @override
  String get deleteActivityTitle => 'Xóa hoạt động?';

  @override
  String deleteActivityMessage(String title) {
    return 'Xóa \"$title\" và toàn bộ lịch sử?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return 'Xóa \"$title\" và toàn bộ lịch sử? Không thể hoàn tác.';
  }

  @override
  String deletedActivity(String title) {
    return 'Đã xóa \"$title\"';
  }

  @override
  String loggedNow(String title) {
    return 'Đã ghi \"$title\" ngay bây giờ';
  }

  @override
  String get searchHint => 'Tìm hoạt động...';

  @override
  String sortTooltip(String sort) {
    return 'Sắp xếp: $sort';
  }

  @override
  String get sortRecentlyDone => 'Làm gần đây';

  @override
  String get sortOverdueFirst => 'Quá hạn trước';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'Tất cả';

  @override
  String get editActivity => 'Sửa hoạt động';

  @override
  String get newActivity => 'Hoạt động mới';

  @override
  String get titleLabel => 'Tiêu đề *';

  @override
  String get titleHint => 'vd. Tưới cây';

  @override
  String get titleRequired => 'Tiêu đề là bắt buộc';

  @override
  String get categoryLabel => 'Danh mục';

  @override
  String get categoryHint => 'Nhà, Xe, Cá nhân...';

  @override
  String get notes => 'Ghi chú';

  @override
  String get dueInterval => 'Khoảng đến hạn';

  @override
  String get markDueEveryXDays => 'Đánh dấu đến hạn mỗi X ngày';

  @override
  String get dueIntervalSubtitle => 'Hiển thị trạng thái sắp đến hạn / quá hạn';

  @override
  String get frequencyPreset => 'Cài sẵn tần suất';

  @override
  String get daysUntilDue => 'Số ngày đến hạn';

  @override
  String get daysSuffix => 'ngày';

  @override
  String fixedByPreset(String preset) {
    return 'Cố định theo cài sẵn $preset';
  }

  @override
  String get invalidDays => 'Nhập số ngày hợp lệ';

  @override
  String get saveChanges => 'Lưu thay đổi';

  @override
  String get createActivity => 'Tạo hoạt động';

  @override
  String get reminderNone => 'Không';

  @override
  String get reminderDaily => 'Hàng ngày';

  @override
  String get reminderWeekly => 'Hàng tuần';

  @override
  String get reminderMonthly => 'Hàng tháng';

  @override
  String get reminderCustom => 'Tùy chỉnh';

  @override
  String get statusNeverLogged => 'Chưa từng ghi';

  @override
  String get statusLogged => 'Đã ghi';

  @override
  String get statusRecent => 'Gần đây';

  @override
  String get statusDueSoon => 'Sắp đến hạn';

  @override
  String get statusOverdue => 'Quá hạn';

  @override
  String get editEntry => 'Sửa mục';

  @override
  String get addEntry => 'Thêm mục';

  @override
  String get date => 'Ngày';

  @override
  String get time => 'Giờ';

  @override
  String get noteOptional => 'Ghi chú (tùy chọn)';

  @override
  String get saveEntry => 'Lưu mục';

  @override
  String get activityNotFound => 'Không tìm thấy hoạt động';

  @override
  String get history => 'Lịch sử';

  @override
  String get noLogsYet => 'Chưa có nhật ký';

  @override
  String get logNow => 'Ghi ngay';

  @override
  String get addCustomEntry => 'Thêm mục tùy chỉnh';

  @override
  String get lastDone => 'Lần cuối làm';

  @override
  String get nextDue => 'Lần đến hạn tiếp theo';

  @override
  String get deleteEntryTitle => 'Xóa mục?';

  @override
  String get deleteEntryMessage => 'Xóa vĩnh viễn mục nhật ký này?';

  @override
  String get categoriesTitle => 'Danh mục';

  @override
  String get noCategoriesYet => 'Chưa có danh mục. Nhấn Thêm để tạo.';

  @override
  String get deleteCategoryTitle => 'Xóa danh mục?';

  @override
  String deleteCategoryMessage(String name) {
    return 'Gỡ \"$name\" khỏi gợi ý? Các hoạt động đang dùng vẫn giữ danh mục.';
  }

  @override
  String get newCategory => 'Danh mục mới';

  @override
  String get categoryHintExample => 'vd. Thể dục';

  @override
  String get categoryAlreadyExists => 'Danh mục đã tồn tại';

  @override
  String get renameCategory => 'Đổi tên danh mục';

  @override
  String get backupExported => 'Xuất bản sao lưu thành công';

  @override
  String exportFailed(String error) {
    return 'Xuất thất bại: $error';
  }

  @override
  String get importBackupTitle => 'Nhập bản sao lưu';

  @override
  String get importBackupMessage =>
      'Gộp dữ liệu đã nhập với các hoạt động hiện có? Chọn Hủy rồi nhập lại để thay thế toàn bộ dữ liệu.';

  @override
  String get replaceAllDataTitle => 'Thay thế toàn bộ dữ liệu?';

  @override
  String get replaceAllDataMessage =>
      'Thao tác này sẽ xóa tất cả hoạt động và lần xảy ra hiện có trước khi nhập.';

  @override
  String get replaceAll => 'Thay thế tất cả';

  @override
  String importedCounts(int activities, int occurrences) {
    return 'Đã nhập $activities hoạt động và $occurrences nhật ký';
  }

  @override
  String importFailed(String error) {
    return 'Nhập thất bại: $error';
  }

  @override
  String get insightsEmpty => 'Chưa có dữ liệu. Hãy ghi một số hoạt động!';

  @override
  String get activityBreakdown => 'Phân tích hoạt động';

  @override
  String get overview => 'Tổng quan';

  @override
  String get statActivities => 'Hoạt động';

  @override
  String get statTotalLogs => 'Tổng nhật ký';

  @override
  String mostOverdue(String title) {
    return 'Quá hạn nhất: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'Thời gian giữa các nhật ký — $title';
  }

  @override
  String get intervalsCaption =>
      'Mỗi cột là số ngày bạn đợi trước khi ghi lại (mới nhất trước).';

  @override
  String get latestGap => 'Khoảng cách mới nhất';

  @override
  String get average => 'Trung bình';

  @override
  String get reminder => 'Nhắc nhở';

  @override
  String daysValue(String days) {
    return '$days ngày';
  }

  @override
  String get needTwoLogs =>
      'Cần ít nhất 2 nhật ký để hiện khoảng cách giữa các mục';

  @override
  String get daysBetweenLogs => 'Số ngày giữa các nhật ký';

  @override
  String get reminderTarget => 'Mục tiêu nhắc nhở';

  @override
  String averageDaysShort(String days) {
    return 'TB ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return 'Nhắc ${days}d';
  }

  @override
  String gapNumber(int number) {
    return 'Khoảng $number';
  }

  @override
  String get latest => 'Mới nhất';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nhật ký',
      one: '1 nhật ký',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nhật ký',
      one: '1 nhật ký',
    );
    return '$_temp0 • TB $avg ngày';
  }

  @override
  String tooltipDays(String days) {
    return '$days ngày';
  }

  @override
  String aboutBody(String appName) {
    return '$appName là ứng dụng đơn giản, ưu tiên ngoại tuyến, giúp bạn theo dõi lần cuối làm bất cứ việc gì — tưới cây, rửa xe, gọi gia đình và hơn thế.';
  }

  @override
  String get aboutTagline =>
      'Không chuỗi ngày. Không áp lực. Chỉ một câu trả lời rõ ràng cho \"lần cuối tôi làm việc đó khi nào?\"';

  @override
  String get features => 'Tính năng';

  @override
  String get featureTrack =>
      'Theo dõi hoạt động không giới hạn với khoảng đến hạn tùy chọn';

  @override
  String get featureElapsed =>
      'Xem thời gian đã trôi kể từ lần cuối, với trạng thái Gần đây / Sắp đến hạn / Quá hạn';

  @override
  String get featureCategories => 'Sắp xếp bằng danh mục tùy chỉnh';

  @override
  String get featureHistory => 'Lịch sử đầy đủ với mục ghi lùi ngày tùy chỉnh';

  @override
  String get featureInsights => 'Thống kê với khoảng trung bình và biểu đồ';

  @override
  String get featureThemes => 'Chủ đề thương hiệu sáng và tối (theo hệ thống)';

  @override
  String get featureBackup => 'Sao lưu xuất/nhập JSON';

  @override
  String get featureOffline =>
      '100% ngoại tuyến — dữ liệu ở trên thiết bị của bạn';

  @override
  String get privacyUnableToLoad =>
      'Không tải được chính sách quyền riêng tư. Bạn có thể xem trực tuyến.';

  @override
  String get openOnline => 'Mở trực tuyến';

  @override
  String get couldNotOpenPrivacyUrl =>
      'Không mở được URL chính sách quyền riêng tư';

  @override
  String get analyticsConsentTitle => 'Giúp cải thiện RememberLast?';

  @override
  String get analyticsConsentBody =>
      'Bạn có thể tùy chọn chia sẻ phân tích sử dụng ẩn danh với Mixpanel (như màn hình bạn truy cập và khi bạn ghi hoạt động). Chúng tôi không bao giờ gửi tiêu đề hoạt động, ghi chú hay nội dung cá nhân khác. Bạn có thể đổi bất cứ lúc nào trong Cài đặt.';

  @override
  String get decline => 'Từ chối';

  @override
  String get accept => 'Chấp nhận';

  @override
  String get couldNotShareApp => 'Không chia sẻ được ứng dụng';

  @override
  String get couldNotOpenAppStore => 'Không mở được cửa hàng ứng dụng';

  @override
  String get couldNotOpenEmail => 'Không mở được ứng dụng email';

  @override
  String get couldNotOpenDeveloperPage => 'Không mở được trang nhà phát triển';

  @override
  String get justNow => 'Vừa xong';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count năm trước',
      one: '1 năm trước',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tháng trước',
      one: '1 tháng trước',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ngày trước',
      one: '1 ngày trước',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giờ trước',
      one: '1 giờ trước',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count phút trước',
      one: '1 phút trước',
    );
    return '$_temp0';
  }
}
