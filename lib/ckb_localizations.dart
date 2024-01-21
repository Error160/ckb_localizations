library ckb_localizations;

import 'package:flutter/material.dart';

import 'src/localization.dart';

/// Ckb Localizations for Material and Cupertino widgets and widgets that use Material or Cupertino widgets
abstract final class CkbLocalizations {
  /// Ckb Locale
  static const Locale locale = Locale("ckb");

  /// Ckb Cupertino Localizations
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    CupertinoLocalizationCkb.delegate,
    WidgetsLocalizationCkb.delegate,
    MaterialLocalizationCkb.delegate,
  ];
}
