import 'package:ckb_localizations/ckb_localizations.dart';
import 'package:ckb_localizations/src/symbols.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

class _MaterialLocalizationsDelegateCkb
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _MaterialLocalizationsDelegateCkb();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ckb';

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    const localeName = CkbLocalizations.localeName;

    initIntl();

    return SynchronousFuture<MaterialLocalizations>(
      MaterialLocalizationCkb(
        localeName: localeName,
        decimalFormat: intl.NumberFormat('#,##0.###', localeName),
        twoDigitZeroPaddedFormat: intl.NumberFormat('00', localeName),
        fullYearFormat: intl.DateFormat('y', localeName),
        compactDateFormat: intl.DateFormat('yMd', localeName),
        shortDateFormat: intl.DateFormat('yMMMd', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        longDateFormat: intl.DateFormat('EEEE, MMMM d, y', localeName),
        yearMonthFormat: intl.DateFormat('MMMM y', localeName),
        shortMonthDayFormat: intl.DateFormat('MMM d', localeName),
      ),
    );
  }

  @override
  bool shouldReload(_MaterialLocalizationsDelegateCkb old) => false;
}

class MaterialLocalizationCkb extends GlobalMaterialLocalizations {
  const MaterialLocalizationCkb({
    super.localeName = 'ckb',
    required super.fullYearFormat,
    required super.compactDateFormat,
    required super.shortDateFormat,
    required super.mediumDateFormat,
    required super.longDateFormat,
    required super.yearMonthFormat,
    required super.shortMonthDayFormat,
    required super.decimalFormat,
    required super.twoDigitZeroPaddedFormat,
  });

  static const LocalizationsDelegate<MaterialLocalizations> delegate =
      _MaterialLocalizationsDelegateCkb();

  @override
  TimeOfDayFormat get timeOfDayFormatRaw => TimeOfDayFormat.h_colon_mm_space_a;

  @override
  ScriptCategory get scriptCategory => ScriptCategory.tall;

  @override
  String get aboutListTileTitleRaw => r'دەربارەی "$applicationName"';

  @override
  String get alertDialogLabel => 'ئاگاداری';

  @override
  String get anteMeridiemAbbreviation => 'س';

  @override
  String get backButtonTooltip => 'گەڕانەوە';

  @override
  String get bottomSheetLabel => 'کارتی خوارەوە';

  @override
  String get calendarModeButtonLabel => 'بگۆڕە بۆ ساڵنامە';

  @override
  String get cancelButtonLabel => 'هەڵوەشاندنەوە';

  @override
  String get closeButtonLabel => 'داخستنی';

  @override
  String get closeButtonTooltip => 'داخستن';

  @override
  String get collapsedHint => 'فراوانتر بوو';

  @override
  String get collapsedIconTapHint => 'فراوان بوون';

  @override
  String get continueButtonLabel => 'بەدواداچوون';

  @override
  String get copyButtonLabel => 'کۆپیەکانی';

  @override
  String get currentDateLabel => 'بەرواری ئەمڕۆ';

  @override
  String get cutButtonLabel => 'ئەو گووتی';

  @override
  String get dateHelpText => 'yyyy/mm/dd';

  @override
  String get dateInputLabel => 'بەروار بنووسە';

  @override
  String get dateOutOfRangeLabel => 'بەروار لە دەرەوەی مەودادایە.';

  @override
  String get datePickerHelpText => 'بەروار هەڵبژێرە';

  @override
  String get dateRangeEndDateSemanticLabelRaw => r'بەرواری کۆتایی $fullDate';

  @override
  String get dateRangeEndLabel => 'بەرواری بەسەرچوون';

  @override
  String get dateRangePickerHelpText => 'مەودایەک هەڵبژێرە';

  @override
  String get dateRangeStartDateSemanticLabelRaw =>
      r'بەرواری دەستپێکردن $fullDate';

  @override
  String get dateRangeStartLabel => 'بەرواری دەستپێکردن';

  @override
  String get dateSeparator => '/ .';

  @override
  String get deleteButtonTooltip => 'سڕینەوە';

  @override
  String get dialModeButtonLabel => 'بگۆڕە بۆ دۆخی هەڵبژاردەی پەیوەندیکردن';

  @override
  String get dialogLabel => 'بۆکسی گفتوگۆ';

