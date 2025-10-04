// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;
import 'package:vegan/src/features/albums/presentation/pages/albums_page.dart'
    as _i1;
import 'package:vegan/src/features/coming_soon/presentation/page/coming_soon_page.dart'
    as _i2;
import 'package:vegan/src/features/dashboard/coming_soon_tab.dart' as _i3;
import 'package:vegan/src/features/dashboard/dashboard_page.dart' as _i4;
import 'package:vegan/src/features/dashboard/downloads_tab.dart' as _i6;
import 'package:vegan/src/features/dashboard/home_tab.dart' as _i7;
import 'package:vegan/src/features/dashboard/more_tab.dart' as _i10;
import 'package:vegan/src/features/dashboard/search_tab.dart' as _i13;
import 'package:vegan/src/features/downloads/presentation/pages/downloads_page.dart' as _i5;
import 'package:vegan/src/features/more/more_page.dart' as _i9;
import 'package:vegan/src/features/player/presentation/view/max_player.dart' as _i8;
import 'package:vegan/src/features/search/presentation/pages/search_page.dart'
    as _i12;
import 'package:vegan/src/features/splash/splash_page.dart' as _i14;
import 'package:vegan/src/features/video_hub/presentation/page/playlist_page.dart'
    as _i11;
import 'package:vegan/src/features/video_hub/presentation/page/video_hub_page.dart'
    as _i15;

/// generated route for
/// [_i1.AlbumsPage]
class AlbumsRoute extends _i16.PageRouteInfo<AlbumsRouteArgs> {
  AlbumsRoute({
    _i17.Key? key,
    required String browseId,
    required String thumbnail,
    required String title,
    required String subtitle,
    List<_i16.PageRouteInfo>? children,
  }) : super(
         AlbumsRoute.name,
         args: AlbumsRouteArgs(
           key: key,
           browseId: browseId,
           thumbnail: thumbnail,
           title: title,
           subtitle: subtitle,
         ),
         initialChildren: children,
       );

  static const String name = 'AlbumsRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AlbumsRouteArgs>();
      return _i1.AlbumsPage(
        key: args.key,
        browseId: args.browseId,
        thumbnail: args.thumbnail,
        title: args.title,
        subtitle: args.subtitle,
      );
    },
  );
}

class AlbumsRouteArgs {
  const AlbumsRouteArgs({
    this.key,
    required this.browseId,
    required this.thumbnail,
    required this.title,
    required this.subtitle,
  });

  final _i17.Key? key;

  final String browseId;

  final String thumbnail;

  final String title;

  final String subtitle;

  @override
  String toString() {
    return 'AlbumsRouteArgs{key: $key, browseId: $browseId, thumbnail: $thumbnail, title: $title, subtitle: $subtitle}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AlbumsRouteArgs) return false;
    return key == other.key &&
        browseId == other.browseId &&
        thumbnail == other.thumbnail &&
        title == other.title &&
        subtitle == other.subtitle;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      browseId.hashCode ^
      thumbnail.hashCode ^
      title.hashCode ^
      subtitle.hashCode;
}

/// generated route for
/// [_i2.ComingSoonPage]
class ComingSoonRoute extends _i16.PageRouteInfo<void> {
  const ComingSoonRoute({List<_i16.PageRouteInfo>? children})
    : super(ComingSoonRoute.name, initialChildren: children);

  static const String name = 'ComingSoonRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i2.ComingSoonPage();
    },
  );
}

/// generated route for
/// [_i3.ComingSoonTab]
class ComingSoonTab extends _i16.PageRouteInfo<void> {
  const ComingSoonTab({List<_i16.PageRouteInfo>? children})
    : super(ComingSoonTab.name, initialChildren: children);

  static const String name = 'ComingSoonTab';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i3.ComingSoonTab();
    },
  );
}

/// generated route for
/// [_i4.DashboardPage]
class DashboardRoute extends _i16.PageRouteInfo<void> {
  const DashboardRoute({List<_i16.PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i4.DashboardPage();
    },
  );
}

/// generated route for
/// [_i5.DownloadsPage]
class DownloadsRoute extends _i16.PageRouteInfo<void> {
  const DownloadsRoute({List<_i16.PageRouteInfo>? children})
    : super(DownloadsRoute.name, initialChildren: children);

