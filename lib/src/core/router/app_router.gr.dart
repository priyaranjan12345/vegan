// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:vegan/src/features/dashboard/dashboard_page.dart' as _i1;
import 'package:vegan/src/features/dashboard/home_tab.dart' as _i2;
import 'package:vegan/src/features/dashboard/search_tab.dart' as _i4;
import 'package:vegan/src/features/search/search_page.dart' as _i3;
import 'package:vegan/src/features/splash/splash_page.dart' as _i5;
import 'package:vegan/src/features/video_hub/presentation/page/video_hub_page.dart'
    as _i6;

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute({List<_i7.PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.DashboardPage();
    },
  );
}

/// generated route for
/// [_i2.HomeTab]
class HomeTab extends _i7.PageRouteInfo<void> {
  const HomeTab({List<_i7.PageRouteInfo>? children})
    : super(HomeTab.name, initialChildren: children);

  static const String name = 'HomeTab';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeTab();
    },
  );
}

/// generated route for
/// [_i3.SearchPage]
class SearchRoute extends _i7.PageRouteInfo<void> {
  const SearchRoute({List<_i7.PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.SearchPage();
    },
  );
}

/// generated route for
/// [_i4.SearchTab]
class SearchTab extends _i7.PageRouteInfo<void> {
  const SearchTab({List<_i7.PageRouteInfo>? children})
    : super(SearchTab.name, initialChildren: children);

  static const String name = 'SearchTab';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.SearchTab();
    },
  );
}

/// generated route for
/// [_i5.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.SplashPage();
    },
  );
}

/// generated route for
/// [_i6.VideoHubPage]
class VideoHubRoute extends _i7.PageRouteInfo<void> {
  const VideoHubRoute({List<_i7.PageRouteInfo>? children})
    : super(VideoHubRoute.name, initialChildren: children);

  static const String name = 'VideoHubRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.VideoHubPage();
    },
  );
}
