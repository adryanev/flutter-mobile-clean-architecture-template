// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get counterAppBarTitle => 'Counter';

  @override
  String get invalidEmail => 'Invalid Email Address';

  @override
  String get invalidPassword =>
      'Password must be at least 8 characters and contain at least one letter and number';

  @override
  String get confirmPasswordMismatch => 'Password confirmation not match';
}
