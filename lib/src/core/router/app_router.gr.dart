// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:vegan/src/features/coming_soon/presentation/page/coming_soon_page.dart'
    as _i1;
import 'package:vegan/src/features/dashboard/coming_soon_tab.dart' as _i2;
import 'package:vegan/src/features/dashboard/dashboard_page.dart' as _i3;
import 'package:vegan/src/features/dashboard/downloads_tab.dart' as _i5;
import 'package:vegan/src/features/dashboard/home_tab.dart' as _i6;
import 'package:vegan/src/features/dashboard/more_tab.dart' as _i9;
import 'package:vegan/src/features/dashboard/search_tab.dart' as _i12;
import 'package:vegan/src/features/downloads/downloads_page.dart' as _i4;
import 'package:vegan/src/features/more/more_page.dart' as _i8;
import 'package:vegan/src/features/player/view/max_player.dart' as _i7;
import 'package:vegan/src/features/search/search_page.dart' as _i11;
import 'package:vegan/src/features/splash/splash_page.dart' as _i13;
import 'package:vegan/src/features/video_hub/presentation/page/playlist_page.dart'
    as _i10;
import 'package:vegan/src/features/video_hub/presentation/page/video_hub_page.dart'
    as _i14;

/// generated route for
/// [_i1.ComingSoonPage]
class ComingSoonRoute extends _i15.PageRouteInfo<void> {
  const ComingSoonRoute({List<_i15.PageRouteInfo>? children})
    : super(ComingSoonRoute.name, initialChildren: children);

  static const String name = 'ComingSoonRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i1.ComingSoonPage();
    },
  );
}

/// generated route for
/// [_i2.ComingSoonTab]
class ComingSoonTab extends _i15.PageRouteInfo<void> {
  const ComingSoonTab({List<_i15.PageRouteInfo>? children})
    : super(ComingSoonTab.name, initialChildren: children);

  static const String name = 'ComingSoonTab';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i2.ComingSoonTab();
    },
  );
}

/// generated route for
/// [_i3.DashboardPage]
class DashboardRoute extends _i15.PageRouteInfo<void> {
  const DashboardRoute({List<_i15.PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i3.DashboardPage();
    },
  );
}

/// generated route for
/// [_i4.DownloadsPage]
class DownloadsRoute extends _i15.PageRouteInfo<void> {
  const DownloadsRoute({List<_i15.PageRouteInfo>? children})
    : super(DownloadsRoute.name, initialChildren: children);

  static const String name = 'DownloadsRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i4.DownloadsPage();
    },
  );
}

/// generated route for
/// [_i5.DownloadsTab]
class DownloadsTab extends _i15.PageRouteInfo<void> {
  const DownloadsTab({List<_i15.PageRouteInfo>? children})
    : super(DownloadsTab.name, initialChildren: children);

  static const String name = 'DownloadsTab';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i5.DownloadsTab();
    },
  );
}

/// generated route for
/// [_i6.HomeTab]
class HomeTab extends _i15.PageRouteInfo<void> {
  const HomeTab({List<_i15.PageRouteInfo>? children})
    : super(HomeTab.name, initialChildren: children);

  static const String name = 'HomeTab';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i6.HomeTab();
    },
  );
}

/// generated route for
/// [_i7.MaxPlayerPage]
class MaxPlayerRoute extends _i15.PageRouteInfo<void> {
  const MaxPlayerRoute({List<_i15.PageRouteInfo>? children})
    : super(MaxPlayerRoute.name, initialChildren: children);

  static const String name = 'MaxPlayerRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i7.MaxPlayerPage();
    },
  );
}

/// generated route for
/// [_i8.MorePage]
class MoreRoute extends _i15.PageRouteInfo<void> {
  const MoreRoute({List<_i15.PageRouteInfo>? children})
    : super(MoreRoute.name, initialChildren: children);

  static const String name = 'MoreRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i8.MorePage();
    },
  );
}

/// generated route for
/// [_i9.MoreTab]
class MoreTab extends _i15.PageRouteInfo<void> {
  const MoreTab({List<_i15.PageRouteInfo>? children})
    : super(MoreTab.name, initialChildren: children);

  static const String name = 'MoreTab';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i9.MoreTab();
    },
  );
}

/// generated route for
/// [_i10.PlaylistPage]
class PlaylistRoute extends _i15.PageRouteInfo<PlaylistRouteArgs> {
  PlaylistRoute({
    _i16.Key? key,
    required String browseId,
    List<_i15.PageRouteInfo>? children,
  }) : super(
         PlaylistRoute.name,
         args: PlaylistRouteArgs(key: key, browseId: browseId),
         initialChildren: children,
       );

  static const String name = 'PlaylistRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PlaylistRouteArgs>();
      return _i10.PlaylistPage(key: args.key, browseId: args.browseId);
    },
  );
}

class PlaylistRouteArgs {
  const PlaylistRouteArgs({this.key, required this.browseId});

  final _i16.Key? key;

  final String browseId;

  @override
  String toString() {
    return 'PlaylistRouteArgs{key: $key, browseId: $browseId}';
  }
}

/// generated route for
/// [_i11.SearchPage]
class SearchRoute extends _i15.PageRouteInfo<void> {
  const SearchRoute({List<_i15.PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i11.SearchPage();
    },
  );
}

/// generated route for
/// [_i12.SearchTab]
class SearchTab extends _i15.PageRouteInfo<void> {
  const SearchTab({List<_i15.PageRouteInfo>? children})
    : super(SearchTab.name, initialChildren: children);

  static const String name = 'SearchTab';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i12.SearchTab();
    },
  );
}

/// generated route for
/// [_i13.SplashPage]
class SplashRoute extends _i15.PageRouteInfo<void> {
  const SplashRoute({List<_i15.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i13.SplashPage();
    },
  );
}

/// generated route for
/// [_i14.VideoHubPage]
class VideoHubRoute extends _i15.PageRouteInfo<void> {
  const VideoHubRoute({List<_i15.PageRouteInfo>? children})
    : super(VideoHubRoute.name, initialChildren: children);

  static const String name = 'VideoHubRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i14.VideoHubPage();
    },
  );
}
