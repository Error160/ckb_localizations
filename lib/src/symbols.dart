// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:intl/date_symbols.dart';
import 'package:intl/number_symbols.dart';

const Map<String, String> localeDatePatternsCkb = {
  'd': 'd', // DAY
  'E': 'EEE', // ABBR_WEEKDAY
  'EEEE': 'EEEE', // WEEKDAY
  'LLL': 'LLL', // ABBR_STANDALONE_MONTH
  'LLLL': 'LLLL', // STANDALONE_MONTH
  'M': 'M', // NUM_MONTH
  'Md': 'd‏/M', // NUM_MONTH_DAY
  'MEd': 'EEE، d‏/M', // NUM_MONTH_WEEKDAY_DAY
  'MMM': 'LLL', // ABBR_MONTH
  'MMMd': 'd MMM', // ABBR_MONTH_DAY
  'MMMEd': 'EEE، d MMM', // ABBR_MONTH_WEEKDAY_DAY
  'MMMM': 'LLLL', // MONTH
  'MMMMd': 'd MMMM', // MONTH_DAY
  'MMMMEEEEd': 'EEEE، d MMMM', // MONTH_WEEKDAY_DAY
  'QQQ': 'QQQ', // ABBR_QUARTER
  'QQQQ': 'QQQQ', // QUARTER
  'y': 'y', // YEAR
  'yM': 'M‏/y', // YEAR_NUM_MONTH
  'yMd': 'd‏/M‏/y', // YEAR_NUM_MONTH_DAY
  'yMEd': 'EEE، d‏/M‏/y', // YEAR_NUM_MONTH_WEEKDAY_DAY
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
  DATEFORMATS: const ['EEEE، d MMMM y', 'd MMMM y', 'dd‏/MM‏/y', 'd‏/M‏/y'],
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
  PERMILL: '\u2030',
  INFINITY: '\u221E',
  NAN: '\u0644\u064A\u0633\u00A0\u0631\u0642\u0645\u064B\u0627',
  DECIMAL_PATTERN: '#,##0.###',
  SCIENTIFIC_PATTERN: '#E0',
  PERCENT_PATTERN: '#,##0%',
  CURRENCY_PATTERN: '\u200F#,##0.00\u00A0\u00A4;\u200F-#,##0.00\u00A0\u00A4',
  DEF_CURRENCY_CODE: 'EGP',
);
