import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/splash_page',
          page: SplashRoute.page,
          initial: true,
        ),
      ];

  @override
  List<AutoRouteGuard> get guards => [
    // AutoRouteGuard.redirectPath(redirect)
        // optionally add root guards here
        // spash router guard
      ];
}