  @override
  String get drawerLabel => 'مێنۆی گەشتکردن';

  @override
  String get expandedHint => 'مینیاتور';

  @override
  String get expandedIconTapHint => 'کەمکردنەوە';

  @override
  String get expansionTileCollapsedHint => 'دووجار کلیک بکە بۆ فراوانکردن';

  @override
  String get expansionTileCollapsedTapHint =>
      'بۆ بینینی وردەکاری زیاتر بۆکسەکە فراوان بکە.';

  @override
  String get expansionTileExpandedHint =>
      'تکایە دووجار کلیک بکە بۆ بچووککردنەوە.';

  @override
  String get expansionTileExpandedTapHint => 'کەمکردنەوە';

  @override
  String get firstPageTooltip => 'لاپەڕەی یەكەم';

  @override
  String get hideAccountsLabel => 'شاردنەوەی ئەکاونتەکان';

  @override
  String get inputDateModeButtonLabel => 'بگۆڕە بۆ ئینپوت';

  @override
  String get inputTimeModeButtonLabel => 'بگۆڕە بۆ دۆخی Text Entry';

  @override
  String get invalidDateFormatLabel => 'فۆرماتێکی نادروست.';

  @override
  String get invalidDateRangeLabel => 'مەودای کارکردنەکە نادروستە.';

  @override
  String get invalidTimeLabel => 'تکایە کاتێکی دروست بنووسە.';

  @override
  String get keyboardKeyAlt => 'ئاڵت';

  @override
  String get keyboardKeyAltGraph => 'ئاڵتگر';

  @override
  String get keyboardKeyBackspace => 'باکسپەیس';

  @override
  String get keyboardKeyCapsLock => 'قفڵی کاپس';

  @override
  String get keyboardKeyChannelDown => 'کەناڵی داهاتوو';

  @override
  String get keyboardKeyChannelUp => 'کەناڵی پێشوو';

  @override
  String get keyboardKeyControl => 'Ctrl';

  @override
  String get keyboardKeyDelete => 'دێل';

  @override
  String get keyboardKeyEject => 'دەرهێنان';

  @override
  String get keyboardKeyEnd => 'کۆتایی';

  @override
  String get keyboardKeyEscape => 'Esc';

  @override
  String get keyboardKeyFn => 'فن';

  @override
  String get keyboardKeyHome => 'ماڵەوە';

  @override
  String get keyboardKeyInsert => 'تێکردن';

  @override
  String get keyboardKeyMeta => 'مێتا';

  @override
  String get keyboardKeyMetaMacOs => 'فەرمان';

  @override
  String get keyboardKeyMetaWindows => 'بردنەوە';

  @override
  String get keyboardKeyNumLock => 'Num Lock';

  @override
  String get keyboardKeyNumpad0 => 'ژمارە 0';

  @override
  String get keyboardKeyNumpad1 => 'ژمارە 1';

  @override
  String get keyboardKeyNumpad2 => 'ژمارە ٢';

  @override
  String get keyboardKeyNumpad3 => 'ژمارە ٣';

  @override
  String get keyboardKeyNumpad4 => 'ژمارە ٤';

  @override
  String get keyboardKeyNumpad5 => 'ژمارە ٥';

  @override
  String get keyboardKeyNumpad6 => 'ژمارە ٦';

  @override
  String get keyboardKeyNumpad7 => 'ژمارە ٧';

  @override
  String get keyboardKeyNumpad8 => 'ژمارە ٨';

  @override
  String get keyboardKeyNumpad9 => 'ژمارە ٩';

  @override
  String get keyboardKeyNumpadAdd => 'هێمای پڵەس +';

  @override
  String get keyboardKeyNumpadComma => 'کۆما،';

  @override
  String get keyboardKeyNumpadDecimal => 'خاڵەکە .';

  @override
  String get keyboardKeyNumpadDivide => 'نمرەی دابەشکردن / .';

  @override
  String get keyboardKeyNumpadEnter => 'کلیلی داخڵ بکە';

  @override
  String get keyboardKeyNumpadEqual => 'نیشانەی یەکسان =';

  @override
  String get keyboardKeyNumpadMultiply => 'نیشانەی چەسپاندن *';

  @override
  String get keyboardKeyNumpadParenLeft => 'بڕاکێتی چەپ)';