  static const String name = 'DownloadsRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i5.DownloadsPage();
    },
  );
}

/// generated route for
/// [_i6.DownloadsTab]
class DownloadsTab extends _i16.PageRouteInfo<void> {
  const DownloadsTab({List<_i16.PageRouteInfo>? children})
    : super(DownloadsTab.name, initialChildren: children);

  static const String name = 'DownloadsTab';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i6.DownloadsTab();
    },
  );
}

/// generated route for
/// [_i7.HomeTab]
class HomeTab extends _i16.PageRouteInfo<void> {
  const HomeTab({List<_i16.PageRouteInfo>? children})
    : super(HomeTab.name, initialChildren: children);

  static const String name = 'HomeTab';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i7.HomeTab();
    },
  );
}

/// generated route for
/// [_i8.MaxPlayerPage]
class MaxPlayerRoute extends _i16.PageRouteInfo<void> {
  const MaxPlayerRoute({List<_i16.PageRouteInfo>? children})
    : super(MaxPlayerRoute.name, initialChildren: children);

  static const String name = 'MaxPlayerRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i8.MaxPlayerPage();
    },
  );
}

/// generated route for
/// [_i9.MorePage]
class MoreRoute extends _i16.PageRouteInfo<void> {
  const MoreRoute({List<_i16.PageRouteInfo>? children})
    : super(MoreRoute.name, initialChildren: children);

  static const String name = 'MoreRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i9.MorePage();
    },
  );
}

/// generated route for
/// [_i10.MoreTab]
class MoreTab extends _i16.PageRouteInfo<void> {
  const MoreTab({List<_i16.PageRouteInfo>? children})
    : super(MoreTab.name, initialChildren: children);

  static const String name = 'MoreTab';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i10.MoreTab();
    },
  );
}

/// generated route for
/// [_i11.PlaylistPage]
class PlaylistRoute extends _i16.PageRouteInfo<PlaylistRouteArgs> {
  PlaylistRoute({
    _i17.Key? key,
    required String browseId,
    String? params,
    List<_i16.PageRouteInfo>? children,
  }) : super(
         PlaylistRoute.name,
         args: PlaylistRouteArgs(key: key, browseId: browseId, params: params),
         initialChildren: children,
       );

  static const String name = 'PlaylistRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PlaylistRouteArgs>();
      return _i11.PlaylistPage(
        key: args.key,
        browseId: args.browseId,
        params: args.params,
      );
    },
  );
}

class PlaylistRouteArgs {
  const PlaylistRouteArgs({this.key, required this.browseId, this.params});

  final _i17.Key? key;

  final String browseId;

  final String? params;

  @override
  String toString() {
    return 'PlaylistRouteArgs{key: $key, browseId: $browseId, params: $params}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PlaylistRouteArgs) return false;
    return key == other.key &&
        browseId == other.browseId &&
        params == other.params;
  }

  @override
  int get hashCode => key.hashCode ^ browseId.hashCode ^ params.hashCode;
}

/// generated route for
/// [_i12.SearchPage]
class SearchRoute extends _i16.PageRouteInfo<void> {
  const SearchRoute({List<_i16.PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i12.SearchPage();
    },
  );
}

/// generated route for
/// [_i13.SearchTab]
class SearchTab extends _i16.PageRouteInfo<void> {
  const SearchTab({List<_i16.PageRouteInfo>? children})
    : super(SearchTab.name, initialChildren: children);

  static const String name = 'SearchTab';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i13.SearchTab();
    },
  );
}

/// generated route for
/// [_i14.SplashPage]
class SplashRoute extends _i16.PageRouteInfo<void> {
  const SplashRoute({List<_i16.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i14.SplashPage();
    },
  );
}

/// generated route for
/// [_i15.VideoHubPage]
class VideoHubRoute extends _i16.PageRouteInfo<void> {
  const VideoHubRoute({List<_i16.PageRouteInfo>? children})
    : super(VideoHubRoute.name, initialChildren: children);

  static const String name = 'VideoHubRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i15.VideoHubPage();
    },
  );
}
