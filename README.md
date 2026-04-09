# Flutter Clean Architecture Project Template: Basic Template

***A Very Opinionated Flutter Project Template***

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

Powered by the [Very Good CLI][very_good_cli_link] 🤖

---

## Available Templates 📃

Please check other branch to see other template.

- Mobile (Not available yet)
- Multiplatform (Not available yet)

---

## How to Use 🎮

Using this template is easy.

1. Choose template from branch.
2. Press use this template button.
3. Create your repository.
4. Clone your repository.
5. Rename package name from `dev.adryanev.template` to your liking.
6. Rename the project name from `template` to your need.

Snackbar Flash

You can use snackbar easily with `FlashCubit`. You can call `context.displayFlash(message)` to show a snackbar.

---

## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

*Template works on iOS and Android.*

---

## Makefile Command 💻

This project is equipped with Makefile command to shorten command writing, to see available command please refer to [Makefile][makefile_link].
Please change the Environment Variable such as: `${FIREBASE_EMAIL}`, etc., in the file to your need.

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# run build_runner once
$ make build
# watch file change
$ make watch
# generate dev apk
$ make apk-dev
# generate staging apk
$ make apk-stg
# generate production apk
$ make apk-prod
# generate dev ipa
$ make ipa-dev
# generate staging ipa
$ make ipa-stg
# generate production ipa
$ make ipa-prod
# fix code
$ make fix
# check fix
$ make check-fix
```

---

## Running Tests 🧪

To run all unit and widget tests use the following command:

```sh
# Run test with coverage
$ flutter test --coverage --test-randomize-ordering-seed random
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```

---

## Project Libraries & Plugins 📚

The project is already included some library to speed up the development process.

| Category | Library Name | Link |
|--|--|--|
| **State management** | `bloc` | <https://pub.dev/packages/bloc> |
| | `flutter_bloc` | <https://pub.dev/packages/flutter_bloc> |
| | `rxdart` | <https://pub.dev/packages/rxdart> |
| **Router** | `go_router`  | <https://pub.dev/packages/go_router> |
| **Code Generator** | `build_runner` | <https://pub.dev/packages/build_runner> |
| | `flutter_gen_runner`* | <https://pub.dev/packages/flutter_gen_runner> |
| **Language Feature** | `dartz` | <https://pub.dev/packages/dartz>|
| | `equatable` | <https://pub.dev/packages/equatable> |
| | `change_case` | <https://pub.dev/packages/change_case> |
| | `intl` | <https://pub.dev/packages/intl>|
| | `uuid` | <https://pub.dev/packages/uuid> |
| | `crypto` | <https://pub.dev/packages/crypto> |
| **Dependency Injection** | `get_it` | <https://pub.dev/packages/get_it> |
| | `injectable` | <https://pub.dev/packages/injectable> |
| | `injectable_generator` | <https://pub.dev/packages/injectable_generator> |
| **Local Storage** | `shared_preferences` | <https://pub.dev/packages/shared_preferences> |
| **Form Validation** | `formz` | <https://pub.dev/packages/formz> |
| **Widgets** | `flutter_screenutil` | <https://pub.dev/packages/flutter_screenutil> |
| | `google_fonts` | <https://pub.dev/packages/google_fonts> |
| **Testing** | `mocktail` | <https://pub.dev/packages/mocktail> |
| | `bloc_test` | <https://pub.dev/packages/bloc_test> |

All the libraries above are compatible with Flutter 3.41.6 (Dart 3.11.4).

Notes: **need to install [flutter_gen](https://pub.dev/packages/flutter_gen)*

---

## Project Structure 🏛

```tree
...
assets
├── fonts                               # Non-Google fonts
├── google_fonts                        # Google fonts offline
├── icons                               # App icons
├── images                              # App images
lib
├── app
|   ├── router
|   |   ├── app_router.dart             # Application Router
|   ├── view
|   |   ├── app.dart                    # MainApp File
|   ├── app.dart
├── core
|   ├── di                              # Dependency Injection Module
|   ├── domain                          # Base Classes for domain layer
|   ├── utils                           # utilities, constants, and extensions
├── shared                              # Shared Entity, Models, Widget, Service
├── features
|   ├── counter                         # Feature Counter
|   |   ├── data
|   |   |   ├── datasources             # Data source (network, local)
|   |   |   ├── models                  # DTO / Payload Model
|   |   |   ├── repositories            # Implementation of domain Repository
|   |   ├── domain
|   |   |   ├── entities                # Business Domain Entity
|   |   |   ├── repositories            # Interface Repository
|   |   |   ├── usecases                # Business Use Cases
|   |   ├── presentation
|   |   |   ├── blocs                   # Application Logic & State management
|   |   |   ├── pages                   # Application pages
|   |   |   ├── widgets                 # Common Widgets in Feature
├── l10n
│   ├── arb
│   │   ├── app_en.arb                  # English Translation
│   │   └── app_id.arb                  # Indonesian Translation
├── bootstrap.dart                      # Common Main Bootstrap Script
├── main_development.dart               # Env Development main method
├── main_production.dart                # Env Production main method
├── main_staging.dart                   # Env Staging main method
test
├── app                                 # App Test
├── features
|   ├── counter                         # Feature Counter Test
|   |   ├── data
|   |   |   ├── datasources             # Data source (network, local) test
|   |   |   ├── models                  # DTO / Payload Model test
|   |   |   ├── repositories            # Implementation repository test
|   |   ├── domain
|   |   |   ├── entities                # Business Domain Entity test
|   |   |   ├── repositories            # Interface Repository test
|   |   |   ├── usecases                # Business Use Cases test
|   |   ├── presentation
|   |   |   ├── blocs                   # Bloc Test
|   |   |   ├── pages                   # Application pages test
|   |   |   ├── widgets                 # Common Widgets in Feature test
├── helpers                             # Common Test Helpers
...
```

---

## Working with Translations 🌐

This project relies on [flutter_localizations][flutter_localizations_link] and follows the [official internationalization guide for Flutter][internationalization_link].

### Adding Strings

To add a new localizable string, open the `app_en.arb` file at `lib/l10n/arb/app_en.arb`.

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

Then add a new key/value and description

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    },
    "helloWorld": "Hello World",
    "@helloWorld": {
        "description": "Hello World Text"
    }
}
```

