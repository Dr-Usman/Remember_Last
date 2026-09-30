import 'package:intl/intl.dart';

import '../../l10n/app_localizations.dart';

/// Formats dates for display across the app.
class DateFormatter {
  /// Returns a human-readable elapsed string like "3 days ago".
  static String formatElapsed(
    DateTime dateTime,
    AppLocalizations l10n, {
    DateTime? now,
  }) {
    final current = now ?? DateTime.now();
    final diff = current.difference(dateTime);

    if (diff.isNegative) {
      return l10n.justNow;
    }
    if (diff.inDays >= 365) {
      return l10n.yearsAgo(diff.inDays ~/ 365);
    }
    if (diff.inDays >= 30) {
      return l10n.monthsAgo(diff.inDays ~/ 30);
    }
    if (diff.inDays >= 1) {
      return l10n.daysAgo(diff.inDays);
    }
    if (diff.inHours >= 1) {
      return l10n.hoursAgo(diff.inHours);
    }
    if (diff.inMinutes >= 1) {
      return l10n.minutesAgo(diff.inMinutes);
    }
    return l10n.justNow;
  }

  static String formatAbsoluteDate(DateTime dateTime, String locale) {
    return DateFormat.yMMMd(locale).format(dateTime);
  }

  static String formatAbsoluteDateWithDay(DateTime dateTime, String locale) {
    return DateFormat.yMMMEd(locale).format(dateTime);
  }

  static String formatAbsoluteDateTime(DateTime dateTime, String locale) {
    final date = DateFormat.yMMMEd(locale).format(dateTime);
    final time = DateFormat.jm(locale).format(dateTime);
    return '$date • $time';
  }

  static String formatTime(DateTime dateTime, String locale) {
    return DateFormat.jm(locale).format(dateTime);
  }
}
