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
      locale: const Locale('ckb'),
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
      body: Column(
        children: [
          Text(l10n.localeName),
          Text(l10n.stringFormat(DateTime.now().toString())),
          Text(l10n.datetimeFormat(DateTime.now())),
          Text(l10n.datetimeFormat(DateTime.now())),
        ],
      ),
    );
  }
}
