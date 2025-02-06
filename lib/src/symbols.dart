// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:ckb_localizations/ckb_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart';
import 'package:intl/date_symbols.dart';
import 'package:intl/number_symbols.dart';
import 'package:intl/number_symbols_data.dart';

const Map<String, String> localeDatePatternsCkb = {
  'd': 'd', // DAY
  'E': 'EEE', // ABBR_WEEKDAY
  'EEEE': 'EEEE', // WEEKDAY
  'LLL': 'LLL', // ABBR_STANDALONE_MONTH
  'LLLL': 'LLLL', // STANDALONE_MONTH
  'M': 'M', // NUM_MONTH
  'Md': 'd\u200F/M', // NUM_MONTH_DAY
  'MEd': 'EEE، d\u200F/M', // NUM_MONTH_WEEKDAY_DAY
  'MMM': 'LLL', // ABBR_MONTH
  'MMMd': 'd MMM', // ABBR_MONTH_DAY
  'MMMEd': 'EEE، d MMM', // ABBR_MONTH_WEEKDAY_DAY
  'MMMM': 'LLLL', // MONTH
  'MMMMd': 'd MMMM', // MONTH_DAY
  'MMMMEEEEd': 'EEEE، d MMMM', // MONTH_WEEKDAY_DAY
  'QQQ': 'QQQ', // ABBR_QUARTER
  'QQQQ': 'QQQQ', // QUARTER
  'y': 'y', // YEAR
  'yM': 'M\u200F/y', // YEAR_NUM_MONTH
  'yMd': 'd\u200F/M\u200F/y', // YEAR_NUM_MONTH_DAY
  'yMEd': 'EEE، d\u200F/M\u200F/y', // YEAR_NUM_MONTH_WEEKDAY_DAY
  'yMMM': 'MMM y', // YEAR_ABBR_MONTH
  'yMMMd': 'd MMM y', // YEAR_ABBR_MONTH_DAY
  'yMMMEd': 'EEE، d MMM y', // YEAR_ABBR_MONTH_WEEKDAY_DAY
  'yMMMM': 'MMMM y', // YEAR_MONTH
  'yMMMMd': 'd MMMM y', // YEAR_MONTH_DAY
  'yMMMMEEEEd': 'EEEE، d MMMM y', // YEAR_MONTH_WEEKDAY_DAY
  'yQQQ': 'QQQ y', // YEAR_ABBR_QUARTER
  'yQQQQ': 'QQQQ y', // YEAR_QUARTER
  'H': 'H', // HOUR24
  'Hm': 'HH:mm', // HOUR24_MINUTE
  'Hms': 'HH:mm:ss', // HOUR24_MINUTE_SECOND
  'j': 'h a', // HOURw
  'jm': 'h:mm a', // HOUR_MINUTE
  'jms': 'h:mm:ss a', // HOUR_MINUTE_SECOND
  'jmv': 'h:mm a v', // HOUR_MINUTE_GENERIC_TZ
  'jmz': 'h:mm a z', // HOUR_MINUTETZ
  'jz': 'h a z', // HOURGENERIC_TZ
  'm': 'm', // MINUTE
  'ms': 'mm:ss', // MINUTE_SECOND
  's': 's', // SECOND
  'v': 'v', // ABBR_GENERIC_TZ
  'z': 'z', // ABBR_SPECIFIC_TZ
  'zzzz': 'zzzz', // SPECIFIC_TZ
  'ZZZZ': 'ZZZZ', // ABBR_UTC_TZ
};