  @override
  String get keyboardKeyNumpadParenRight => 'بڕاکێتی ڕاست (';

  @override
  String get keyboardKeyNumpadSubtract => 'هێمای کەمکردنەوە -';

  @override
  String get keyboardKeyPageDown => 'PgDown';

  @override
  String get keyboardKeyPageUp => 'PGUp';

  @override
  String get keyboardKeyPower => 'دوگمەی دەستپێکردن';

  @override
  String get keyboardKeyPowerOff => 'دوگمەی ئاگر';

  @override
  String get keyboardKeyPrintScreen => 'شاشەی چاپکردن';

  @override
  String get keyboardKeyScrollLock => 'Scroll Lock';

  @override
  String get keyboardKeySelect => 'کلیلی هەڵبژاردن';

  @override
  String get keyboardKeyShift => 'گۆڕین';

  @override
  String get keyboardKeySpace => 'سپەیسبار';

  @override
  String get lastPageTooltip => 'لاپەڕەی کۆتایی';

  @override
  String? get licensesPackageDetailTextFew => r'مۆڵەتەکانی $licenseCount';

  @override
  String? get licensesPackageDetailTextMany => r'مۆڵەتی $licenseCount';

  @override
  String? get licensesPackageDetailTextOne => 'یەک مۆڵەت';

  @override
  String get licensesPackageDetailTextOther => r'$licenseCount مۆڵەت';

  @override
  String? get licensesPackageDetailTextTwo => r'2 مۆڵەت ($licenseCount)';

  @override
  String? get licensesPackageDetailTextZero => 'هیچ مۆڵەتێک نییە';

  @override
  String get licensesPageTitle => 'مۆڵەتەکان';

  @override
  String get lookUpButtonLabel => 'بە دوادا گەڕان';

  @override
  String get menuBarMenuLabel => 'مێنۆی مینیو بار';

  @override
  String get menuDismissLabel => 'مینیوی داخستنی';

  @override
  String get modalBarrierDismissLabel => 'بۆ ڕەتکردنەوە';

  @override
  String get moreButtonTooltip => 'زیاتر';

  @override
  String get nextMonthTooltip => 'مانگی داهاتوو';

  @override
  String get nextPageTooltip => 'لاپەڕەی داهاتوو';

  @override
  String get okButtonLabel => 'باش';

  @override
  String get openAppDrawerTooltip => 'مینیوی گەشتکردن بکەرەوە';

  @override
  String get pageRowsInfoTitleRaw =>
      r'لە $firstRow بۆ $lastRow لە کۆی گشتی $rowCount';

  @override
  String get pageRowsInfoTitleApproximateRaw =>
      r'لە $firstRow بۆ $lastRow لە کۆی گشتی $rowCount نزیکەی';

  @override
  String get pasteButtonLabel => 'چەسپاو';

  @override
  String get popupMenuLabel => 'مێنۆی پەلەوەر';

  @override
  String get postMeridiemAbbreviation => 'م';

  @override
  String get previousMonthTooltip => 'مانگی پێشوو';

  @override
  String get previousPageTooltip => 'لاپەڕەی پێشوو';

  @override
  String get refreshIndicatorSemanticLabel => 'دووبارە بارکردنەوە';

  @override
  String? get remainingTextFieldCharacterCountFew =>
      r'$remainingCount کاراکتەرە ماوەتەوە';

  @override
  String? get remainingTextFieldCharacterCountMany =>
      r'$remainingCount کاراکتەری ماوەتەوە';

  @override
  String? get remainingTextFieldCharacterCountOne => 'یەک نامە ماوە';

  @override
  String get remainingTextFieldCharacterCountOther =>
      r'$remainingCount کارەکتەری ماوەتەوە';

  @override
  String? get remainingTextFieldCharacterCountTwo =>
      r'دوو کاراکتەری ($remainingCount) ماوە';

  @override
  String? get remainingTextFieldCharacterCountZero => 'هیچ کارەکتەرێک نەماوە';

  @override
  String get reorderItemDown => 'بڕۆ بۆ خوارەوە';

  @override
  String get reorderItemLeft => 'بجووڵێ بۆ لای راست';

  @override
  String get reorderItemRight => 'بە چەپ بجوڵێ';

