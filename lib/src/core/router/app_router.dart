import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';
import 'app_router_guard.dart';

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
          guards: [
            SpalshRouteGuard(),
          ],
        ),
        AutoRoute(
          path: '/dashboard_page',
          page: DashboardRoute.page,
          children: [
            AutoRoute(
              path: 'home_tab',
              page: HomeTab.page,
              children: [
                AutoRoute(
                  path: '',
                  page: VideoHubRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              path: 'search_tab',
              page: SearchTab.page,
              children: [
                AutoRoute(
                  path: '',
                  page: SearchRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              path: 'coming_soon_tab',
              page: ComingSoonTab.page,
              children: [
                AutoRoute(
                  path: '',
                  page: ComingSoonRoute.page,
                  initial: true,
                ),
              ],
            ),
          ],
        ),
      ];

  @override
  List<AutoRouteGuard> get guards => [
        // AutoRouteGuard.redirectPath(redirect)
        // optionally add root guards here
        // spash router guard
      ];
}
