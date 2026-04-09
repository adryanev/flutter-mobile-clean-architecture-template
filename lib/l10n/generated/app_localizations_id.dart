// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get counterAppBarTitle => 'Penghitung';

  @override
  String get invalidEmail => 'Alamat Email tidak valid';

  @override
  String get invalidPassword =>
      'Password harus terdiri dari 8 karakter yang terdiri dari huruf dan angka.';

  @override
  String get confirmPasswordMismatch => 'Konfirmasi password tidak cocok.';
}
