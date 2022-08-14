import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Environment {
  const Environment._();
  static const String development = 'development';
  static const String staging = 'staging';
  static const String production = 'production';
  static const String test = 'test';
}

class ScreenUtilSize {
  const ScreenUtilSize._();
  static const double width = 390;
  static const double height = 844;
}

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

class DateTimeFormat {
  static DateFormat get dayString => DateFormat.EEEE();
  static DateFormat get monthAbbrWithDate => DateFormat.MMMMd();
  static DateFormat get hourMinutes => DateFormat.Hm();
}

enum MessageType {
  info,
  warning,
  success,
  danger,
}
