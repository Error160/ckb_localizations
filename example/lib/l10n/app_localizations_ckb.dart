// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Central Kurdish (`ckb`).
class AppLocalizationsCkb extends AppLocalizations {
  AppLocalizationsCkb([String locale = 'ckb']) : super(locale);

  @override
  String get appName => 'يك دو سي';

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
