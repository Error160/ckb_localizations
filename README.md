# ckb_localizations
Support for localization of the Sorani language in Flutter applications.

[![pub package](https://img.shields.io/pub/v/ckb_localizations.svg)](https://pub.dev/packages/ckb_localizations)

Create localization file
- app_ckb.arb
- app_en.arb


```dart
import 'package:ckb_localizations/ckb_localizations.dart';
import 'package:example/main.dart';
import 'package:flutter/material.dart';

export "package:flutter_gen/gen_l10n/app_localizations.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        ...AppLocalizations.localizationsDelegates,
        ...CkbLocalizations.localizationsDelegates,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateTitle: (context) => AppLocalizations.of(context).appName,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appName),
      ),
      body: Text(l10n.localeName),
    );
  }
}
```