  @override
  String get reorderItemToEnd => 'بڕۆ بۆ کۆتایی لیستەکە';

  @override
  String get reorderItemToStart => 'بڕۆ بۆ سەرەتای لیستەکە';

  @override
  String get reorderItemUp => 'بەرەو سەرەوە بڕۆ';

  @override
  String get rowsPerPageTitle => 'ژمارەی ڕیزەکان بۆ هەر لاپەڕەیەک:';

  @override
  String get saveButtonLabel => 'پاراستن';

  @override
  String get scanTextButtonLabel => 'دەق سکان بکە';

  @override
  String get scrimLabel => 'خۆدزینەوە لە خۆدزینەوە';

  @override
  String get scrimOnTapHintRaw => r'"$modalRouteContentName" دابخە.';

  @override
  String get searchFieldLabel => 'توێژینەوە';

  @override
  String get searchWebButtonLabel => 'وێبی گەڕان';

  @override
  String get selectAllButtonLabel => 'دیاری کردنی هەموو';

  @override
  String get selectYearSemanticsLabel => 'هەڵبژاردنی گشتی';

  @override
  String? get selectedRowCountTitleFew => r'$selectedRowCount توخم هەڵبژێردرا';

  @override
  String? get selectedRowCountTitleMany =>
      r'$selectedRowCount بابەتی هەڵبژێردراو';

  @override
  String? get selectedRowCountTitleOne => 'یەک بابەتی هەڵبژێردراوە';

  @override
  String get selectedRowCountTitleOther => r'$selectedRowCount توخم هەڵبژێردرا';

  @override
  String? get selectedRowCountTitleTwo =>
      r'دوو بابەتی هەڵبژێردراو ($selectedRowCount)';

  @override
  String? get selectedRowCountTitleZero => 'هیچ شتێک هەڵنەبژێردراوە';

  @override
  String get shareButtonLabel => 'هاوبەشکردن...';

  @override
  String get showAccountsLabel => 'ئەکاونتەکان پیشان بدە';

  @override
  String get showMenuTooltip => 'مێنۆی پیشان بدە';

  @override
  String get signedInLabel => 'تۆ چوویتە ژوورەوە';

  @override
  String get tabLabelRaw => r'$tabIndex ی $tabCount';

  @override
  String get timePickerDialHelpText => 'کات هەڵبژێرە';

  @override
  String get timePickerHourLabel => 'کاتژمێر';

  @override
  String get timePickerHourModeAnnouncement => 'هەڵبژاردنی کاتژمێرەکان';

  @override
  String get timePickerInputHelpText => 'کات داخڵ بکە';

  @override
  String get timePickerMinuteLabel => 'خولەک';

  @override
  String get timePickerMinuteModeAnnouncement => 'خولەکەکان هەڵبژێرە';

  @override
  String get unspecifiedDate => 'بەروارەکە';

  @override
  String get unspecifiedDateRange => 'مەودای کات';

  @override
  String get viewLicensesButtonLabel => 'بینینی مۆڵەتەکان';

  @override
  String get clearButtonTooltip => 'سڕینەوە';

  @override
  String get selectedDateLabel => 'كات';
}

abstract class GlobalWidgetsLocalizations implements WidgetsLocalizations {
  const GlobalWidgetsLocalizations(this.textDirection);

  @override
  final TextDirection textDirection;

  static const LocalizationsDelegate<WidgetsLocalizations> delegate =
      _WidgetsLocalizationsDelegate();
}

class _WidgetsLocalizationsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const _WidgetsLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      kWidgetsSupportedLanguages.contains(locale.languageCode);

  static final Map<Locale, Future<WidgetsLocalizations>> _loadedTranslations =
      <Locale, Future<WidgetsLocalizations>>{};

  @override
  Future<WidgetsLocalizations> load(Locale locale) {
    assert(isSupported(locale));
    return _loadedTranslations.putIfAbsent(locale, () {
      return SynchronousFuture<WidgetsLocalizations>(
        getWidgetsTranslation(
          locale,
        )!,
      );
    });
  }

  @override
  bool shouldReload(_WidgetsLocalizationsDelegate old) => false;

  @override
  String toString() =>
      'GlobalWidgetsLocalizations.delegate(${kWidgetsSupportedLanguages.length} locales)';
}