final DateSymbols dateSymbolsCkb = DateSymbols(
  NAME: 'ckb',
  ZERODIGIT: '\u0660',
  ERAS: const ['پ.ز', 'ز'],
  ERANAMES: const ['پێش زایین', 'زایینی'],
  NARROWMONTHS: const [
    'ژ',
    'ف',
    'م',
    'ئ',
    'م',
    'ڕ',
    'ت',
    'ئ',
    'ئ',
    'ت',
    'ت',
    'ک',
  ],
  STANDALONENARROWMONTHS: const [
    'ژ',
    'ف',
    'م',
    'ئ',
    'م',
    'ڕ',
    'ت',
    'ئ',
    'ئ',
    'ت',
    'ت',
    'ک',
  ],
  MONTHS: const [
    'ژانویه',
    'فێوریه',
    'مارس',
    'ئەڤریل',
    'مەی',
    'ڕزەران',
    'تەمموز',
    'ئاوڕێ',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  STANDALONEMONTHS: const [
    'ژانویه',
    'فێوریه',
    'مارس',
    'ئەڤریل',
    'مەی',
    'ڕزەران',
    'تەمموز',
    'ئاوڕێ',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  SHORTMONTHS: const [
    'ژانویه',
    'فێوریه',
    'مارس',
    'ئەڤریل',
    'مەی',
    'ڕزەران',
    'تەمموز',
    'ئاوڕێ',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  STANDALONESHORTMONTHS: const [
    'ژانویه',
    'فێوریه',
    'مارس',
    'ئەڤریل',
    'مەی',
    'ڕزەران',
    'تەمموز',
    'ئاوڕێ',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  WEEKDAYS: const [
    'یەکشەممە',
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە',
  ],
  STANDALONEWEEKDAYS: const [
    'یەکشەممە',
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە',
  ],
  SHORTWEEKDAYS: const [
    'یەکشەممە',
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە',
  ],
  STANDALONESHORTWEEKDAYS: const [
    'یەکشەممە',
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە',
  ],
  NARROWWEEKDAYS: const ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'],
  STANDALONENARROWWEEKDAYS: const ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'],
  SHORTQUARTERS: const [
    'چوارەکی یەکەم',
    'چوارەکی دووەم',
    'چوارەکی سێیەم',
    'چوارەکی چوارەم',
  ],
  QUARTERS: const [
    'چوارەکی یەکەم',
    'چوارەکی دووەم',
    'چوارەکی سێیەم',
    'چوارەکی چوارەم',
  ],
  AMPMS: const ['پ.ن', 'د.ن'],
  DATEFORMATS: const [
    'EEEE، d MMMM y',
    'd MMMM y',
    'dd\u200F/MM\u200F/y',
    'd\u200F/M\u200F/y',
  ],
  TIMEFORMATS: const ['h:mm:ss a zzzz', 'h:mm:ss a z', 'h:mm:ss a', 'h:mm a'],
  DATETIMEFORMATS: const ['{1}، {0}', '{1}، {0}', '{1}، {0}', '{1}، {0}'],
  FIRSTDAYOFWEEK: 5,
  WEEKENDRANGE: const [4, 5],
  FIRSTWEEKCUTOFFDAY: 4,
);

const NumberSymbols numberSymbolsCkb = NumberSymbols(
  NAME: 'ckb',
  DECIMAL_SEP: '.',
  GROUP_SEP: ',',
  PERCENT: '\u200E%\u200E',
  ZERO_DIGIT: '0',
  PLUS_SIGN: '\u200E+',
  MINUS_SIGN: '\u200E-',
  EXP_SYMBOL: 'E',
  PERMILL: '‰',
  INFINITY: '∞',
  NAN: 'نە ژمارەیە',
  DECIMAL_PATTERN: '#,##0.###',
  SCIENTIFIC_PATTERN: '#E0',
  PERCENT_PATTERN: '#,##0%',
  CURRENCY_PATTERN: '\u200F#,##0.00 ¤;\u200F-#,##0.00 ¤',
  DEF_CURRENCY_CODE: 'EGP',
);

final CompactNumberSymbols compactNumberSymbolsCkb = CompactNumberSymbols(
  COMPACT_DECIMAL_SHORT_PATTERN: const {
    3: {
      'few': '0 هەزار',
      'many': '0 هەزار',
      'one': '0 هەزار',
      'other': '0 هەزار',
      'two': '0 هەزار',
      'zero': '0 هەزار',
    },
    4: {'other': '00 هەزار'},
    6: {'other': '0 ملیۆن'},
    9: {'other': '0 ملیار'},
    12: {'other': '0 ترلیۆن'},
  },
  COMPACT_DECIMAL_LONG_PATTERN: const {
    3: {
      'few': '0 هەزاران',
      'many': '0 هەزار',
      'one': '0 هەزار',
      'other': '0 هەزار',
      'two': '0 هەزار',
      'zero': '0 هەزار',
    },
    4: {'other': '00 هەزار'},
    6: {
      'few': '0 ملیۆنان',
      'many': '0 ملیۆن',
      'one': '0 ملیۆن',
      'other': '0 ملیۆن',
      'two': '0 ملیۆن',
      'zero': '0 ملیۆن',
    },
    8: {'other': '000 ملیۆن'},
    9: {'other': '0 ملیار'},
    12: {'other': '0 ترلیۆن'},
  },
  COMPACT_DECIMAL_SHORT_CURRENCY_PATTERN: const {
    3: {'other': '0 هەزار ¤'},
    6: {'other': '0 ملیۆن ¤'},
    9: {'other': '0 ملیار ¤'},
    12: {'other': '0 ترلیۆن ¤'},
  },
);

void initIntl() {
  const localeName = CkbLocalizations.localeName;
  numberFormatSymbols[localeName] = numberSymbolsCkb;
  compactNumberSymbols[localeName] = compactNumberSymbolsCkb;
  initializeDateFormattingCustom(
    locale: localeName,
    patterns: localeDatePatternsCkb,
    symbols: dateSymbolsCkb,
  );
}
