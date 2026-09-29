// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get cancel => '취소';

  @override
  String get delete => '삭제';

  @override
  String get save => '저장';

  @override
  String get add => '추가';

  @override
  String get edit => '편집';

  @override
  String get rename => '이름 바꾸기';

  @override
  String get merge => '병합';

  @override
  String get settings => '설정';

  @override
  String get insights => '인사이트';

  @override
  String get about => '정보';

  @override
  String get appearance => '모양';

  @override
  String get themeSystem => '시스템';

  @override
  String get themeLight => '라이트';

  @override
  String get themeDark => '다크';

  @override
  String get language => '언어';

  @override
  String get languageSystemDefault => '시스템 기본값';

  @override
  String get organize => '정리';

  @override
  String get manageCategories => '카테고리 관리';

  @override
  String get manageCategoriesSubtitle => '활동 카테고리 추가 또는 제거';

  @override
  String get data => '데이터';

  @override
  String get exportBackup => '백업 내보내기';

  @override
  String get exportBackupSubtitle => '데이터를 JSON으로 저장';

  @override
  String get importBackup => '백업 가져오기';

  @override
  String get importBackupSubtitle => 'JSON 파일에서 복원';

  @override
  String get privacy => '개인정보';

  @override
  String get usageAnalytics => '사용 분석';

  @override
  String get usageAnalyticsSubtitle => 'Mixpanel을 통해 익명 화면 및 기능 사용을 공유';

  @override
  String aboutApp(String appName) {
    return '$appName 정보';
  }

  @override
  String get shareApp => '앱 공유';

  @override
  String shareAppSubtitle(String appName) {
    return '친구에게 $appName 소개하기';
  }

  @override
  String get rateApp => '앱 평가';

  @override
  String get rateAppSubtitle => '앱 스토어에 리뷰 남기기';

  @override
  String get contactUs => '문의하기';

  @override
  String get contactUsSubtitle => '피드백 보내기 또는 버그 신고';

  @override
  String get moreApps => '더 많은 앱';

  @override
  String get moreAppsSubtitle => '개발자의 다른 앱';

  @override
  String get privacyPolicy => '개인정보 처리방침';

  @override
  String backupShareSubject(String appName) {
    return '$appName 백업';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => '아직 아무것도 없습니다';

  @override
  String get emptyNothingYetMessage =>
      '마지막으로 무언가를 한 시점을 추적하세요 — 식물에 물 주기, 세차, 가족에게 전화.';

  @override
  String get addActivity => '활동 추가';

  @override
  String get addActivityFab => '활동 추가';

  @override
  String get noMatches => '일치 항목 없음';

  @override
  String get noMatchesFilter => '검색 또는 필터와 일치하는 활동이 없습니다.';

  @override
  String get nothingToShow => '지금은 표시할 내용이 없습니다.';

  @override
  String get clearFilters => '필터 지우기';

  @override
  String errorWithDetails(String error) {
    return '오류: $error';
  }

  @override
  String get deleteActivityTitle => '활동을 삭제할까요?';

  @override
  String deleteActivityMessage(String title) {
    return '\"$title\"과(와) 모든 기록을 삭제할까요?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return '\"$title\"과(와) 모든 기록을 삭제할까요? 이 작업은 되돌릴 수 없습니다.';
  }

  @override
  String deletedActivity(String title) {
    return '\"$title\"을(를) 삭제했습니다';
  }

  @override
  String loggedNow(String title) {
    return '\"$title\"을(를) 지금 기록했습니다';
  }

  @override
  String get searchHint => '활동 검색...';

  @override
  String sortTooltip(String sort) {
    return '정렬: $sort';
  }

  @override
  String get sortRecentlyDone => '최근 완료';

  @override
  String get sortOverdueFirst => '기한 초과 우선';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => '전체';

  @override
  String get editActivity => '활동 편집';

  @override
  String get newActivity => '새 활동';

  @override
  String get titleLabel => '제목 *';

  @override
  String get titleHint => '예: 식물에 물 주기';

  @override
  String get titleRequired => '제목은 필수입니다';

  @override
  String get categoryLabel => '카테고리';

  @override
  String get categoryHint => '집, 차량, 개인...';

  @override
  String get notes => '메모';

  @override
  String get dueInterval => '기한 간격';

  @override
  String get markDueEveryXDays => 'X일마다 기한으로 표시';

  @override
  String get dueIntervalSubtitle => '곧 기한 / 기한 초과 상태를 표시합니다';

  @override
  String get frequencyPreset => '빈도 프리셋';

  @override
  String get daysUntilDue => '기한까지 남은 일수';

  @override
  String get daysSuffix => '일';

  @override
  String fixedByPreset(String preset) {
    return '$preset 프리셋으로 고정됨';
  }

  @override
  String get invalidDays => '유효한 일수를 입력하세요';

  @override
  String get saveChanges => '변경 사항 저장';

  @override
  String get createActivity => '활동 만들기';

  @override
  String get reminderNone => '없음';

  @override
  String get reminderDaily => '매일';

  @override
  String get reminderWeekly => '매주';

  @override
  String get reminderMonthly => '매월';

  @override
  String get reminderCustom => '사용자 지정';

  @override
  String get statusNeverLogged => '기록 없음';

  @override
  String get statusLogged => '기록됨';

  @override
  String get statusRecent => '최근';

  @override
  String get statusDueSoon => '곧 기한';

  @override
  String get statusOverdue => '기한 초과';

  @override
  String get editEntry => '항목 편집';

  @override
  String get addEntry => '항목 추가';

  @override
  String get date => '날짜';

  @override
  String get time => '시간';

  @override
  String get noteOptional => '메모(선택)';

  @override
  String get saveEntry => '항목 저장';

  @override
  String get activityNotFound => '활동을 찾을 수 없음';

  @override
  String get history => '기록';

  @override
  String get noLogsYet => '아직 로그 없음';

  @override
  String get logNow => '지금 기록';

  @override
  String get addCustomEntry => '사용자 지정 항목 추가';

  @override
  String get lastDone => '마지막 완료';

  @override
  String get nextDue => '다음 기한';

  @override
  String get deleteEntryTitle => '항목을 삭제할까요?';

  @override
  String get deleteEntryMessage => '이 로그 항목을 영구적으로 제거할까요?';

  @override
  String get categoriesTitle => '카테고리';

  @override
  String get noCategoriesYet => '아직 카테고리가 없습니다. 추가를 눌러 만드세요.';

  @override
  String get deleteCategoryTitle => '카테고리를 삭제할까요?';

  @override
  String deleteCategoryMessage(String name) {
    return '추천에서 \"$name\"을(를) 제거할까요? 이를 사용하는 활동은 카테고리를 유지합니다.';
  }

  @override
  String get newCategory => '새 카테고리';

  @override
  String get categoryHintExample => '예: 피트니스';

  @override
  String get categoryAlreadyExists => '카테고리가 이미 있습니다';

  @override
  String get renameCategory => '카테고리 이름 바꾸기';

  @override
  String get backupExported => '백업을 성공적으로 내보냈습니다';

  @override
  String exportFailed(String error) {
    return '내보내기 실패: $error';
  }

  @override
  String get importBackupTitle => '백업 가져오기';

  @override
  String get importBackupMessage =>
      '가져온 데이터를 기존 활동과 병합할까요? 모든 데이터를 바꾸려면 취소를 선택한 뒤 다시 가져오세요.';

  @override
  String get replaceAllDataTitle => '모든 데이터를 바꿀까요?';

  @override
  String get replaceAllDataMessage => '가져오기 전에 기존 활동과 발생 기록이 모두 삭제됩니다.';

  @override
  String get replaceAll => '모두 바꾸기';

  @override
  String importedCounts(int activities, int occurrences) {
    return '활동 $activities개와 로그 $occurrences개를 가져왔습니다';
  }

  @override
  String importFailed(String error) {
    return '가져오기 실패: $error';
  }

  @override
  String get insightsEmpty => '아직 데이터가 없습니다. 활동을 기록해 보세요!';

  @override
  String get activityBreakdown => '활동 분석';

  @override
  String get overview => '개요';

  @override
  String get statActivities => '활동';

  @override
  String get statTotalLogs => '총 로그';

  @override
  String mostOverdue(String title) {
    return '가장 기한 초과: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return '로그 간격 — $title';
  }

  @override
  String get intervalsCaption => '각 막대는 다시 기록하기 전에 기다린 일수입니다(최신 순).';

  @override
  String get latestGap => '최근 간격';

  @override
  String get average => '평균';

  @override
  String get reminder => '알림';

  @override
  String daysValue(String days) {
    return '$days일';
  }

  @override
  String get needTwoLogs => '항목 사이 간격을 보려면 로그가 최소 2개 필요합니다';

  @override
  String get daysBetweenLogs => '로그 사이 일수';

  @override
  String get reminderTarget => '알림 목표';

  @override
  String averageDaysShort(String days) {
    return '평균 ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return '알림 ${days}d';
  }

  @override
  String gapNumber(int number) {
    return '간격 $number';
  }

  @override
  String get latest => '최신';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '로그 $count개',
      one: '로그 1개',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '로그 $count개',
      one: '로그 1개',
    );
    return '$_temp0 • 평균 $avg일';
  }

  @override
  String tooltipDays(String days) {
    return '$days일';
  }

  @override
  String aboutBody(String appName) {
    return '$appName은 간단하고 오프라인 우선인 앱으로, 마지막으로 무언가를 한 시점을 추적하도록 도와줍니다 — 식물에 물 주기, 세차, 가족에게 전화 등.';
  }

  @override
  String get aboutTagline =>
      '연속 기록도, 압박도 없습니다. \"그걸 마지막에 언제 했지?\"에 대한 분명한 답만 있습니다.';

  @override
  String get features => '기능';

  @override
  String get featureTrack => '선택적 기한 간격으로 무제한 활동 추적';

  @override
  String get featureElapsed => '마지막 완료 이후 경과 시간을 최근 / 곧 기한 / 기한 초과 상태와 함께 확인';

  @override
  String get featureCategories => '사용자 지정 카테고리로 정리';

  @override
  String get featureHistory => '사용자 지정 과거 날짜 항목이 있는 전체 기록';

  @override
  String get featureInsights => '평균 간격과 차트가 있는 인사이트';

  @override
  String get featureThemes => '라이트 및 다크 브랜드 테마(시스템 따름)';

  @override
  String get featureBackup => 'JSON 내보내기/가져오기 백업';

  @override
  String get featureOffline => '100% 오프라인 — 데이터는 기기에 남습니다';

  @override
  String get privacyUnableToLoad => '개인정보 처리방침을 불러올 수 없습니다. 온라인에서 볼 수 있습니다.';

  @override
  String get openOnline => '온라인으로 열기';

  @override
  String get couldNotOpenPrivacyUrl => '개인정보 처리방침 URL을 열 수 없습니다';

  @override
  String get analyticsConsentTitle => 'RememberLast 개선에 도움을 주시겠어요?';

  @override
  String get analyticsConsentBody =>
      'Mixpanel과 익명 사용 분석을 선택적으로 공유할 수 있습니다(방문한 화면과 활동을 기록한 시점 등). 활동 제목, 메모 또는 기타 개인 콘텐츠는 절대 보내지 않습니다. 설정에서 언제든지 변경할 수 있습니다.';

  @override
  String get decline => '거부';

  @override
  String get accept => '동의';

  @override
  String get couldNotShareApp => '앱을 공유할 수 없습니다';

  @override
  String get couldNotOpenAppStore => '앱 스토어를 열 수 없습니다';

  @override
  String get couldNotOpenEmail => '이메일 앱을 열 수 없습니다';

  @override
  String get couldNotOpenDeveloperPage => '개발자 페이지를 열 수 없습니다';

  @override
  String get justNow => '방금';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count년 전',
      one: '1년 전',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개월 전',
      one: '1개월 전',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일 전',
      one: '1일 전',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count시간 전',
      one: '1시간 전',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count분 전',
      one: '1분 전',
    );
    return '$_temp0';
  }
}
