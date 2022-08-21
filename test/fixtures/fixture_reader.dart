import 'dart:io';

/// Read fixture data as string
/// Example:
/// ```dart
///   final data = fixture('user','user.json');
/// ```
/// Where `user` is a [path] is folder inside fixture,
/// and `user.json` is the file [name].
String fixture(String path, String name) =>
    File('$path/$name').readAsStringSync();
