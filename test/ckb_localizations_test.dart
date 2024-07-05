import 'package:ckb_localizations/ckb_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('adds one to input values', () {
    const locale = CkbLocalizations.locale;
    expect(locale.languageCode, CkbLocalizations.localeName);
  });
}
