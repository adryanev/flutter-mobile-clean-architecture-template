import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:template/features/counter/counter.dart';

class AppRouter {
  static const home = 'counter';
  static const counter = 'counter';
}

final appRouter = GoRouter(
  debugLogDiagnostics: kDebugMode || kProfileMode,
  routes: [
    GoRoute(
      path: '/',
      name: AppRouter.home,
      builder: (context, state) => const CounterPage(),
    )
  ],
);
