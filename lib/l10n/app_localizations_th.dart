// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get delete => 'ลบ';

  @override
  String get save => 'บันทึก';

  @override
  String get add => 'เพิ่ม';

  @override
  String get edit => 'แก้ไข';

  @override
  String get rename => 'เปลี่ยนชื่อ';

  @override
  String get merge => 'รวม';

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get insights => 'ข้อมูลเชิงลึก';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String get appearance => 'ลักษณะที่ปรากฏ';

  @override
  String get themeSystem => 'ระบบ';

  @override
  String get themeLight => 'สว่าง';

  @override
  String get themeDark => 'มืด';

  @override
  String get language => 'ภาษา';

  @override
  String get languageSystemDefault => 'ค่าเริ่มต้นของระบบ';

  @override
  String get organize => 'จัดระเบียบ';

  @override
  String get manageCategories => 'จัดการหมวดหมู่';

  @override
  String get manageCategoriesSubtitle => 'เพิ่มหรือลบหมวดหมู่กิจกรรม';

  @override
  String get data => 'ข้อมูล';

  @override
  String get exportBackup => 'ส่งออกข้อมูลสำรอง';

  @override
  String get exportBackupSubtitle => 'บันทึกข้อมูลเป็น JSON';

  @override
  String get importBackup => 'นำเข้าข้อมูลสำรอง';

  @override
  String get importBackupSubtitle => 'กู้คืนจากไฟล์ JSON';

  @override
  String get privacy => 'ความเป็นส่วนตัว';

  @override
  String get usageAnalytics => 'การวิเคราะห์การใช้งาน';

  @override
  String get usageAnalyticsSubtitle =>
      'แชร์การใช้งานหน้าจอและฟีเจอร์แบบไม่ระบุตัวตนผ่าน Mixpanel';

  @override
  String aboutApp(String appName) {
    return 'เกี่ยวกับ $appName';
  }

  @override
  String get shareApp => 'แชร์แอป';

  @override
  String shareAppSubtitle(String appName) {
    return 'บอกเพื่อนเกี่ยวกับ $appName';
  }

  @override
  String get rateApp => 'ให้คะแนนแอป';

  @override
  String get rateAppSubtitle => 'เขียนรีวิวในสโตร์แอป';

  @override
  String get contactUs => 'ติดต่อเรา';

  @override
  String get contactUsSubtitle => 'ส่งข้อเสนอแนะหรือรายงานข้อผิดพลาด';

  @override
  String get moreApps => 'แอปเพิ่มเติม';

  @override
  String get moreAppsSubtitle => 'แอปอื่นจากผู้พัฒนา';

  @override
  String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';

  @override
  String backupShareSubject(String appName) {
    return 'ข้อมูลสำรอง $appName';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'ยังไม่มีอะไรที่นี่';

  @override
  String get emptyNothingYetMessage =>
      'ติดตามว่าคุณทำอะไรครั้งล่าสุดเมื่อใด — รดน้ำต้นไม้ ล้างรถ โทรหาครอบครัว';

  @override
  String get addActivity => 'เพิ่มกิจกรรม';

  @override
  String get addActivityFab => 'เพิ่มกิจกรรม';

  @override
  String get noMatches => 'ไม่พบรายการที่ตรงกัน';

  @override
  String get noMatchesFilter =>
      'ไม่มีกิจกรรมที่ตรงกับการค้นหาหรือตัวกรองของคุณ';

  @override
  String get nothingToShow => 'ยังไม่มีอะไรแสดงในตอนนี้';

  @override
  String get clearFilters => 'ล้างตัวกรอง';

  @override
  String errorWithDetails(String error) {
    return 'ข้อผิดพลาด: $error';
  }

  @override
  String get deleteActivityTitle => 'ลบกิจกรรม?';

  @override
  String deleteActivityMessage(String title) {
    return 'ลบ \"$title\" และประวัติทั้งหมด?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return 'ลบ \"$title\" และประวัติทั้งหมด? การกระทำนี้ไม่สามารถย้อนกลับได้';
  }

  @override
  String deletedActivity(String title) {
    return 'ลบ \"$title\" แล้ว';
  }

  @override
  String loggedNow(String title) {
    return 'บันทึก \"$title\" แล้วตอนนี้';
  }

  @override
  String get searchHint => 'ค้นหากิจกรรม...';

  @override
  String sortTooltip(String sort) {
    return 'เรียง: $sort';
  }

  @override
  String get sortRecentlyDone => 'ทำล่าสุด';

  @override
  String get sortOverdueFirst => 'เกินกำหนดก่อน';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'ทั้งหมด';

  @override
  String get editActivity => 'แก้ไขกิจกรรม';

  @override
  String get newActivity => 'กิจกรรมใหม่';

  @override
  String get titleLabel => 'ชื่อเรื่อง *';

  @override
  String get titleHint => 'เช่น รดน้ำต้นไม้';

  @override
  String get titleRequired => 'ต้องระบุชื่อเรื่อง';

  @override
  String get categoryLabel => 'หมวดหมู่';

  @override
  String get categoryHint => 'บ้าน ยานพาหนะ ส่วนตัว...';

  @override
  String get notes => 'บันทึกย่อ';

  @override
  String get dueInterval => 'ช่วงกำหนดครบ';

  @override
  String get markDueEveryXDays => 'ทำเครื่องหมายครบกำหนดทุก X วัน';

  @override
  String get dueIntervalSubtitle => 'แสดงสถานะใกล้ครบกำหนด / เกินกำหนด';

  @override
  String get frequencyPreset => 'ชุดความถี่สำเร็จรูป';

  @override
  String get daysUntilDue => 'จำนวนวันจนกว่าจะครบกำหนด';

  @override
  String get daysSuffix => 'วัน';

  @override
  String fixedByPreset(String preset) {
    return 'กำหนดโดยชุด $preset';
  }

  @override
  String get invalidDays => 'ใส่จำนวนวันที่ถูกต้อง';

  @override
  String get saveChanges => 'บันทึกการเปลี่ยนแปลง';

  @override
  String get createActivity => 'สร้างกิจกรรม';

  @override
  String get reminderNone => 'ไม่มี';

  @override
  String get reminderDaily => 'รายวัน';

  @override
  String get reminderWeekly => 'รายสัปดาห์';

  @override
  String get reminderMonthly => 'รายเดือน';

  @override
  String get reminderCustom => 'กำหนดเอง';

  @override
  String get statusNeverLogged => 'ยังไม่เคยบันทึก';

  @override
  String get statusLogged => 'บันทึกแล้ว';

  @override
  String get statusRecent => 'ล่าสุด';

  @override
  String get statusDueSoon => 'ใกล้ครบกำหนด';

  @override
  String get statusOverdue => 'เกินกำหนด';

  @override
  String get editEntry => 'แก้ไขรายการ';

  @override
  String get addEntry => 'เพิ่มรายการ';

  @override
  String get date => 'วันที่';

  @override
  String get time => 'เวลา';

  @override
  String get noteOptional => 'บันทึกย่อ (ไม่บังคับ)';

  @override
  String get saveEntry => 'บันทึกรายการ';

  @override
  String get activityNotFound => 'ไม่พบกิจกรรม';

  @override
  String get history => 'ประวัติ';

  @override
  String get noLogsYet => 'ยังไม่มีบันทึก';

  @override
  String get logNow => 'บันทึกตอนนี้';

  @override
  String get addCustomEntry => 'เพิ่มรายการกำหนดเอง';

  @override
  String get lastDone => 'ทำครั้งล่าสุด';

  @override
  String get nextDue => 'ครบกำหนดถัดไป';

  @override
  String get deleteEntryTitle => 'ลบรายการ?';

  @override
  String get deleteEntryMessage => 'ลบรายการบันทึกนี้อย่างถาวร?';

  @override
  String get categoriesTitle => 'หมวดหมู่';

  @override
  String get noCategoriesYet => 'ยังไม่มีหมวดหมู่ แตะเพิ่มเพื่อสร้าง';

  @override
  String get deleteCategoryTitle => 'ลบหมวดหมู่?';

  @override
  String deleteCategoryMessage(String name) {
    return 'นำ \"$name\" ออกจากคำแนะนำ? กิจกรรมที่ใช้หมวดหมู่นี้จะยังคงหมวดหมู่อยู่';
  }

  @override
  String get newCategory => 'หมวดหมู่ใหม่';

  @override
  String get categoryHintExample => 'เช่น ฟิตเนส';

  @override
  String get categoryAlreadyExists => 'มีหมวดหมู่นี้แล้ว';

  @override
  String get renameCategory => 'เปลี่ยนชื่อหมวดหมู่';

  @override
  String get backupExported => 'ส่งออกข้อมูลสำรองสำเร็จ';

  @override
  String exportFailed(String error) {
    return 'ส่งออกล้มเหลว: $error';
  }

  @override
  String get importBackupTitle => 'นำเข้าข้อมูลสำรอง';

  @override
  String get importBackupMessage =>
      'รวมข้อมูลที่นำเข้ากับกิจกรรมที่มีอยู่หรือไม่ เลือกยกเลิกแล้วนำเข้าอีกครั้งเพื่อแทนที่ข้อมูลทั้งหมดแทน';

  @override
  String get replaceAllDataTitle => 'แทนที่ข้อมูลทั้งหมด?';

  @override
  String get replaceAllDataMessage =>
      'การดำเนินการนี้จะลบกิจกรรมและการเกิดทั้งหมดที่มีอยู่ก่อนนำเข้า';

  @override
  String get replaceAll => 'แทนที่ทั้งหมด';

  @override
  String importedCounts(int activities, int occurrences) {
    return 'นำเข้ากิจกรรม $activities รายการ และบันทึก $occurrences รายการ';
  }

  @override
  String importFailed(String error) {
    return 'นำเข้าล้มเหลว: $error';
  }

  @override
  String get insightsEmpty => 'ยังไม่มีข้อมูล บันทึกกิจกรรมบางอย่างสิ!';

  @override
  String get activityBreakdown => 'รายละเอียดกิจกรรม';

  @override
  String get overview => 'ภาพรวม';

  @override
  String get statActivities => 'กิจกรรม';

  @override
  String get statTotalLogs => 'บันทึกทั้งหมด';

  @override
  String mostOverdue(String title) {
    return 'เกินกำหนดมากที่สุด: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'ระยะเวลาระหว่างบันทึก — $title';
  }

  @override
  String get intervalsCaption =>
      'แต่ละแท่งคือจำนวนวันที่คุณรอคอยก่อนบันทึกอีกครั้ง (ใหม่สุดก่อน)';

  @override
  String get latestGap => 'ช่องว่างล่าสุด';

  @override
  String get average => 'ค่าเฉลี่ย';

  @override
  String get reminder => 'การเตือน';

  @override
  String daysValue(String days) {
    return '$days วัน';
  }

  @override
  String get needTwoLogs =>
      'ต้องมีอย่างน้อย 2 บันทึกเพื่อแสดงช่องว่างระหว่างรายการ';

  @override
  String get daysBetweenLogs => 'จำนวนวันระหว่างบันทึก';

  @override
  String get reminderTarget => 'เป้าหมายการเตือน';

  @override
  String averageDaysShort(String days) {
    return 'เฉลี่ย ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return 'เตือน ${days}d';
  }

  @override
  String gapNumber(int number) {
    return 'ช่องว่าง $number';
  }

  @override
  String get latest => 'ล่าสุด';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count บันทึก',
      one: '1 บันทึก',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count บันทึก',
      one: '1 บันทึก',
    );
    return '$_temp0 • เฉลี่ย $avg วัน';
  }

  @override
  String tooltipDays(String days) {
    return '$days วัน';
  }

  @override
  String aboutBody(String appName) {
    return '$appName เป็นแอปแบบออฟไลน์เป็นหลักที่เรียบง่าย ช่วยให้คุณติดตามว่าทำอะไรครั้งล่าสุดเมื่อใด — รดน้ำต้นไม้ ล้างรถ โทรหาครอบครัว และอื่นๆ';
  }

  @override
  String get aboutTagline =>
      'ไม่มีสตรีค ไม่มีความกดดัน มีเพียงคำตอบที่ชัดเจนว่า \"ฉันทำสิ่งนั้นครั้งล่าสุดเมื่อไหร่?\"';

  @override
  String get features => 'ฟีเจอร์';

  @override
  String get featureTrack =>
      'ติดตามกิจกรรมไม่จำกัดพร้อมช่วงกำหนดครบแบบเลือกได้';

  @override
  String get featureElapsed =>
      'ดูเวลาที่ผ่านไปตั้งแต่ทำครั้งล่าสุด พร้อมสถานะล่าสุด / ใกล้ครบกำหนด / เกินกำหนด';

  @override
  String get featureCategories => 'จัดระเบียบด้วยหมวดหมู่ที่กำหนดเอง';

  @override
  String get featureHistory => 'ประวัติเต็มพร้อมรายการย้อนหลังที่กำหนดเอง';

  @override
  String get featureInsights => 'ข้อมูลเชิงลึกพร้อมช่วงเฉลี่ยและแผนภูมิ';

  @override
  String get featureThemes => 'ธีมแบรนด์สว่างและมืด (ตามระบบ)';

  @override
  String get featureBackup => 'สำรองข้อมูลด้วยการส่งออก/นำเข้า JSON';

  @override
  String get featureOffline => 'ออฟไลน์ 100% — ข้อมูลอยู่บนอุปกรณ์ของคุณ';

  @override
  String get privacyUnableToLoad =>
      'ไม่สามารถโหลดนโยบายความเป็นส่วนตัวได้ คุณสามารถดูออนไลน์แทนได้';

  @override
  String get openOnline => 'เปิดออนไลน์';

  @override
  String get couldNotOpenPrivacyUrl =>
      'ไม่สามารถเปิด URL นโยบายความเป็นส่วนตัวได้';

  @override
  String get analyticsConsentTitle => 'ช่วยปรับปรุง RememberLast?';

  @override
  String get analyticsConsentBody =>
      'คุณสามารถเลือกแชร์การวิเคราะห์การใช้งานแบบไม่ระบุตัวตนกับ Mixpanel (เช่น หน้าจอที่คุณเข้าชมและเมื่อคุณบันทึกกิจกรรม) เราไม่ส่งชื่อกิจกรรม บันทึกย่อ หรือเนื้อหาส่วนบุคคลอื่น ๆ คุณสามารถเปลี่ยนได้ตลอดเวลาในการตั้งค่า';

  @override
  String get decline => 'ปฏิเสธ';

  @override
  String get accept => 'ยอมรับ';

  @override
  String get couldNotShareApp => 'ไม่สามารถแชร์แอปได้';

  @override
  String get couldNotOpenAppStore => 'ไม่สามารถเปิดสโตร์แอปได้';

  @override
  String get couldNotOpenEmail => 'ไม่สามารถเปิดแอปอีเมลได้';

  @override
  String get couldNotOpenDeveloperPage => 'ไม่สามารถเปิดหน้านักพัฒนาได้';

  @override
  String get justNow => 'เมื่อกี้';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ปีที่แล้ว',
      one: '1 ปีที่แล้ว',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count เดือนที่แล้ว',
      one: '1 เดือนที่แล้ว',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count วันที่แล้ว',
      one: '1 วันที่แล้ว',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ชั่วโมงที่แล้ว',
      one: '1 ชั่วโมงที่แล้ว',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count นาทีที่แล้ว',
      one: '1 นาทีที่แล้ว',
    );
    return '$_temp0';
  }
}
