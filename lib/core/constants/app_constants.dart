/// Central brand, marketing, and store configuration for RememberLast.
///
/// Update store / privacy URLs here once listings are live. Until then,
/// placeholders mark values that are not yet known.
abstract final class AppConstants {
  /// First half of the two-tone wordmark (ambient text color).
  static const brandPrefix = 'Remember';

  /// Second half of the two-tone wordmark (brand primary).
  static const brandSuffix = 'Last';

  /// Full display name used in titles, share subjects, and copy.
  static const appName = '$brandPrefix$brandSuffix';

  /// Light theme app logo mark asset.
  static const appLogoLight = 'assets/images/app_logo_light.png';

  /// Dark theme app logo mark asset with white hands and tick marks.
  static const appLogoDark = 'assets/images/app_logo_dark.png';

  /// Short tagline for About / marketing.
  static const tagline =
      'Offline-first Last Done Tracker — remember when you last did anything.';

  /// Footer / About label, e.g. `RememberLast v1.0.0 (1)`.
  static String versionLabel({
    required String version,
    required String buildNumber,
  }) => '$appName v$version ($buildNumber)';

  // --- URLs (replace placeholders when available) ---

  /// Hosted privacy policy (deployed with Flutter web at /privacy/).
  /// Interim URL before web deploy: GitHub blob for docs/privacy_policy.md.
  static const privacyPolicyUrl =
      'https://dr-usman.github.io/Remember_Last/privacy/';

  /// Apple App Store listing.
  static const appStoreUrl =
      'https://apps.apple.com/app/idXXXXXXXXX'; // TODO: replace

  /// Google Play Store listing.
  static const playStoreUrl =
      'https://play.google.com/store/apps/details?id=com.avenzor.remember_last';

  /// Google Play developer profile (Avenzor House).
  static const developerPageUrl =
      'https://play.google.com/store/apps/dev?id=5809108425817759974';

  /// Contact Us email
  static const contactUsEmail = 'dr.usman7860@gmail.com';

  /// Subject line for Contact us mailto links.
  static const contactFeedbackSubject = 'RememberLast feedback';

  /// Whether [url] is safe to open or share (not empty and not a placeholder).
  static bool isUsableUrl(String url) {
    if (url.isEmpty) return false;
    return !url.contains('XXXXXXXXX');
  }
}
