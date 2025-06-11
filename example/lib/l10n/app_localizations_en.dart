// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Flutter';

  @override
  String stringFormat(String version) {
    return '$version نسخه';
  }

  @override
  String datetimeFormat(DateTime version) {
    final intl.DateFormat versionDateFormat = intl.DateFormat.yMd(localeName);
    final String versionString = versionDateFormat.format(version);

    return '$versionString نسخه';
  }
}
