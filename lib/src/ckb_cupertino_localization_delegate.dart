import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/date_symbols.dart';
import 'package:intl/intl.dart' as intl;

final _ckbLocaleDatePatterns = {
  'd': 'd.',
  'E': 'ccc',
  'EEEE': 'cccc',
  'LLL': 'LLL',
  'LLLL': 'LLLL',
  'M': 'L.',
  'Md': 'd.M.',
  'MEd': 'EEE d.M.',
  'MMM': 'LLL',
  'MMMd': 'd. MMM',
  'MMMEd': 'EEE d. MMM',
  'MMMM': 'LLLL',
  'MMMMd': 'd. MMMM',
  'MMMMEEEEd': 'EEEE d. MMMM',
  'QQQ': 'QQQ',
  'QQQQ': 'QQQQ',
  'y': 'y',
  'yM': 'M.y',
  'yMd': 'd.M.y',
  'yMEd': 'EEE d.MM.y',
  'yMMM': 'MMM y',
  'yMMMd': 'd. MMM y',
  'yMMMEd': 'EEE d. MMM y',
  'yMMMM': 'MMMM y',
  'yMMMMd': 'd. MMMM y',
  'yMMMMEEEEd': 'EEEE d. MMMM y',
  'yQQQ': 'QQQ y',
  'yQQQQ': 'QQQQ y',
  'H': 'HH',
  'Hm': 'HH:mm',
  'Hms': 'HH:mm:ss',
  'j': 'HH',
  'jm': 'HH:mm',
  'jms': 'HH:mm:ss',
  'jmv': 'HH:mm v',
  'jmz': 'HH:mm z',
  'jz': 'HH z',
  'm': 'm',
  'ms': 'mm:ss',
  's': 's',
  'v': 'v',
  'z': 'z',
  'zzzz': 'zzzz',
  'ZZZZ': 'ZZZZ',
};

