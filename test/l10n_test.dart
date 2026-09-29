import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:remember_last/core/utils/date_formatter.dart';
import 'package:remember_last/features/settings/presentation/widgets/language_picker_tile.dart';
import 'package:remember_last/l10n/app_localizations.dart';
import 'package:remember_last/l10n/app_locales.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'helpers/l10n_wrap.dart';

void main() {
  setUpAll(() async {
    await initializeDateFormatting();
  });

  test('DateFormatter.formatElapsed uses English plurals', () async {
    final l10n = await AppLocalizations.delegate.load(const Locale('en'));
    final now = DateTime(2026, 9, 3, 12);
    expect(
      DateFormatter.formatElapsed(
        now.subtract(const Duration(minutes: 5)),
        l10n,
        now: now,
      ),
      '5 minutes ago',
    );
    expect(
      DateFormatter.formatElapsed(
        now.subtract(const Duration(days: 1)),
        l10n,
        now: now,
      ),
      '1 day ago',
    );
    expect(DateFormatter.formatElapsed(now, l10n, now: now), 'Just now');
  });

  testWidgets('German chrome is used when locale is de', (tester) async {
    await tester.pumpWidget(
      wrapApp(
        Builder(
          builder: (context) {
            return Text(AppLocalizations.of(context).settings);
          },
        ),
        locale: const Locale('de'),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Einstellungen'), findsOneWidget);
  });

  testWidgets('Lithuanian chrome is used when locale is lt', (tester) async {
    await tester.pumpWidget(
      wrapApp(
        Builder(
          builder: (context) {
            return Text(AppLocalizations.of(context).settings);
          },
        ),
        locale: const Locale('lt'),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Nustatymai'), findsOneWidget);
  });

  test('AppLocales covers every generated locale', () {
    final generated = AppLocalizations.supportedLocales
        .map((l) => l.languageCode)
        .toSet();
    final catalog = AppLocales.supported.map((l) => l.languageCode).toSet();
    expect(catalog, generated);
  });

  testWidgets('Language picker sheet shows native and English names', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});

    await tester.pumpWidget(
      ProviderScope(child: wrapApp(const Scaffold(body: LanguagePickerTile()))),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.byType(LanguagePickerTile));
    await tester.pumpAndSettle();

    expect(find.text('Deutsch'), findsOneWidget);
    expect(find.text('German'), findsOneWidget);
    // Tile subtitle + sheet row both show this label.
    expect(find.text('System default'), findsWidgets);
  });
}
