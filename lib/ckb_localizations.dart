library ckb_localizations;

import 'package:flutter/material.dart';

import 'src/localization.dart';

/// Ckb Localizations for Material and Cupertino widgets and widgets that use Material or Cupertino widgets
abstract final class CkbLocalizations {
  static const String localeName = 'ckb';

  static const Locale locale = Locale(localeName);

  /// Ckb Cupertino Localizations
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    CupertinoLocalizationCkb.delegate,
    WidgetsLocalizationCkb.delegate,
    MaterialLocalizationCkb.delegate,
  ];
}
