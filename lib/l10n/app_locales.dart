import 'package:flutter/material.dart';

/// Locales shipped with RememberLast (English source + machine-translated ARBs).
abstract final class AppLocales {
  static const supported = <Locale>[
    Locale('en'),
    Locale('bn'),
    Locale('zh'),
    Locale('nl'),
    Locale('fil'),
    Locale('fr'),
    Locale('de'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('lt'),
    Locale('ms'),
    Locale('ne'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('es'),
    Locale('th'),
    Locale('tr'),
    Locale('vi'),
  ];

  /// Native language names for the Settings picker.
  static const nativeNames = <String, String>{
    'en': 'English',
    'bn': 'বাংলা',
    'zh': '简体中文',
    'nl': 'Nederlands',
    'fil': 'Filipino',
    'fr': 'Français',
    'de': 'Deutsch',
    'hi': 'हिन्दी',
    'id': 'Bahasa Indonesia',
    'it': 'Italiano',
    'ja': '日本語',
    'ko': '한국어',
    'lt': 'Lietuvių',
    'ms': 'Bahasa Melayu',
    'ne': 'नेपाली',
    'pl': 'Polski',
    'pt': 'Português',
    'ro': 'Română',
    'es': 'Español',
    'th': 'ไทย',
    'tr': 'Türkçe',
    'vi': 'Tiếng Việt',
  };

  /// English language names shown as secondary labels in the picker.
  static const englishNames = <String, String>{
    'en': 'English',
    'bn': 'Bengali',
    'zh': 'Chinese (Simplified)',
    'nl': 'Dutch',
    'fil': 'Filipino',
    'fr': 'French',
    'de': 'German',
    'hi': 'Hindi',
    'id': 'Indonesian',
    'it': 'Italian',
    'ja': 'Japanese',
    'ko': 'Korean',
    'lt': 'Lithuanian',
    'ms': 'Malay',
    'ne': 'Nepali',
    'pl': 'Polish',
    'pt': 'Portuguese',
    'ro': 'Romanian',
    'es': 'Spanish',
    'th': 'Thai',
    'tr': 'Turkish',
    'vi': 'Vietnamese',
  };

  static String nativeName(Locale locale) =>
      nativeNames[locale.languageCode] ?? locale.languageCode;

  static String englishName(Locale locale) =>
      englishNames[locale.languageCode] ?? locale.languageCode;

  static Locale? parse(String? tag) {
    if (tag == null || tag == PrefsLocale.system) return null;
    for (final locale in supported) {
      if (locale.languageCode == tag) return locale;
    }
    return null;
  }
}

/// Stored [PrefsKeys.locale] value for following the device locale.
abstract final class PrefsLocale {
  static const system = 'system';
}
