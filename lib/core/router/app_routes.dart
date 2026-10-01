/// Central path constants for [GoRouter] navigation.
abstract final class AppRoutes {
  static const home = '/';
  static const insights = '/insights';
  static const settings = '/settings';
  static const activityNew = '/activity/new';

  /// Nested under [settings] (relative segment for [GoRoute] children).
  static const categoriesSegment = 'categories';
  static const aboutSegment = 'about';
  static const privacySegment = 'privacy';
  static const demoSeederSegment = 'demo-seeder';

  static const categories = '$settings/$categoriesSegment';
  static const about = '$settings/$aboutSegment';
  static const privacy = '$settings/$privacySegment';
  static const demoSeeder = '$settings/$demoSeederSegment';

  static String activityDetail(int id) => '/activity/$id';
  static String activityEdit(int id) => '/activity/$id/edit';
}
