import 'package:template/core/utils/constants.dart';
import 'package:template/injector.dart';

Future<void> configureInjector() async {
  await configureDependencies(environment: Environment.test);
}
