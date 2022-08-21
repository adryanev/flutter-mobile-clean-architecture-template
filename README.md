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

Freezed Code generator.

This template optimizes freezed generator only to certain suffixes to improve build time.
The available suffixes are:

- `*.codegen.dart`
- `*.model.dart`
- `*.entity.dart`

For blocs, it automaticly read inside `blocs` directory.

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


_\*Template works on iOS, Android, Web, Linux, and Windows._


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

| Category | Library Name | Link
|--|--|--
| **State management** | `bloc` | <https://pub.dev/packages/bloc> |
| | `flutter_bloc` | <https://pub.dev/packages/flutter_bloc> |
| | `bloc_concurrency` | <https://pub.dev/packages/bloc_concurrency> |
| **Router** | `go_router`  | <https://pub.dev/packages/go_router> |
| **Code Generator** | `build_runner` | <https://pub.dev/packages/build_runner> |
| | `flutter_gen_runner`* | <https://pub.dev/packages/flutter_gen_runner> |
| | `flutter_native_splash` | <https://pub.dev/packages/flutter_native_splash> |
| **Languange Feature** | `dartz` | <https://pub.dev/packages/dartz>|
| | `rxdart` | <https://pub.dev/packages/rxdart> |
| | `equatable` | <https://pub.dev/packages/equatable> |
| | `freezed` | <https://pub.dev/packages/freezed> |
| | `freezed_annotation` | <https://pub.dev/packages/freezed_annotation>|
| | `change_case` | <https://pub.dev/packages/change_case> |
| | `intl` | <https://pub.dev/packages/intl>|
| | `uuid` | <https://pub.dev/packages/uuid> |
| | `crypto` | <https://pub.dev/packages/crypto> |
| **JSON** | `json_serializable` | <https://pub.dev/packages/json_serializable> |
| | `json_annotation` | <https://pub.dev/packages/json_annotation> |
| **Dependency Injection** | `get_it` | <https://pub.dev/packages/get_it> |
| | `injectable` | <https://pub.dev/packages/injectable> |
| | `injectable_generator` | <https://pub.dev/packages/injectable_generator> |
| **Local Storage** | `shared_preferences` | <https://pub.dev/packages/shared_preferences> |
| **Logging** | `logging` | <https://pub.dev/packages/logging> |
| **Form Validation** | `formz` | <https://pub.dev/packages/formz/versions/0.5.0-dev.1> |
| **Widgets** | `flutter_hooks` | <https://pub.dev/packages/flutter_hooks> |
| | `flutter_screenutil` | <https://pub.dev/packages/flutter_screenutil> |
| | `flutter_svg` | <https://pub.dev/packages/flutter_svg>  |
| | `google_fonts` | <https://pub.dev/packages/google_fonts> |
| **Testing** | `mocktail` | <https://pub.dev/packages/mocktail> |
| | `bloc_test` | <https://pub.dev/packages/bloc_test> |

All the libraries above are compatible with Flutter 3.

Notes: **need to install [flutter_gen](https://pub.dev/packages/flutter_gen)*

---

## Project Structure 🏛

```
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

1. To add a new localizable string, open the `app_en.arb` file at `lib/l10n/arb/app_en.arb`.

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

2. Then add a new key/value and description

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

3. Use the new string

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

1. For each supported locale, add a new ARB file in `lib/l10n/arb`.

```
├── l10n
│   ├── arb
│   │   ├── app_en.arb
│   │   └── app_id.arb
```

2. Add the translated strings to each `.arb` file:

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

[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
[makefile_link]: Makefile
