import 'package:flutter/material.dart';

/// Single unified model representing a supported locale with its metadata.
class AppLocaleInfo {
  const AppLocaleInfo({
    required this.code,
    required this.flag,
    required this.nativeName,
    required this.englishName,
  });

  final String code;
  final String flag;
  final String nativeName;
  final String englishName;

  Locale get locale => Locale(code);
}

/// Locales shipped with RememberLast.
/// Uses a single source-of-truth list of [AppLocaleInfo] objects.
abstract final class AppLocales {
  static const all = <AppLocaleInfo>[
    AppLocaleInfo(
      code: 'en',
      flag: '🇺🇸',
      nativeName: 'English',
      englishName: 'English',
    ),
    AppLocaleInfo(
      code: 'de',
      flag: '🇩🇪',
      nativeName: 'Deutsch',
      englishName: 'German',
    ),
    AppLocaleInfo(
      code: 'ja',
      flag: '🇯🇵',
      nativeName: '日本語',
      englishName: 'Japanese',
    ),
    AppLocaleInfo(
      code: 'hi',
      flag: '🇮🇳',
      nativeName: 'हिन्दी',
      englishName: 'Hindi',
    ),
    AppLocaleInfo(
      code: 'es',
      flag: '🇪🇸',
      nativeName: 'Español',
      englishName: 'Spanish',
    ),
    AppLocaleInfo(
      code: 'lt',
      flag: '🇱🇹',
      nativeName: 'Lietuvių',
      englishName: 'Lithuanian',
    ),
    AppLocaleInfo(
      code: 'fr',
      flag: '🇫🇷',
      nativeName: 'Français',
      englishName: 'French',
    ),
    AppLocaleInfo(
      code: 'nl',
      flag: '🇳🇱',
      nativeName: 'Nederlands',
      englishName: 'Dutch',
    ),
    AppLocaleInfo(
      code: 'ro',
      flag: '🇷🇴',
      nativeName: 'Română',
      englishName: 'Romanian',
    ),
    AppLocaleInfo(
      code: 'th',
      flag: '🇹🇭',
      nativeName: 'ไทย',
      englishName: 'Thai',
    ),
    AppLocaleInfo(
      code: 'bn',
      flag: '🇧🇩',
      nativeName: 'বাংলা',
      englishName: 'Bengali',
    ),
    AppLocaleInfo(
      code: 'zh',
      flag: '🇨🇳',
      nativeName: '简体中文',
      englishName: 'Chinese (Simplified)',
    ),
    AppLocaleInfo(
      code: 'fil',
      flag: '🇵🇭',
      nativeName: 'Filipino',
      englishName: 'Filipino',
    ),
    AppLocaleInfo(
      code: 'id',
      flag: '🇮🇩',
      nativeName: 'Bahasa Indonesia',
      englishName: 'Indonesian',
    ),
    AppLocaleInfo(
      code: 'it',
      flag: '🇮🇹',
      nativeName: 'Italiano',
      englishName: 'Italian',
    ),
    AppLocaleInfo(
      code: 'ko',
      flag: '🇰🇷',
      nativeName: '한국어',
      englishName: 'Korean',
    ),
    AppLocaleInfo(
      code: 'ms',
      flag: '🇲🇾',
      nativeName: 'Bahasa Melayu',
      englishName: 'Malay',
    ),
    AppLocaleInfo(
      code: 'ne',
      flag: '🇳🇵',
      nativeName: 'नेपाली',
      englishName: 'Nepali',
    ),
    AppLocaleInfo(
      code: 'pl',
      flag: '🇵🇱',
      nativeName: 'Polski',
      englishName: 'Polish',
    ),
    AppLocaleInfo(
      code: 'pt',
      flag: '🇵🇹',
      nativeName: 'Português',
      englishName: 'Portuguese',
    ),
    AppLocaleInfo(
      code: 'tr',
      flag: '🇹🇷',
      nativeName: 'Türkçe',
      englishName: 'Turkish',
    ),
    AppLocaleInfo(
      code: 'vi',
      flag: '🇻🇳',
      nativeName: 'Tiếng Việt',
      englishName: 'Vietnamese',
    ),
  ];

  /// List of [Locale]s for MaterialApp.supportedLocales.
  static List<Locale> get supported => all.map((item) => item.locale).toList();

  /// Find [AppLocaleInfo] by ISO language code.
  static AppLocaleInfo? find(String? code) {
    if (code == null) return null;
    for (final item in all) {
      if (item.code == code) return item;
    }
    return null;
  }

  static String flag(Locale locale) => find(locale.languageCode)?.flag ?? '🌐';

  static String nativeName(Locale locale) =>
      find(locale.languageCode)?.nativeName ?? locale.languageCode;

  static String englishName(Locale locale) =>
      find(locale.languageCode)?.englishName ?? locale.languageCode;

  static Locale? parse(String? tag) {
    if (tag == null || tag == PrefsLocale.system) return null;
    return find(tag)?.locale;
  }
}

/// Stored [PrefsKeys.locale] value for following the device locale.
abstract final class PrefsLocale {
  static const system = 'system';
}