final ckbDateSymbols = DateSymbols(
  NAME: 'ar',
  ERAS: ['پ.ز', 'ز'],
  ERANAMES: ['پێش زاینی', 'زاینی'],
  NARROWMONTHS: [
    'ک.د',
    'ش',
    'ز',
    'ن',
    'م',
    'ح',
    'ت',
    'ئ',
    'ل',
    'ت.ی',
    'ت.د',
    'ک.ی',
  ],
  STANDALONENARROWMONTHS: [
    'ک.د',
    'ش',
    'ز',
    'ن',
    'م',
    'ح',
    'ت',
    'ئ',
    'ل',
    'ت.ی',
    'ت.د',
    'ک.ی',
  ],
  MONTHS: [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  STANDALONEMONTHS: [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  SHORTMONTHS: [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  STANDALONESHORTMONTHS: [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  WEEKDAYS: [
    'یەکشەممە',
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە',
  ],
  STANDALONEWEEKDAYS: [
    'یەکشەممە',
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە',
  ],
  SHORTWEEKDAYS: [
    'یەکشەم',
    'دووشەم',
    'سێشەم',
    'چوارشەم',
    'پێنجشەم',
    'هەینی',
    'شەممە',
  ],
  STANDALONESHORTWEEKDAYS: [
    'یەکشەم',
    'دووشەم',
    'سێشەم',
    'چوارشەم',
    'پێنجشەم',
    'هەینی',
    'شەممە',
  ],
  NARROWWEEKDAYS: ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'],
  STANDALONENARROWWEEKDAYS: ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'],
  SHORTQUARTERS: ['چ١', 'چ٢', 'چ٣', 'چ٤'],
  QUARTERS: ['چارەکی یەکەم', 'چارەکی دووەم', 'چارەکی سێیەم', 'چارەکی چوارەم'],
  AMPMS: ['پ.ن', 'د.ن'],
  DATEFORMATS: [
    'EEEE، d MMMM y',
    'd MMMM y',
    'dd‏/MM‏/y',
    'd‏/M‏/y',
  ],
  TIMEFORMATS: [
    'h:mm:ss a zzzz',
    'h:mm:ss a z',
    'h:mm:ss a',
    'h:mm a',
  ],
  FIRSTDAYOFWEEK: 5,
  WEEKENDRANGE: [4, 5],
  FIRSTWEEKCUTOFFDAY: 3,
  DATETIMEFORMATS: [
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
  ],
);

class _CupertinoLocalizationsDelegateCkb
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const _CupertinoLocalizationsDelegateCkb();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ckb';

  @override
  Future<CupertinoLocalizations> load(Locale locale) async {
    const String localeName = "ar";

    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: _ckbLocaleDatePatterns,
      symbols: ckbDateSymbols,
    );

    return SynchronousFuture<CupertinoLocalizations>(
      CupertinoLocalizationCkb(
        localeName: localeName,
        decimalFormat: intl.NumberFormat('#,##0.###', localeName),
        fullYearFormat: intl.DateFormat('y', localeName),
        dayFormat: intl.DateFormat('yMd', localeName),
        doubleDigitMinuteFormat: intl.DateFormat('yMMMd', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        singleDigitHourFormat: intl.DateFormat('EEEE, MMMM d, y', localeName),
        singleDigitMinuteFormat: intl.DateFormat('MMMM y', localeName),
        singleDigitSecondFormat: intl.DateFormat('MMM d', localeName),
      ),
    );
  }

  @override
  bool shouldReload(_CupertinoLocalizationsDelegateCkb old) => false;
}

class CupertinoLocalizationCkb extends GlobalCupertinoLocalizations {
  const CupertinoLocalizationCkb({
    super.localeName = 'ckb',
    required super.fullYearFormat,
    required super.dayFormat,
    required super.mediumDateFormat,
    required super.singleDigitHourFormat,
    required super.singleDigitMinuteFormat,
    required super.doubleDigitMinuteFormat,
    required super.singleDigitSecondFormat,
    required super.decimalFormat,
  });

  static const LocalizationsDelegate<CupertinoLocalizations> delegate =
      _CupertinoLocalizationsDelegateCkb();

  @override
  String get alertDialogLabel => 'ئاگاداری';

  @override
  String get anteMeridiemAbbreviation => 'س';

  @override
  String get copyButtonLabel => 'کۆپیەکانی';

  @override
  String get cutButtonLabel => 'ئەو گووتی';

  @override
  String get datePickerDateOrderString => 'dmy';

  @override
  String get datePickerDateTimeOrderString => 'date_time_dayPeriod';

  @override
  String? get datePickerHourSemanticsLabelFew => r'$hour بە تەواوی';

  @override
  String? get datePickerHourSemanticsLabelMany => r'$hour بە تەواوی';

  @override
  String? get datePickerHourSemanticsLabelOne => r'$hour بە تەواوی';

  @override
  String get datePickerHourSemanticsLabelOther => r'$hour بە تەواوی';

  @override
  String? get datePickerHourSemanticsLabelTwo => r'$hour بە تەواوی';

  @override
  String? get datePickerHourSemanticsLabelZero => r'$hour بە تەواوی';

  @override
  String? get datePickerMinuteSemanticsLabelFew => r'$خولەک خولەک';

  @override
  String? get datePickerMinuteSemanticsLabelMany => r'$minute خولەک';

  @override
  String? get datePickerMinuteSemanticsLabelOne => 'یه‌ك خوله‌ك';

  @override
  String get datePickerMinuteSemanticsLabelOther => r'$minute خولەک';

  @override
  String? get datePickerMinuteSemanticsLabelTwo => r'دوو خولەک ($minute)';

  @override
  String? get datePickerMinuteSemanticsLabelZero => r'$خولەک خولەک';

  @override
  String get lookUpButtonLabel => 'بە دوادا گەڕان';

  @override
  String get menuDismissLabel => 'مینیوی داخستنی';

  @override
  String get modalBarrierDismissLabel => 'بۆ ڕەتکردنەوە';

  @override
  String get noSpellCheckReplacementsLabel => 'هیچ بەدیلێک نەدۆزراوەتەوە';

  @override
  String get pasteButtonLabel => 'چەسپاو';

  @override
  String get postMeridiemAbbreviation => 'م';

  @override
  String get searchTextFieldPlaceholderLabel => 'توێژینەوە';

  @override
  String get searchWebButtonLabel => 'وێبی گەڕان';

  @override
  String get selectAllButtonLabel => 'دیاری کردنی هەموو';

  @override
  String get shareButtonLabel => 'هاوبەشکردن...';

  @override
  String get tabSemanticsLabelRaw => r'تاب $tabIndex ى $tabCount';

  @override
  String? get timerPickerHourLabelFew => 'کاتژمێر';

  @override
  String? get timerPickerHourLabelMany => 'کاتژمێر';

  @override
  String? get timerPickerHourLabelOne => 'کاتژمێر';

  @override
  String get timerPickerHourLabelOther => 'کاتژمێر';

  @override
  String? get timerPickerHourLabelTwo => 'دوو کاتژمێر';

  @override
  String? get timerPickerHourLabelZero => 'کاتژمێر';

  @override
  String? get timerPickerMinuteLabelFew => 'کۆنووس';

  @override
  String? get timerPickerMinuteLabelMany => 'خولەک';

  @override
  String? get timerPickerMinuteLabelOne => 'یه‌ك خوله‌ك';

  @override
  String get timerPickerMinuteLabelOther => 'خولەک';

  @override
  String? get timerPickerMinuteLabelTwo => 'دوو خولەك';

  @override
  String? get timerPickerMinuteLabelZero => 'خولەک';

  @override
  String? get timerPickerSecondLabelFew => 'چرکەیەک';

  @override
  String? get timerPickerSecondLabelMany => 'دووەم';

  @override
  String? get timerPickerSecondLabelOne => 'یەک چرکە';

  @override
  String get timerPickerSecondLabelOther => 'دووەم';

  @override
  String? get timerPickerSecondLabelTwo => 'دوو چرکە';

  @override
  String? get timerPickerSecondLabelZero => 'دووەم';

  @override
  String get todayLabel => 'ئەمڕۆ';
}
