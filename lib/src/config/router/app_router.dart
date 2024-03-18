import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:np_app_test/src/home/view/home.dart';

import '../../shared/presentation/views/views.dart';
import 'app_route.dart';

class AppRouter {
  late GoRouter routerConfig = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        name: AppRoute.splash.name,
        path: AppRoute.splash.path,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        name: AppRoute.home.name,
        path: AppRoute.home.path,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
    ],
  );
}
