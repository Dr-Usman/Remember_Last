import 'package:flutter/material.dart';

/// Locales shipped with RememberLast (English source + machine-translated ARBs).
abstract final class AppLocales {
  static const supported = <Locale>[
    Locale('en'),
    Locale('de'),
    Locale('ro'),
    Locale('th'),
    Locale('zh'),
    Locale('es'),
    Locale('hi'),
    Locale('bn'),
    Locale('ne'),
    Locale('ms'),
    Locale('fil'),
    Locale('id'),
    Locale('fr'),
    Locale('it'),
    Locale('pt'),
    Locale('pl'),
    Locale('nl'),
    Locale('vi'),
    Locale('tr'),
    Locale('ja'),
    Locale('ko'),
    Locale('lt'),
  ];

  /// Native language names for the Settings picker.
  static const nativeNames = <String, String>{
    'en': 'English',
    'de': 'Deutsch',
    'ro': 'Română',
    'th': 'ไทย',
    'zh': '简体中文',
    'es': 'Español',
    'hi': 'हिन्दी',
    'bn': 'বাংলা',
    'ne': 'नेपाली',
    'ms': 'Bahasa Melayu',
    'fil': 'Filipino',
    'id': 'Bahasa Indonesia',
    'fr': 'Français',
    'it': 'Italiano',
    'pt': 'Português',
    'pl': 'Polski',
    'nl': 'Nederlands',
    'vi': 'Tiếng Việt',
    'tr': 'Türkçe',
    'ja': '日本語',
    'ko': '한국어',
    'lt': 'Lietuvių',
  };

  /// English language names shown as secondary labels in the picker.
  static const englishNames = <String, String>{
    'en': 'English',
    'de': 'German',
    'ro': 'Romanian',
    'th': 'Thai',
    'zh': 'Chinese (Simplified)',
    'es': 'Spanish',
    'hi': 'Hindi',
    'bn': 'Bengali',
    'ne': 'Nepali',
    'ms': 'Malay',
    'fil': 'Filipino',
    'id': 'Indonesian',
    'fr': 'French',
    'it': 'Italian',
    'pt': 'Portuguese',
    'pl': 'Polish',
    'nl': 'Dutch',
    'vi': 'Vietnamese',
    'tr': 'Turkish',
    'ja': 'Japanese',
    'ko': 'Korean',
    'lt': 'Lithuanian',
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
