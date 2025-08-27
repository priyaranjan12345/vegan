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
      path: '/',
      page: SplashRoute.page,
      initial: true,
      guards: [
        SpalshRouteGuard(),
      ],
    ),
    AutoRoute(
      path: '/dashboard_page',
      page: DashboardRoute.page,
      // initial: true,
      // guards: [
      //   DashboardRouteGuard(),
      // ],
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
            AutoRoute(
              path: 'playlist',
              page: PlaylistRoute.page,
            ),
            AutoRoute(
              path: 'albums',
              page: AlbumsRoute.page,
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
        AutoRoute(
          path: 'downloads_tab',
          page: DownloadsTab.page,
          children: [
            AutoRoute(
              path: '',
              page: DownloadsRoute.page,
              initial: true,
            ),
          ],
        ),
        AutoRoute(
          path: 'more_tab',
          page: MoreTab.page,
          children: [
            AutoRoute(
              path: '',
              page: MoreRoute.page,
              initial: true,
            ),
          ],
        ),
      ],
    ),
    AutoRoute(
      path: '/max-player',
      page: MaxPlayerRoute.page,
    ),
  ];

  @override
  List<AutoRouteGuard> get guards => [
    // AutoRouteGuard.redirectPath(redirect)
    // optionally add root guards here
    // spash router guard
  ];
}
