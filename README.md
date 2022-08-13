# Flutter Template Architecture Project Template

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

Powered by the [Very Good CLI][very_good_cli_link] 🤖

A Template Flutter Project Template

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

_\*Template works on iOS, Android, Web, Linux, MacOS, and Windows._

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

| Category | Library Name | Link | Documentation |
|--|--|--|--|
| **State management** | `bloc` | <https://pub.dev/packages/bloc> | <https://bloclibrary.dev/#/> |
| ... | `flutter_bloc` | <https://pub.dev/packages/flutter_bloc> | <https://bloclibrary.dev/#/>|
| ... | `bloc_concurrency` | <https://pub.dev/packages/bloc_concurrency> | <https://bloclibrary.dev/#/>|
| **Router** | `go_router`  | <https://pub.dev/packages/go_router> | <https://gorouter.dev/> |
| **Code Generator** | `build_runner` | <https://pub.dev/packages/build_runner> | <https://pub.dev/packages/build_runner> |
| ... | `flutter_gen_runner`* | <https://pub.dev/packages/flutter_gen_runner> | <https://pub.dev/packages/flutter_gen> |
| ... | `flutter_native_splash` | <https://pub.dev/packages/flutter_native_splash> | <https://pub.dev/packages/flutter_native_splash> |
| **Languange Feature** | `dartz` | <https://pub.dev/packages/dartz> | No documentation, but you can refer to [Arrow-Kt Documentation](https://arrow-kt.io/docs/0.13/apidocs/arrow-core/arrow.core/index.html) |
| ... | `rxdart` | <https://pub.dev/packages/rxdart> | <https://medium.com/globant/intro-to-rxdart-7e1429fabce0> |
| ... | `equatable` | <https://pub.dev/packages/equatable> | <https://pub.dev/packages/equatable>|
| ... | `freezed` | <https://pub.dev/packages/freezed> | <https://pub.dev/packages/freezed> |
| ... | `freezed_annotation` | <https://pub.dev/packages/freezed_annotation>| <https://pub.dev/packages/freezed> |
| ... | `change_case` | <https://pub.dev/packages/change_case> | <https://pub.dev/packages/change_case> |
| ... | `intl` | <https://pub.dev/packages/intl> | <https://pub.dev/packages/intl> |
| **JSON** | `json_serializable` | <https://pub.dev/packages/json_serializable> | <https://pub.dev/packages/json_serializable> |
| ... | `json_annotation` | <https://pub.dev/packages/json_annotation> | <https://pub.dev/packages/json_serializable> |
| **Dependency Injection** | `get_it` | <https://pub.dev/packages/get_it> | <https://pub.dev/packages/get_it>|
| ... | `injectable` | <https://pub.dev/packages/injectable> | <https://pub.dev/packages/injectable>|
| ... | `injectable_generator` | <https://pub.dev/packages/injectable_generator> | <https://pub.dev/packages/injectable>|
| **Local Storage** | `shared_preferences` | <https://pub.dev/packages/shared_preferences> | <https://pub.dev/packages/shared_preferences> |
| **Logging** | `logging` | <https://pub.dev/packages/logging> | <https://pub.dev/packages/logging> |
| **Widgets** | `flutter_hooks` | <https://pub.dev/packages/flutter_hooks> | <https://pub.dev/packages/flutter_hooks> |
| ... | `flutter_screenutil` | <https://pub.dev/packages/flutter_screenutil> | <https://pub.dev/packages/flutter_screenutil> |
| ... | `flutter_svg` | <https://pub.dev/packages/flutter_svg> | <https://pub.dev/packages/flutter_svg> |
| ... | `google_fonts` | <https://pub.dev/packages/google_fonts> | <https://pub.dev/packages/google_fonts> |

All the library above are compatible with Flutter 3.

Notes: **need to install [flutter_gen](https://pub.dev/packages/flutter_gen)*

---

## Project Structure 🏛

```
...
lib
├── app
|   ├── router
|   |   ├── app_router.dart             # Application Router
|   ├── view
|   |   ├── app.dart                    # MainApp File
|   ├── app.dart
├── core
|   ├── di
|   ├── domain
|   ├── utils
├── shared
├── features
|   ├── counter
|   |   ├── data
|   |   |   ├── datasources
|   |   |   ├── models
|   |   |   ├── repositories
|   |   ├── domain
|   |   |   ├── entities
|   |   |   ├── repositories
|   |   |   ├── usecases
|   |   ├── presentation
|   |   |   ├── blocs
|   |   |   ├── pages
|   |   |   ├── widgets
├── l10n
│   ├── arb
│   │   ├── app_en.arb
│   │   └── app_id.arb
├── bootstrap.dart
├── main_development.dart
├── main_production.dart
├── main_staging.dart
test
├── app
├── features
|   ├── counter
|   |   ├── data
|   |   |   ├── datasources
|   |   |   ├── models
|   |   |   ├── repositories
|   |   ├── domain
|   |   |   ├── entities
|   |   |   ├── repositories
|   |   |   ├── usecases
|   |   ├── presentation
|   |   |   ├── blocs
|   |   |   ├── pages
|   |   |   ├── widgets
├── helpers
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