Use the new string

```dart
import 'package:template/l10n/l10n.dart';

@override
Widget build(BuildContext context) {
  final l10n = context.l10n;
  return Text(l10n.helloWorld);
}
```

### Adding Supported Locales

Update the `CFBundleLocalizations` array in the `Info.plist` at `ios/Runner/Info.plist` to include the new locale.

```xml
    ...

    <key>CFBundleLocalizations</key>
 <array>
  <string>en</string>
  <string>id</string>
 </array>

    ...
```

### Adding Translations

For each supported locale, add a new ARB file in `lib/l10n/arb`.

```tree
├── l10n
│   ├── arb
│   │   ├── app_en.arb
│   │   └── app_id.arb
```

Add the translated strings to each `.arb` file:

`app_en.arb`

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

`app_id.arb`

```arb
{
    "@@locale": "id",
    "counterAppBarTitle": "Penghitung",
    "@counterAppBarTitle": {
        "description": "Teks yang tampil pada AppBar di Halaman Counter"
    }
}
```

## Migration Guide

This section provides an overview of the breaking changes and steps needed to migrate from the previous version of this template to the latest release.

### Migration to Flutter 3.41.6 (Latest)

#### 1. Flutter Version & Tooling

- `.fvmrc` is now pinned to **3.41.6**. Update your local Flutter SDK or run `fvm use` if using [FVM](https://fvm.app/).
- Dart SDK constraint updated to `>=3.11.0 <4.0.0`.

#### 2. iOS: CocoaPods to Swift Package Manager

- The `Podfile` has been removed. iOS dependencies are now managed via **Swift Package Manager** (SwiftPM), which is the default in Flutter 3.24+.
- The `ios/` project has been regenerated with a clean SwiftPM integration.
- The app now uses the **UIScene lifecycle** with a `SceneDelegate.swift` (Flutter 3.41.6 default).
- If you have custom CocoaPods plugins, you may need to check their SwiftPM compatibility.

#### 3. Android Gradle Updates

- **Gradle**: 8.3 → 8.14
- **Android Gradle Plugin**: 8.2.1 → 8.11.1
- **Kotlin**: 1.9.20 → 2.2.20 (K2 compiler)
- `android.enableJetifier` removed (deprecated).
- `kotlin-stdlib` and `multidex` dependencies removed (auto-included / unnecessary with minSdk 21+).
- JVM args updated for better build performance.

#### 4. Localization Changes

- The `flutter_gen` synthetic package has been deprecated. Localization files are now generated to `lib/l10n/generated/`.
- Update imports from `package:flutter_gen/gen_l10n/app_localizations.dart` to `package:template/l10n/generated/app_localizations.dart`.

#### 5. Dependency Changes

- `injectable` updated to `^2.7.1` and `injectable_generator` to `^2.9.0`.
- `google_fonts` updated to `^6.2.2` (Dart 3.11 compatibility fix).
- `flutter_native_splash` removed from runtime dependencies (only needed as a CLI tool for generating splash assets, not at runtime).
- `dependency_overrides` for `collection`, `intl`, and `meta` removed (no longer needed).

#### 6. Post-Migration Checks

```sh
# Clean and get dependencies
flutter clean && flutter pub get

# Generate localization files
flutter gen-l10n

# Generate injectable and other code
dart run build_runner build --delete-conflicting-outputs

# Verify
flutter analyze
flutter test
flutter build apk --flavor development --debug -t lib/main_development.dart
flutter build ios --flavor development --no-codesign --debug -t lib/main_development.dart
```

### Previous Migration (Freezed Removal)

<details>
<summary>Click to expand</summary>

#### Removal of Freezed Code Generation

- All Freezed code-generation files have been removed in favor of manually defined sealed classes.
- `Failure` now has `localFailure` and `serverFailure`.
- `ValueFailure` includes `empty`, `multiLine`, `notInRange`, and `invalidUniqueId`.
- `FlashState` refactored from Freezed to a sealed class. Replace `.when`/`.maybeWhen` with `switch/case`.
- Update test imports to use the new sealed class files.

</details>

---

If you have any questions or encounter issues during migration, feel free to open an issue!

[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
[makefile_link]: Makefile
