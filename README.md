# ckb_localizations

**پشتیوانی لە زمانێکی کوردی (سۆرانی) بۆ ئەپەکانی Flutter.**
Support for localization of the **Kurdish (Sorani)** language in Flutter applications.

[![pub package](https://img.shields.io/pub/v/ckb_localizations.svg)](https://pub.dev/packages/ckb_localizations)

---

## What is this?

`ckb_localizations` adds first-class **Kurdish Sorani (ckb)** support to Flutter apps.
It complements `flutter_localizations` and `intl` so your app can show Kurdish text, layout direction (RTL), and locale-aware formatting properly.

---

## Features

* ✅ Adds **Sorani (ckb)** to your app’s localization stack
* ✅ Works alongside `flutter_localizations` & generated `AppLocalizations`
* ✅ Simple, drop-in delegates for Material/Cupertino widgets and Sorani strings
* ✅ RTL-aware (Sorani uses Arabic script → right-to-left)

---

## Requirements

* Flutter 3.x+
* `flutter_localizations` and `intl` in `pubspec.yaml`
* Using Flutter’s [Internationalization](https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization) workflow (gen-l10n)

---

## Installation

Add the package:

```sh
flutter pub add ckb_localizations
```

Make sure you have (usually auto-added by Flutter):

```yaml
# pubspec.yaml (excerpt)
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  intl: any
  ckb_localizations: any
```

---

## Project setup (gen-l10n)

You can initialize localization in **two ways**:

### Option A: Flutter official docs

Follow the official guide:
[https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization](https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization)

### Option B: Quick init with `l10n_lint` (optional helper)

```sh
dart pub global activate l10n_lint
l10n --init
```

This scaffolds:

* `l10n.yaml`
* `lib/l10n/app_en.arb`
* Adds `flutter_localizations`/`intl` to your `pubspec.yaml` (if missing)

---

## Configure `l10n.yaml` (recommended)

Create or update `l10n.yaml` in your project root:

```yaml
# l10n.yaml
arb-dir: lib/l10n
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
output-class: AppLocalizations
untranslated-messages-file: l10n_untranslated.json
synthetic-package: true
nullable-getter: false
use-deferred-loading: false
```

> You can tweak names, but keep `arb-dir` and `template-arb-file` aligned with your files.

---

## Add ARB files

Create Sorani and English files:

**`lib/l10n/app_en.arb`**

```json
{
  "@@locale": "en",
  "appName": "My App",
  "greeting": "Hello"
}
```

**`lib/l10n/app_ckb.arb`**

```json
{
  "@@locale": "ckb",
  "appName": "ئەپی من",
  "greeting": "سڵاو"
}
```

> Key names must match across languages.
> The presence of `app_ckb.arb` registers **ckb** as a supported locale in `AppLocalizations.supportedLocales`.

---

## Wire up delegates (usage)

Use the `ckb_localizations` delegates **in addition to** the generated/local Flutter delegates.

> Below is **your original example** kept as-is:

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

### Forcing Sorani during testing (optional)

If you want to force the app to run in Sorani while testing:

```dart
MaterialApp(
  localizationsDelegates: const [
    ...AppLocalizations.localizationsDelegates,
    ...CkbLocalizations.localizationsDelegates,
  ],
  supportedLocales: AppLocalizations.supportedLocales,
  locale: const Locale('ckb'), // Force Sorani
)
```

Otherwise, leave `locale` unset to let the system/device locale decide.

---

## RTL notes

* Sorani (`ckb`) uses Arabic script → Flutter will automatically apply **RTL** layout when `locale` is `ckb`.
* If you use custom widgets that assume LTR, ensure they respect `Directionality.of(context)`.

---

## Verifying generation

Run a clean build to ensure gen-l10n output is created/updated:

```sh
flutter clean
flutter pub get
flutter run
```

You should be able to import:

```dart
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
```

(or use the `export` you already included).

---

## Troubleshooting

* **“AppLocalizations not found”** → Ensure `l10n.yaml` is correct and ARB files are in `lib/l10n/`.
* **Strings not changing** → Confirm your device/emulator language is set to Kurdish (Sorani) or set `locale: Locale('ckb')`.
* **Layout direction issues** → Wrap custom layouts with `Directionality` or rely on `MaterialApp`/`CupertinoApp`.

---

## Example keys (plural/select) *(optional)*

**Plural**

```json
{
  "messagesCount": "{count, plural, =0 {هیچ نامەیەک نییە} =1 {١ نامە} other {{count} نامە}}",
  "@messagesCount": {
    "placeholders": {"count": {"type": "num"}}
  }
}
```

**Gender/select**

```json
{
  "welcomeUser": "{gender, select, male {بەخێربێیتەوە، کەسایەتیەکەمان} female {بەخێربێیتەوە، خاتون} other {بەخێربێیت}}"
}
```

Use with:

```dart
l10n.messagesCount(count);
l10n.welcomeUser(gender);
```

---

## Links

* Package: [https://pub.dev/packages/ckb_localizations](https://pub.dev/packages/ckb_localizations)
* Flutter i18n docs: [https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization](https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization)
* Related Flutter issue (Kurdish support): [https://github.com/flutter/flutter/issues/161726#issuecomment-3133774071](https://github.com/flutter/flutter/issues/161726#issuecomment-3133774071)

---

## License
MIT License
