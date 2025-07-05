import 'package:equatable/equatable.dart';

class YtContinuationModel extends Equatable {
  const YtContinuationModel({
    required this.responseContext,
    required this.contents,
    required this.continuationContents,
    required this.trackingParams,
    required this.maxAgeStoreSeconds,
  });

  final ResponseContext? responseContext;
  final Contents? contents;
  final ContinuationContents? continuationContents;
  final String? trackingParams;
  final int? maxAgeStoreSeconds;

  factory YtContinuationModel.fromJson(Map<String, dynamic> json) {
    return YtContinuationModel(
      responseContext: json['responseContext'] == null
          ? null
          : ResponseContext.fromJson(json['responseContext']),
      contents: json['contents'] == null
          ? null
          : Contents.fromJson(json['contents']),
      continuationContents: json['continuationContents'] == null
          ? null
          : ContinuationContents.fromJson(json['continuationContents']),
      trackingParams: json['trackingParams'],
      maxAgeStoreSeconds: json['maxAgeStoreSeconds'],
    );
  }

  @override
  List<Object?> get props => [
    responseContext,
    contents,
    continuationContents,
    trackingParams,
    maxAgeStoreSeconds,
  ];
}

class Contents extends Equatable {
  const Contents({
    required this.singleColumnBrowseResultsRenderer,
  });

  final SingleColumnBrowseResultsRenderer? singleColumnBrowseResultsRenderer;

  factory Contents.fromJson(Map<String, dynamic> json) {
    return Contents(
      singleColumnBrowseResultsRenderer:
          json['singleColumnBrowseResultsRenderer'] == null
          ? null
          : SingleColumnBrowseResultsRenderer.fromJson(
              json['singleColumnBrowseResultsRenderer'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    singleColumnBrowseResultsRenderer,
  ];
}

class SingleColumnBrowseResultsRenderer extends Equatable {
  const SingleColumnBrowseResultsRenderer({
    required this.tabs,
  });

  final List<Tab> tabs;

  factory SingleColumnBrowseResultsRenderer.fromJson(
    Map<String, dynamic> json,
  ) {
    return SingleColumnBrowseResultsRenderer(
      tabs: json['tabs'] == null
          ? []
          : List<Tab>.from(json['tabs']!.map((x) => Tab.fromJson(x))),
    );
  }

  @override
  List<Object?> get props => [
    tabs,
  ];
}

class Tab extends Equatable {
  const Tab({
    required this.tabRenderer,
  });

  final TabRenderer? tabRenderer;

  factory Tab.fromJson(Map<String, dynamic> json) {
    return Tab(
      tabRenderer: json['tabRenderer'] == null
          ? null
          : TabRenderer.fromJson(json['tabRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    tabRenderer,
  ];
}

class TabRenderer extends Equatable {
  const TabRenderer({
    required this.endpoint,
    required this.title,
    required this.selected,
    required this.icon,
    required this.tabIdentifier,
    required this.trackingParams,
  });

  final Endpoint? endpoint;
  final String? title;
  final bool? selected;
  final Icon? icon;
  final String? tabIdentifier;
  final String? trackingParams;

  factory TabRenderer.fromJson(Map<String, dynamic> json) {
    return TabRenderer(
      endpoint: json['endpoint'] == null
          ? null
          : Endpoint.fromJson(json['endpoint']),
      title: json['title'],
      selected: json['selected'],
      icon: json['icon'] == null ? null : Icon.fromJson(json['icon']),
      tabIdentifier: json['tabIdentifier'],
      trackingParams: json['trackingParams'],
    );
  }

  @override
  List<Object?> get props => [
    endpoint,
    title,
    selected,
    icon,
    tabIdentifier,
    trackingParams,
  ];
}

class Endpoint extends Equatable {
  const Endpoint({
    required this.clickTrackingParams,
    required this.browseEndpoint,
  });

  final String? clickTrackingParams;
  final EndpointBrowseEndpoint? browseEndpoint;

  factory Endpoint.fromJson(Map<String, dynamic> json) {
    return Endpoint(
      clickTrackingParams: json['clickTrackingParams'],
      browseEndpoint: json['browseEndpoint'] == null
          ? null
          : EndpointBrowseEndpoint.fromJson(json['browseEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    browseEndpoint,
  ];
}

class EndpointBrowseEndpoint extends Equatable {
  const EndpointBrowseEndpoint({
    required this.browseId,
  });

  final String? browseId;

  factory EndpointBrowseEndpoint.fromJson(Map<String, dynamic> json) {
    return EndpointBrowseEndpoint(
      browseId: json['browseId'],
    );
  }

  @override
  List<Object?> get props => [
    browseId,
  ];
}

class Icon extends Equatable {
  const Icon({
    required this.iconType,
  });

  final String? iconType;

  factory Icon.fromJson(Map<String, dynamic> json) {
    return Icon(
      iconType: json['iconType'],
    );
  }

  @override
  List<Object?> get props => [
    iconType,
  ];
}

class ContinuationContents extends Equatable {
  const ContinuationContents({
    required this.sectionListContinuation,
  });

  final SectionListContinuation? sectionListContinuation;

  factory ContinuationContents.fromJson(Map<String, dynamic> json) {
    return ContinuationContents(
      sectionListContinuation: json['sectionListContinuation'] == null
          ? null
          : SectionListContinuation.fromJson(json['sectionListContinuation']),
    );
  }

  @override
  List<Object?> get props => [
    sectionListContinuation,
  ];
}

class SectionListContinuation extends Equatable {
  const SectionListContinuation({
    required this.contents,
    required this.continuations,
    required this.trackingParams,
  });

  final List<SectionListContinuationContent> contents;
  final List<Continuation> continuations;
  final String? trackingParams;

  factory SectionListContinuation.fromJson(Map<String, dynamic> json) {
    return SectionListContinuation(
      contents: json['contents'] == null
          ? []
          : List<SectionListContinuationContent>.from(
              json['contents']!.map(
                (x) => SectionListContinuationContent.fromJson(x),
              ),
            ),
      continuations: json['continuations'] == null
          ? []
          : List<Continuation>.from(
              json['continuations']!.map((x) => Continuation.fromJson(x)),
            ),
      trackingParams: json['trackingParams'],
    );
  }

  @override
  List<Object?> get props => [
    contents,
    continuations,
    trackingParams,
  ];
}

class SectionListContinuationContent extends Equatable {
  const SectionListContinuationContent({
    required this.musicCarouselShelfRenderer,
  });

  final MusicCarouselShelfRenderer? musicCarouselShelfRenderer;

  factory SectionListContinuationContent.fromJson(Map<String, dynamic> json) {
    return SectionListContinuationContent(
      musicCarouselShelfRenderer: json['musicCarouselShelfRenderer'] == null
          ? null
          : MusicCarouselShelfRenderer.fromJson(
              json['musicCarouselShelfRenderer'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    musicCarouselShelfRenderer,
  ];
}

class MusicCarouselShelfRenderer extends Equatable {
  const MusicCarouselShelfRenderer({
    required this.header,
    required this.contents,
    required this.trackingParams,
    required this.itemSize,
    required this.numItemsPerColumn,
  });

  final Header? header;
  final List<MusicCarouselShelfRendererContent> contents;
  final String? trackingParams;
  final String? itemSize;
  final String? numItemsPerColumn;

  factory MusicCarouselShelfRenderer.fromJson(Map<String, dynamic> json) {
    return MusicCarouselShelfRenderer(
      header: json['header'] == null ? null : Header.fromJson(json['header']),
      contents: json['contents'] == null
          ? []
          : List<MusicCarouselShelfRendererContent>.from(
              json['contents']!.map(
                (x) => MusicCarouselShelfRendererContent.fromJson(x),
              ),
            ),
      trackingParams: json['trackingParams'],
      itemSize: json['itemSize'],
      numItemsPerColumn: json['numItemsPerColumn'],
    );
  }

  @override
  List<Object?> get props => [
    header,
    contents,
    trackingParams,
    itemSize,
    numItemsPerColumn,
  ];
}

class MusicCarouselShelfRendererContent extends Equatable {
  const MusicCarouselShelfRendererContent({
    required this.musicResponsiveListItemRenderer,
    required this.musicTwoRowItemRenderer,
  });

  final MusicResponsiveListItemRenderer? musicResponsiveListItemRenderer;
  final MusicTwoRowItemRenderer? musicTwoRowItemRenderer;

  factory MusicCarouselShelfRendererContent.fromJson(
    Map<String, dynamic> json,
  ) {
    return MusicCarouselShelfRendererContent(
      musicResponsiveListItemRenderer:
          json['musicResponsiveListItemRenderer'] == null
          ? null
          : MusicResponsiveListItemRenderer.fromJson(
              json['musicResponsiveListItemRenderer'],
            ),
      musicTwoRowItemRenderer: json['musicTwoRowItemRenderer'] == null
          ? null
          : MusicTwoRowItemRenderer.fromJson(json['musicTwoRowItemRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    musicResponsiveListItemRenderer,
    musicTwoRowItemRenderer,
  ];
}

class MusicResponsiveListItemRenderer extends Equatable {
  const MusicResponsiveListItemRenderer({
    required this.trackingParams,
    required this.thumbnail,
    required this.overlay,
    required this.flexColumns,
    required this.menu,
    required this.playlistItemData,
    required this.flexColumnDisplayStyle,
    required this.itemHeight,
  });

  final String? trackingParams;
  final ThumbnailRendererClass? thumbnail;
  final Overlay? overlay;
  final List<FlexColumn> flexColumns;
  final MusicResponsiveListItemRendererMenu? menu;
  final PlaylistItemData? playlistItemData;
  final String? flexColumnDisplayStyle;
  final String? itemHeight;

  factory MusicResponsiveListItemRenderer.fromJson(Map<String, dynamic> json) {
    return MusicResponsiveListItemRenderer(
      trackingParams: json['trackingParams'],
      thumbnail: json['thumbnail'] == null
          ? null
          : ThumbnailRendererClass.fromJson(json['thumbnail']),
      overlay: json['overlay'] == null
          ? null
          : Overlay.fromJson(json['overlay']),
      flexColumns: json['flexColumns'] == null
          ? []
          : List<FlexColumn>.from(
              json['flexColumns']!.map((x) => FlexColumn.fromJson(x)),
            ),
      menu: json['menu'] == null
          ? null
          : MusicResponsiveListItemRendererMenu.fromJson(json['menu']),
      playlistItemData: json['playlistItemData'] == null
          ? null
          : PlaylistItemData.fromJson(json['playlistItemData']),
      flexColumnDisplayStyle: json['flexColumnDisplayStyle'],
      itemHeight: json['itemHeight'],
    );
  }

  @override
  List<Object?> get props => [
    trackingParams,
    thumbnail,
    overlay,
    flexColumns,
    menu,
    playlistItemData,
    flexColumnDisplayStyle,
    itemHeight,
  ];
}

class FlexColumn extends Equatable {
  const FlexColumn({
    required this.musicResponsiveListItemFlexColumnRenderer,
  });

  final MusicResponsiveListItemFlexColumnRenderer?
  musicResponsiveListItemFlexColumnRenderer;

  factory FlexColumn.fromJson(Map<String, dynamic> json) {
    return FlexColumn(
      musicResponsiveListItemFlexColumnRenderer:
          json['musicResponsiveListItemFlexColumnRenderer'] == null
          ? null
          : MusicResponsiveListItemFlexColumnRenderer.fromJson(
              json['musicResponsiveListItemFlexColumnRenderer'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    musicResponsiveListItemFlexColumnRenderer,
  ];
}

class MusicResponsiveListItemFlexColumnRenderer extends Equatable {
  const MusicResponsiveListItemFlexColumnRenderer({
    required this.text,
    required this.displayPriority,
  });

  final Text? text;
  final String? displayPriority;

  factory MusicResponsiveListItemFlexColumnRenderer.fromJson(
    Map<String, dynamic> json,
  ) {
    return MusicResponsiveListItemFlexColumnRenderer(
      text: json['text'] == null ? null : Text.fromJson(json['text']),
      displayPriority: json['displayPriority'],
    );
  }

  @override
  List<Object?> get props => [
    text,
    displayPriority,
  ];
}

class Text extends Equatable {
  const Text({
    required this.runs,
    required this.accessibility,
  });

  final List<PurpleRun> runs;
  final Accessibility? accessibility;

  factory Text.fromJson(Map<String, dynamic> json) {
    return Text(
      runs: json['runs'] == null
          ? []
          : List<PurpleRun>.from(
              json['runs']!.map((x) => PurpleRun.fromJson(x)),
            ),
      accessibility: json['accessibility'] == null
          ? null
          : Accessibility.fromJson(json['accessibility']),
    );
  }

  @override
  List<Object?> get props => [
    runs,
    accessibility,
  ];
}

class Accessibility extends Equatable {
  const Accessibility({
    required this.accessibilityData,
  });

  final AccessibilityData? accessibilityData;

  factory Accessibility.fromJson(Map<String, dynamic> json) {
    return Accessibility(
      accessibilityData: json['accessibilityData'] == null
          ? null
          : AccessibilityData.fromJson(json['accessibilityData']),
    );
  }

  @override
  List<Object?> get props => [
    accessibilityData,
  ];
}

class AccessibilityData extends Equatable {
  const AccessibilityData({
    required this.label,
  });

  final String? label;

  factory AccessibilityData.fromJson(Map<String, dynamic> json) {
    return AccessibilityData(
      label: json['label'],
    );
  }

  @override
  List<Object?> get props => [
    label,
  ];
}

class PurpleRun extends Equatable {
  const PurpleRun({
    required this.text,
    required this.navigationEndpoint,
  });

  final String? text;
  final PurpleNavigationEndpoint? navigationEndpoint;

  factory PurpleRun.fromJson(Map<String, dynamic> json) {
    return PurpleRun(
      text: json['text'],
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : PurpleNavigationEndpoint.fromJson(json['navigationEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    text,
    navigationEndpoint,
  ];
}

class PurpleNavigationEndpoint extends Equatable {
  const PurpleNavigationEndpoint({
    required this.clickTrackingParams,
    required this.watchEndpoint,
    required this.browseEndpoint,
  });

  final String? clickTrackingParams;
  final PurpleWatchEndpoint? watchEndpoint;
  final PurpleBrowseEndpoint? browseEndpoint;

  factory PurpleNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return PurpleNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      watchEndpoint: json['watchEndpoint'] == null
          ? null
          : PurpleWatchEndpoint.fromJson(json['watchEndpoint']),
      browseEndpoint: json['browseEndpoint'] == null
          ? null
          : PurpleBrowseEndpoint.fromJson(json['browseEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    watchEndpoint,
    browseEndpoint,
  ];
}

class PurpleBrowseEndpoint extends Equatable {
  const PurpleBrowseEndpoint({
    required this.browseId,
    required this.browseEndpointContextSupportedConfigs,
    required this.params,
  });

  final String? browseId;
  final BrowseEndpointContextSupportedConfigs?
  browseEndpointContextSupportedConfigs;
  final String? params;

  factory PurpleBrowseEndpoint.fromJson(Map<String, dynamic> json) {
    return PurpleBrowseEndpoint(
      browseId: json['browseId'],
      browseEndpointContextSupportedConfigs:
          json['browseEndpointContextSupportedConfigs'] == null
          ? null
          : BrowseEndpointContextSupportedConfigs.fromJson(
              json['browseEndpointContextSupportedConfigs'],
            ),
      params: json['params'],
    );
  }

  @override
  List<Object?> get props => [
    browseId,
    browseEndpointContextSupportedConfigs,
    params,
  ];
}

class BrowseEndpointContextSupportedConfigs extends Equatable {
  const BrowseEndpointContextSupportedConfigs({
    required this.browseEndpointContextMusicConfig,
  });

  final BrowseEndpointContextMusicConfig? browseEndpointContextMusicConfig;

  factory BrowseEndpointContextSupportedConfigs.fromJson(
    Map<String, dynamic> json,
  ) {
    return BrowseEndpointContextSupportedConfigs(
      browseEndpointContextMusicConfig:
          json['browseEndpointContextMusicConfig'] == null
          ? null
          : BrowseEndpointContextMusicConfig.fromJson(
              json['browseEndpointContextMusicConfig'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    browseEndpointContextMusicConfig,
  ];
}

class BrowseEndpointContextMusicConfig extends Equatable {
  const BrowseEndpointContextMusicConfig({
    required this.pageType,
  });

  final String? pageType;

  factory BrowseEndpointContextMusicConfig.fromJson(Map<String, dynamic> json) {
    return BrowseEndpointContextMusicConfig(
      pageType: json['pageType'],
    );
  }

  @override
  List<Object?> get props => [
    pageType,
  ];
}

class PurpleWatchEndpoint extends Equatable {
  const PurpleWatchEndpoint({
    required this.videoId,
    required this.playlistId,
    required this.playerParams,
    required this.loggingContext,
    required this.watchEndpointMusicSupportedConfigs,
    required this.params,
  });

  final String? videoId;
  final String? playlistId;
  final String? playerParams;
  final LoggingContext? loggingContext;
  final WatchEndpointMusicSupportedConfigs? watchEndpointMusicSupportedConfigs;
  final String? params;

  factory PurpleWatchEndpoint.fromJson(Map<String, dynamic> json) {
    return PurpleWatchEndpoint(
      videoId: json['videoId'],
      playlistId: json['playlistId'],
      playerParams: json['playerParams'],
      loggingContext: json['loggingContext'] == null
          ? null
          : LoggingContext.fromJson(json['loggingContext']),
      watchEndpointMusicSupportedConfigs:
          json['watchEndpointMusicSupportedConfigs'] == null
          ? null
          : WatchEndpointMusicSupportedConfigs.fromJson(
              json['watchEndpointMusicSupportedConfigs'],
            ),
      params: json['params'],
    );
  }

  @override
  List<Object?> get props => [
    videoId,
    playlistId,
    playerParams,
    loggingContext,
    watchEndpointMusicSupportedConfigs,
    params,
  ];
}

class LoggingContext extends Equatable {
  const LoggingContext({
    required this.vssLoggingContext,
  });

  final VssLoggingContext? vssLoggingContext;

  factory LoggingContext.fromJson(Map<String, dynamic> json) {
    return LoggingContext(
      vssLoggingContext: json['vssLoggingContext'] == null
          ? null
          : VssLoggingContext.fromJson(json['vssLoggingContext']),
    );
  }

  @override
  List<Object?> get props => [
    vssLoggingContext,
  ];
}

class VssLoggingContext extends Equatable {
  const VssLoggingContext({
    required this.serializedContextData,
  });

  final String? serializedContextData;

  factory VssLoggingContext.fromJson(Map<String, dynamic> json) {
    return VssLoggingContext(
      serializedContextData: json['serializedContextData'],
    );
  }

  @override
  List<Object?> get props => [
    serializedContextData,
  ];
}

class WatchEndpointMusicSupportedConfigs extends Equatable {
  const WatchEndpointMusicSupportedConfigs({
    required this.watchEndpointMusicConfig,
  });

  final WatchEndpointMusicConfig? watchEndpointMusicConfig;

  factory WatchEndpointMusicSupportedConfigs.fromJson(
    Map<String, dynamic> json,
  ) {
    return WatchEndpointMusicSupportedConfigs(
      watchEndpointMusicConfig: json['watchEndpointMusicConfig'] == null
          ? null
          : WatchEndpointMusicConfig.fromJson(json['watchEndpointMusicConfig']),
    );
  }

  @override
  List<Object?> get props => [
    watchEndpointMusicConfig,
  ];
}

class WatchEndpointMusicConfig extends Equatable {
  const WatchEndpointMusicConfig({
    required this.musicVideoType,
  });

  final String? musicVideoType;

  factory WatchEndpointMusicConfig.fromJson(Map<String, dynamic> json) {
    return WatchEndpointMusicConfig(
      musicVideoType: json['musicVideoType'],
    );
  }

  @override
  List<Object?> get props => [
    musicVideoType,
  ];
}

class MusicResponsiveListItemRendererMenu extends Equatable {
  const MusicResponsiveListItemRendererMenu({
    required this.menuRenderer,
  });

  final PurpleMenuRenderer? menuRenderer;

  factory MusicResponsiveListItemRendererMenu.fromJson(
    Map<String, dynamic> json,
  ) {
    return MusicResponsiveListItemRendererMenu(
      menuRenderer: json['menuRenderer'] == null
          ? null
          : PurpleMenuRenderer.fromJson(json['menuRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    menuRenderer,
  ];
}

class PurpleMenuRenderer extends Equatable {
  const PurpleMenuRenderer({
    required this.items,
    required this.trackingParams,
    required this.topLevelButtons,
    required this.accessibility,
  });

  final List<PurpleItem> items;
  final String? trackingParams;
  final List<TopLevelButton> topLevelButtons;
  final Accessibility? accessibility;

  factory PurpleMenuRenderer.fromJson(Map<String, dynamic> json) {
    return PurpleMenuRenderer(
      items: json['items'] == null
          ? []
          : List<PurpleItem>.from(
              json['items']!.map((x) => PurpleItem.fromJson(x)),
            ),
      trackingParams: json['trackingParams'],
      topLevelButtons: json['topLevelButtons'] == null
          ? []
          : List<TopLevelButton>.from(
              json['topLevelButtons']!.map((x) => TopLevelButton.fromJson(x)),
            ),
      accessibility: json['accessibility'] == null
          ? null
          : Accessibility.fromJson(json['accessibility']),
    );
  }

  @override
  List<Object?> get props => [
    items,
    trackingParams,
    topLevelButtons,
    accessibility,
  ];
}

class PurpleItem extends Equatable {
  const PurpleItem({
    required this.menuNavigationItemRenderer,
    required this.menuServiceItemRenderer,
  });

  final MenuItemRenderer? menuNavigationItemRenderer;
  final MenuItemRenderer? menuServiceItemRenderer;

  factory PurpleItem.fromJson(Map<String, dynamic> json) {
    return PurpleItem(
      menuNavigationItemRenderer: json['menuNavigationItemRenderer'] == null
          ? null
          : MenuItemRenderer.fromJson(json['menuNavigationItemRenderer']),
      menuServiceItemRenderer: json['menuServiceItemRenderer'] == null
          ? null
          : MenuItemRenderer.fromJson(json['menuServiceItemRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    menuNavigationItemRenderer,
    menuServiceItemRenderer,
  ];
}

class MenuItemRenderer extends Equatable {
  const MenuItemRenderer({
    required this.text,
    required this.icon,
    required this.navigationEndpoint,
    required this.trackingParams,
    required this.serviceEndpoint,
  });

  final Strapline? text;
  final Icon? icon;
  final MenuNavigationItemRendererNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;
  final ServiceEndpoint? serviceEndpoint;

  factory MenuItemRenderer.fromJson(Map<String, dynamic> json) {
    return MenuItemRenderer(
      text: json['text'] == null ? null : Strapline.fromJson(json['text']),
      icon: json['icon'] == null ? null : Icon.fromJson(json['icon']),
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : MenuNavigationItemRendererNavigationEndpoint.fromJson(
              json['navigationEndpoint'],
            ),
      trackingParams: json['trackingParams'],
      serviceEndpoint: json['serviceEndpoint'] == null
          ? null
          : ServiceEndpoint.fromJson(json['serviceEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    text,
    icon,
    navigationEndpoint,
    trackingParams,
    serviceEndpoint,
  ];
}

class MenuNavigationItemRendererNavigationEndpoint extends Equatable {
  const MenuNavigationItemRendererNavigationEndpoint({
    required this.clickTrackingParams,
    required this.watchEndpoint,
    required this.modalEndpoint,
    required this.browseEndpoint,
    required this.shareEntityEndpoint,
    required this.watchPlaylistEndpoint,
  });

  final String? clickTrackingParams;
  final PurpleWatchEndpoint? watchEndpoint;
  final ModalEndpoint? modalEndpoint;
  final FluffyBrowseEndpoint? browseEndpoint;
  final ShareEntityEndpoint? shareEntityEndpoint;
  final WatchPlaylistEndpoint? watchPlaylistEndpoint;

  factory MenuNavigationItemRendererNavigationEndpoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return MenuNavigationItemRendererNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      watchEndpoint: json['watchEndpoint'] == null
          ? null
          : PurpleWatchEndpoint.fromJson(json['watchEndpoint']),
      modalEndpoint: json['modalEndpoint'] == null
          ? null
          : ModalEndpoint.fromJson(json['modalEndpoint']),
      browseEndpoint: json['browseEndpoint'] == null
          ? null
          : FluffyBrowseEndpoint.fromJson(json['browseEndpoint']),
      shareEntityEndpoint: json['shareEntityEndpoint'] == null
          ? null
          : ShareEntityEndpoint.fromJson(json['shareEntityEndpoint']),
      watchPlaylistEndpoint: json['watchPlaylistEndpoint'] == null
          ? null
          : WatchPlaylistEndpoint.fromJson(json['watchPlaylistEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    watchEndpoint,
    modalEndpoint,
    browseEndpoint,
    shareEntityEndpoint,
    watchPlaylistEndpoint,
  ];
}

class FluffyBrowseEndpoint extends Equatable {
  const FluffyBrowseEndpoint({
    required this.browseId,
    required this.browseEndpointContextSupportedConfigs,
  });

  final String? browseId;
  final BrowseEndpointContextSupportedConfigs?
  browseEndpointContextSupportedConfigs;

  factory FluffyBrowseEndpoint.fromJson(Map<String, dynamic> json) {
    return FluffyBrowseEndpoint(
      browseId: json['browseId'],
      browseEndpointContextSupportedConfigs:
          json['browseEndpointContextSupportedConfigs'] == null
          ? null
          : BrowseEndpointContextSupportedConfigs.fromJson(
              json['browseEndpointContextSupportedConfigs'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    browseId,
    browseEndpointContextSupportedConfigs,
  ];
}

class ModalEndpoint extends Equatable {
  const ModalEndpoint({
    required this.modal,
  });

  final Modal? modal;

  factory ModalEndpoint.fromJson(Map<String, dynamic> json) {
    return ModalEndpoint(
      modal: json['modal'] == null ? null : Modal.fromJson(json['modal']),
    );
  }

  @override
  List<Object?> get props => [
    modal,
  ];
}

class Modal extends Equatable {
  const Modal({
    required this.modalWithTitleAndButtonRenderer,
  });

  final ModalWithTitleAndButtonRenderer? modalWithTitleAndButtonRenderer;

  factory Modal.fromJson(Map<String, dynamic> json) {
    return Modal(
      modalWithTitleAndButtonRenderer:
          json['modalWithTitleAndButtonRenderer'] == null
          ? null
          : ModalWithTitleAndButtonRenderer.fromJson(
              json['modalWithTitleAndButtonRenderer'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    modalWithTitleAndButtonRenderer,
  ];
}

class ModalWithTitleAndButtonRenderer extends Equatable {
  const ModalWithTitleAndButtonRenderer({
    required this.title,
    required this.content,
    required this.button,
  });

  final Strapline? title;
  final Strapline? content;
  final Button? button;

  factory ModalWithTitleAndButtonRenderer.fromJson(Map<String, dynamic> json) {
    return ModalWithTitleAndButtonRenderer(
      title: json['title'] == null ? null : Strapline.fromJson(json['title']),
      content: json['content'] == null
          ? null
          : Strapline.fromJson(json['content']),
      button: json['button'] == null ? null : Button.fromJson(json['button']),
    );
  }

  @override
  List<Object?> get props => [
    title,
    content,
    button,
  ];
}

class Button extends Equatable {
  const Button({
    required this.buttonRenderer,
  });

  final ButtonButtonRenderer? buttonRenderer;

  factory Button.fromJson(Map<String, dynamic> json) {
    return Button(
      buttonRenderer: json['buttonRenderer'] == null
          ? null
          : ButtonButtonRenderer.fromJson(json['buttonRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    buttonRenderer,
  ];
}

class ButtonButtonRenderer extends Equatable {
  const ButtonButtonRenderer({
    required this.style,
    required this.isDisabled,
    required this.text,
    required this.navigationEndpoint,
    required this.trackingParams,
  });

  final String? style;
  final bool? isDisabled;
  final Strapline? text;
  final FluffyNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;

  factory ButtonButtonRenderer.fromJson(Map<String, dynamic> json) {
    return ButtonButtonRenderer(
      style: json['style'],
      isDisabled: json['isDisabled'],
      text: json['text'] == null ? null : Strapline.fromJson(json['text']),
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : FluffyNavigationEndpoint.fromJson(json['navigationEndpoint']),
      trackingParams: json['trackingParams'],
    );
  }

  @override
  List<Object?> get props => [
    style,
    isDisabled,
    text,
    navigationEndpoint,
    trackingParams,
  ];
}

class FluffyNavigationEndpoint extends Equatable {
  const FluffyNavigationEndpoint({
    required this.clickTrackingParams,
    required this.signInEndpoint,
  });

  final String? clickTrackingParams;
  final SignInEndpoint? signInEndpoint;

  factory FluffyNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return FluffyNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      signInEndpoint: json['signInEndpoint'] == null
          ? null
          : SignInEndpoint.fromJson(json['signInEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    signInEndpoint,
  ];
}

class SignInEndpoint extends Equatable {
  const SignInEndpoint({
    required this.hack,
  });

  final bool? hack;

  factory SignInEndpoint.fromJson(Map<String, dynamic> json) {
    return SignInEndpoint(
      hack: json['hack'],
    );
  }

  @override
  List<Object?> get props => [
    hack,
  ];
}

class Strapline extends Equatable {
  const Strapline({
    required this.runs,
  });

  final List<StraplineRun> runs;

  factory Strapline.fromJson(Map<String, dynamic> json) {
    return Strapline(
      runs: json['runs'] == null
          ? []
          : List<StraplineRun>.from(
              json['runs']!.map((x) => StraplineRun.fromJson(x)),
            ),
    );
  }

  @override
  List<Object?> get props => [
    runs,
  ];
}

class StraplineRun extends Equatable {
  const StraplineRun({
    required this.text,
  });

  final String? text;

  factory StraplineRun.fromJson(Map<String, dynamic> json) {
    return StraplineRun(
      text: json['text'],
    );
  }

  @override
  List<Object?> get props => [
    text,
  ];
}

class ShareEntityEndpoint extends Equatable {
  const ShareEntityEndpoint({
    required this.serializedShareEntity,
    required this.sharePanelType,
  });

  final String? serializedShareEntity;
  final String? sharePanelType;

  factory ShareEntityEndpoint.fromJson(Map<String, dynamic> json) {
    return ShareEntityEndpoint(
      serializedShareEntity: json['serializedShareEntity'],
      sharePanelType: json['sharePanelType'],
    );
  }

  @override
  List<Object?> get props => [
    serializedShareEntity,
    sharePanelType,
  ];
}

class WatchPlaylistEndpoint extends Equatable {
  const WatchPlaylistEndpoint({
    required this.playlistId,
    required this.params,
  });

  final String? playlistId;
  final String? params;

  factory WatchPlaylistEndpoint.fromJson(Map<String, dynamic> json) {
    return WatchPlaylistEndpoint(
      playlistId: json['playlistId'],
      params: json['params'],
    );
  }

  @override
  List<Object?> get props => [
    playlistId,
    params,
  ];
}

class ServiceEndpoint extends Equatable {
  const ServiceEndpoint({
    required this.clickTrackingParams,
    required this.queueAddEndpoint,
  });

  final String? clickTrackingParams;
  final QueueAddEndpoint? queueAddEndpoint;

  factory ServiceEndpoint.fromJson(Map<String, dynamic> json) {
    return ServiceEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      queueAddEndpoint: json['queueAddEndpoint'] == null
          ? null
          : QueueAddEndpoint.fromJson(json['queueAddEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    queueAddEndpoint,
  ];
}

class QueueAddEndpoint extends Equatable {
  const QueueAddEndpoint({
    required this.queueTarget,
    required this.queueInsertPosition,
    required this.commands,
  });

  final QueueTarget? queueTarget;
  final String? queueInsertPosition;
  final List<Command> commands;

  factory QueueAddEndpoint.fromJson(Map<String, dynamic> json) {
    return QueueAddEndpoint(
      queueTarget: json['queueTarget'] == null
          ? null
          : QueueTarget.fromJson(json['queueTarget']),
      queueInsertPosition: json['queueInsertPosition'],
      commands: json['commands'] == null
          ? []
          : List<Command>.from(
              json['commands']!.map((x) => Command.fromJson(x)),
            ),
    );
  }

  @override
  List<Object?> get props => [
    queueTarget,
    queueInsertPosition,
    commands,
  ];
}

class Command extends Equatable {
  const Command({
    required this.clickTrackingParams,
    required this.addToToastAction,
  });

  final String? clickTrackingParams;
  final AddToToastAction? addToToastAction;

  factory Command.fromJson(Map<String, dynamic> json) {
    return Command(
      clickTrackingParams: json['clickTrackingParams'],
      addToToastAction: json['addToToastAction'] == null
          ? null
          : AddToToastAction.fromJson(json['addToToastAction']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    addToToastAction,
  ];
}

class AddToToastAction extends Equatable {
  const AddToToastAction({
    required this.item,
  });

  final AddToToastActionItem? item;

  factory AddToToastAction.fromJson(Map<String, dynamic> json) {
    return AddToToastAction(
      item: json['item'] == null
          ? null
          : AddToToastActionItem.fromJson(json['item']),
    );
  }

  @override
  List<Object?> get props => [
    item,
  ];
}

class AddToToastActionItem extends Equatable {
  const AddToToastActionItem({
    required this.notificationTextRenderer,
  });

  final NotificationTextRenderer? notificationTextRenderer;

  factory AddToToastActionItem.fromJson(Map<String, dynamic> json) {
    return AddToToastActionItem(
      notificationTextRenderer: json['notificationTextRenderer'] == null
          ? null
          : NotificationTextRenderer.fromJson(json['notificationTextRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    notificationTextRenderer,
  ];
}

class NotificationTextRenderer extends Equatable {
  const NotificationTextRenderer({
    required this.successResponseText,
    required this.trackingParams,
  });

  final Strapline? successResponseText;
  final String? trackingParams;

  factory NotificationTextRenderer.fromJson(Map<String, dynamic> json) {
    return NotificationTextRenderer(
      successResponseText: json['successResponseText'] == null
          ? null
          : Strapline.fromJson(json['successResponseText']),
      trackingParams: json['trackingParams'],
    );
  }

  @override
  List<Object?> get props => [
    successResponseText,
    trackingParams,
  ];
}

class QueueTarget extends Equatable {
  const QueueTarget({
    required this.videoId,
    required this.onEmptyQueue,
    required this.playlistId,
  });

  final String? videoId;
  final OnEmptyQueue? onEmptyQueue;
  final String? playlistId;

  factory QueueTarget.fromJson(Map<String, dynamic> json) {
    return QueueTarget(
      videoId: json['videoId'],
      onEmptyQueue: json['onEmptyQueue'] == null
          ? null
          : OnEmptyQueue.fromJson(json['onEmptyQueue']),
      playlistId: json['playlistId'],
    );
  }

  @override
  List<Object?> get props => [
    videoId,
    onEmptyQueue,
    playlistId,
  ];
}

class OnEmptyQueue extends Equatable {
  const OnEmptyQueue({
    required this.clickTrackingParams,
    required this.watchEndpoint,
  });

  final String? clickTrackingParams;
  final OnEmptyQueueWatchEndpoint? watchEndpoint;

  factory OnEmptyQueue.fromJson(Map<String, dynamic> json) {
    return OnEmptyQueue(
      clickTrackingParams: json['clickTrackingParams'],
      watchEndpoint: json['watchEndpoint'] == null
          ? null
          : OnEmptyQueueWatchEndpoint.fromJson(json['watchEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    watchEndpoint,
  ];
}

class OnEmptyQueueWatchEndpoint extends Equatable {
  const OnEmptyQueueWatchEndpoint({
    required this.videoId,
    required this.playlistId,
  });

  final String? videoId;
  final String? playlistId;

  factory OnEmptyQueueWatchEndpoint.fromJson(Map<String, dynamic> json) {
    return OnEmptyQueueWatchEndpoint(
      videoId: json['videoId'],
      playlistId: json['playlistId'],
    );
  }

  @override
  List<Object?> get props => [
    videoId,
    playlistId,
  ];
}

class TopLevelButton extends Equatable {
  const TopLevelButton({
    required this.likeButtonRenderer,
  });

  final LikeButtonRenderer? likeButtonRenderer;

  factory TopLevelButton.fromJson(Map<String, dynamic> json) {
    return TopLevelButton(
      likeButtonRenderer: json['likeButtonRenderer'] == null
          ? null
          : LikeButtonRenderer.fromJson(json['likeButtonRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    likeButtonRenderer,
  ];
}

class LikeButtonRenderer extends Equatable {
  const LikeButtonRenderer({
    required this.target,
    required this.likeStatus,
    required this.trackingParams,
    required this.likesAllowed,
    required this.dislikeNavigationEndpoint,
    required this.likeCommand,
  });

  final PlaylistItemData? target;
  final String? likeStatus;
  final String? trackingParams;
  final bool? likesAllowed;
  final DislikeNavigationEndpoint? dislikeNavigationEndpoint;
  final DislikeNavigationEndpoint? likeCommand;

  factory LikeButtonRenderer.fromJson(Map<String, dynamic> json) {
    return LikeButtonRenderer(
      target: json['target'] == null
          ? null
          : PlaylistItemData.fromJson(json['target']),
      likeStatus: json['likeStatus'],
      trackingParams: json['trackingParams'],
      likesAllowed: json['likesAllowed'],
      dislikeNavigationEndpoint: json['dislikeNavigationEndpoint'] == null
          ? null
          : DislikeNavigationEndpoint.fromJson(
              json['dislikeNavigationEndpoint'],
            ),
      likeCommand: json['likeCommand'] == null
          ? null
          : DislikeNavigationEndpoint.fromJson(json['likeCommand']),
    );
  }

  @override
  List<Object?> get props => [
    target,
    likeStatus,
    trackingParams,
    likesAllowed,
    dislikeNavigationEndpoint,
    likeCommand,
  ];
}

class DislikeNavigationEndpoint extends Equatable {
  const DislikeNavigationEndpoint({
    required this.clickTrackingParams,
    required this.modalEndpoint,
  });

  final String? clickTrackingParams;
  final ModalEndpoint? modalEndpoint;

  factory DislikeNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return DislikeNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      modalEndpoint: json['modalEndpoint'] == null
          ? null
          : ModalEndpoint.fromJson(json['modalEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    modalEndpoint,
  ];
}

class PlaylistItemData extends Equatable {
  const PlaylistItemData({
    required this.videoId,
  });

  final String? videoId;

  factory PlaylistItemData.fromJson(Map<String, dynamic> json) {
    return PlaylistItemData(
      videoId: json['videoId'],
    );
  }

  @override
  List<Object?> get props => [
    videoId,
  ];
}

class Overlay extends Equatable {
  const Overlay({
    required this.musicItemThumbnailOverlayRenderer,
  });

  final OverlayMusicItemThumbnailOverlayRenderer?
  musicItemThumbnailOverlayRenderer;

  factory Overlay.fromJson(Map<String, dynamic> json) {
    return Overlay(
      musicItemThumbnailOverlayRenderer:
          json['musicItemThumbnailOverlayRenderer'] == null
          ? null
          : OverlayMusicItemThumbnailOverlayRenderer.fromJson(
              json['musicItemThumbnailOverlayRenderer'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    musicItemThumbnailOverlayRenderer,
  ];
}

class OverlayMusicItemThumbnailOverlayRenderer extends Equatable {
  const OverlayMusicItemThumbnailOverlayRenderer({
    required this.background,
    required this.content,
    required this.contentPosition,
    required this.displayStyle,
  });

  final Background? background;
  final PurpleContent? content;
  final String? contentPosition;
  final String? displayStyle;

  factory OverlayMusicItemThumbnailOverlayRenderer.fromJson(
    Map<String, dynamic> json,
  ) {
    return OverlayMusicItemThumbnailOverlayRenderer(
      background: json['background'] == null
          ? null
          : Background.fromJson(json['background']),
      content: json['content'] == null
          ? null
          : PurpleContent.fromJson(json['content']),
      contentPosition: json['contentPosition'],
      displayStyle: json['displayStyle'],
    );
  }

  @override
  List<Object?> get props => [
    background,
    content,
    contentPosition,
    displayStyle,
  ];
}

class Background extends Equatable {
  const Background({
    required this.verticalGradient,
  });

  final VerticalGradient? verticalGradient;

  factory Background.fromJson(Map<String, dynamic> json) {
    return Background(
      verticalGradient: json['verticalGradient'] == null
          ? null
          : VerticalGradient.fromJson(json['verticalGradient']),
    );
  }

  @override
  List<Object?> get props => [
    verticalGradient,
  ];
}

class VerticalGradient extends Equatable {
  const VerticalGradient({
    required this.gradientLayerColors,
  });

  final List<String> gradientLayerColors;

  factory VerticalGradient.fromJson(Map<String, dynamic> json) {
    return VerticalGradient(
      gradientLayerColors: json['gradientLayerColors'] == null
          ? []
          : List<String>.from(json['gradientLayerColors']!.map((x) => x)),
    );
  }

  @override
  List<Object?> get props => [
    gradientLayerColors,
  ];
}

class PurpleContent extends Equatable {
  const PurpleContent({
    required this.musicPlayButtonRenderer,
  });

  final PurpleMusicPlayButtonRenderer? musicPlayButtonRenderer;

  factory PurpleContent.fromJson(Map<String, dynamic> json) {
    return PurpleContent(
      musicPlayButtonRenderer: json['musicPlayButtonRenderer'] == null
          ? null
          : PurpleMusicPlayButtonRenderer.fromJson(
              json['musicPlayButtonRenderer'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    musicPlayButtonRenderer,
  ];
}

class PurpleMusicPlayButtonRenderer extends Equatable {
  const PurpleMusicPlayButtonRenderer({
    required this.playNavigationEndpoint,
    required this.trackingParams,
    required this.playIcon,
    required this.pauseIcon,
    required this.iconColor,
    required this.backgroundColor,
    required this.activeBackgroundColor,
    required this.loadingIndicatorColor,
    required this.playingIcon,
    required this.iconLoadingColor,
    required this.activeScaleFactor,
    required this.buttonSize,
    required this.rippleTarget,
    required this.accessibilityPlayData,
    required this.accessibilityPauseData,
  });

  final PurplePlayNavigationEndpoint? playNavigationEndpoint;
  final String? trackingParams;
  final Icon? playIcon;
  final Icon? pauseIcon;
  final int? iconColor;
  final int? backgroundColor;
  final int? activeBackgroundColor;
  final int? loadingIndicatorColor;
  final Icon? playingIcon;
  final int? iconLoadingColor;
  final int? activeScaleFactor;
  final String? buttonSize;
  final String? rippleTarget;
  final Accessibility? accessibilityPlayData;
  final Accessibility? accessibilityPauseData;

  factory PurpleMusicPlayButtonRenderer.fromJson(Map<String, dynamic> json) {
    return PurpleMusicPlayButtonRenderer(
      playNavigationEndpoint: json['playNavigationEndpoint'] == null
          ? null
          : PurplePlayNavigationEndpoint.fromJson(
              json['playNavigationEndpoint'],
            ),
      trackingParams: json['trackingParams'],
      playIcon: json['playIcon'] == null
          ? null
          : Icon.fromJson(json['playIcon']),
      pauseIcon: json['pauseIcon'] == null
          ? null
          : Icon.fromJson(json['pauseIcon']),
      iconColor: json['iconColor'],
      backgroundColor: json['backgroundColor'],
      activeBackgroundColor: json['activeBackgroundColor'],
      loadingIndicatorColor: json['loadingIndicatorColor'],
      playingIcon: json['playingIcon'] == null
          ? null
          : Icon.fromJson(json['playingIcon']),
      iconLoadingColor: json['iconLoadingColor'],
      activeScaleFactor: json['activeScaleFactor'],
      buttonSize: json['buttonSize'],
      rippleTarget: json['rippleTarget'],
      accessibilityPlayData: json['accessibilityPlayData'] == null
          ? null
          : Accessibility.fromJson(json['accessibilityPlayData']),
      accessibilityPauseData: json['accessibilityPauseData'] == null
          ? null
          : Accessibility.fromJson(json['accessibilityPauseData']),
    );
  }

  @override
  List<Object?> get props => [
    playNavigationEndpoint,
    trackingParams,
    playIcon,
    pauseIcon,
    iconColor,
    backgroundColor,
    activeBackgroundColor,
    loadingIndicatorColor,
    playingIcon,
    iconLoadingColor,
    activeScaleFactor,
    buttonSize,
    rippleTarget,
    accessibilityPlayData,
    accessibilityPauseData,
  ];
}

class PurplePlayNavigationEndpoint extends Equatable {
  const PurplePlayNavigationEndpoint({
    required this.clickTrackingParams,
    required this.watchEndpoint,
  });

  final String? clickTrackingParams;
  final PurpleWatchEndpoint? watchEndpoint;

  factory PurplePlayNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return PurplePlayNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      watchEndpoint: json['watchEndpoint'] == null
          ? null
          : PurpleWatchEndpoint.fromJson(json['watchEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    watchEndpoint,
  ];
}

class ThumbnailRendererClass extends Equatable {
  const ThumbnailRendererClass({
    required this.musicThumbnailRenderer,
  });

  final MusicThumbnailRenderer? musicThumbnailRenderer;

  factory ThumbnailRendererClass.fromJson(Map<String, dynamic> json) {
    return ThumbnailRendererClass(
      musicThumbnailRenderer: json['musicThumbnailRenderer'] == null
          ? null
          : MusicThumbnailRenderer.fromJson(json['musicThumbnailRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    musicThumbnailRenderer,
  ];
}

class MusicThumbnailRenderer extends Equatable {
  const MusicThumbnailRenderer({
    required this.thumbnail,
    required this.thumbnailCrop,
    required this.thumbnailScale,
    required this.trackingParams,
  });

  final MusicThumbnailRendererThumbnail? thumbnail;
  final String? thumbnailCrop;
  final String? thumbnailScale;
  final String? trackingParams;

  factory MusicThumbnailRenderer.fromJson(Map<String, dynamic> json) {
    return MusicThumbnailRenderer(
      thumbnail: json['thumbnail'] == null
          ? null
          : MusicThumbnailRendererThumbnail.fromJson(json['thumbnail']),
      thumbnailCrop: json['thumbnailCrop'],
      thumbnailScale: json['thumbnailScale'],
      trackingParams: json['trackingParams'],
    );
  }

  @override
  List<Object?> get props => [
    thumbnail,
    thumbnailCrop,
    thumbnailScale,
    trackingParams,
  ];
}

class MusicThumbnailRendererThumbnail extends Equatable {
  const MusicThumbnailRendererThumbnail({
    required this.thumbnails,
  });

  final List<ThumbnailElement> thumbnails;

  factory MusicThumbnailRendererThumbnail.fromJson(Map<String, dynamic> json) {
    return MusicThumbnailRendererThumbnail(
      thumbnails: json['thumbnails'] == null
          ? []
          : List<ThumbnailElement>.from(
              json['thumbnails']!.map((x) => ThumbnailElement.fromJson(x)),
            ),
    );
  }

  @override
  List<Object?> get props => [
    thumbnails,
  ];
}

class ThumbnailElement extends Equatable {
  const ThumbnailElement({
    required this.url,
    required this.width,
    required this.height,
  });

  final String? url;
  final int? width;
  final int? height;

  factory ThumbnailElement.fromJson(Map<String, dynamic> json) {
    return ThumbnailElement(
      url: json['url'],
      width: json['width'],
      height: json['height'],
    );
  }

  @override
  List<Object?> get props => [
    url,
    width,
    height,
  ];
}

class MusicTwoRowItemRenderer extends Equatable {
  const MusicTwoRowItemRenderer({
    required this.thumbnailRenderer,
    required this.aspectRatio,
    required this.title,
    required this.subtitle,
    required this.navigationEndpoint,
    required this.trackingParams,
    required this.menu,
    required this.thumbnailOverlay,
  });

  final ThumbnailRendererClass? thumbnailRenderer;
  final String? aspectRatio;
  final Title? title;
  final Subtitle? subtitle;
  final MusicTwoRowItemRendererNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;
  final MusicTwoRowItemRendererMenu? menu;
  final ThumbnailOverlay? thumbnailOverlay;

  factory MusicTwoRowItemRenderer.fromJson(Map<String, dynamic> json) {
    return MusicTwoRowItemRenderer(
      thumbnailRenderer: json['thumbnailRenderer'] == null
          ? null
          : ThumbnailRendererClass.fromJson(json['thumbnailRenderer']),
      aspectRatio: json['aspectRatio'],
      title: json['title'] == null ? null : Title.fromJson(json['title']),
      subtitle: json['subtitle'] == null
          ? null
          : Subtitle.fromJson(json['subtitle']),
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : MusicTwoRowItemRendererNavigationEndpoint.fromJson(
              json['navigationEndpoint'],
            ),
      trackingParams: json['trackingParams'],
      menu: json['menu'] == null
          ? null
          : MusicTwoRowItemRendererMenu.fromJson(json['menu']),
      thumbnailOverlay: json['thumbnailOverlay'] == null
          ? null
          : ThumbnailOverlay.fromJson(json['thumbnailOverlay']),
    );
  }

  @override
  List<Object?> get props => [
    thumbnailRenderer,
    aspectRatio,
    title,
    subtitle,
    navigationEndpoint,
    trackingParams,
    menu,
    thumbnailOverlay,
  ];
}

class MusicTwoRowItemRendererMenu extends Equatable {
  const MusicTwoRowItemRendererMenu({
    required this.menuRenderer,
  });

  final FluffyMenuRenderer? menuRenderer;

  factory MusicTwoRowItemRendererMenu.fromJson(Map<String, dynamic> json) {
    return MusicTwoRowItemRendererMenu(
      menuRenderer: json['menuRenderer'] == null
          ? null
          : FluffyMenuRenderer.fromJson(json['menuRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    menuRenderer,
  ];
}

class FluffyMenuRenderer extends Equatable {
  const FluffyMenuRenderer({
    required this.items,
    required this.trackingParams,
    required this.accessibility,
  });

  final List<FluffyItem> items;
  final String? trackingParams;
  final Accessibility? accessibility;

  factory FluffyMenuRenderer.fromJson(Map<String, dynamic> json) {
    return FluffyMenuRenderer(
      items: json['items'] == null
          ? []
          : List<FluffyItem>.from(
              json['items']!.map((x) => FluffyItem.fromJson(x)),
            ),
      trackingParams: json['trackingParams'],
      accessibility: json['accessibility'] == null
          ? null
          : Accessibility.fromJson(json['accessibility']),
    );
  }

  @override
  List<Object?> get props => [
    items,
    trackingParams,
    accessibility,
  ];
}

class FluffyItem extends Equatable {
  const FluffyItem({
    required this.menuNavigationItemRenderer,
    required this.menuServiceItemRenderer,
    required this.toggleMenuServiceItemRenderer,
  });

  final MenuItemRenderer? menuNavigationItemRenderer;
  final MenuItemRenderer? menuServiceItemRenderer;
  final ToggleMenuServiceItemRenderer? toggleMenuServiceItemRenderer;

  factory FluffyItem.fromJson(Map<String, dynamic> json) {
    return FluffyItem(
      menuNavigationItemRenderer: json['menuNavigationItemRenderer'] == null
          ? null
          : MenuItemRenderer.fromJson(json['menuNavigationItemRenderer']),
      menuServiceItemRenderer: json['menuServiceItemRenderer'] == null
          ? null
          : MenuItemRenderer.fromJson(json['menuServiceItemRenderer']),
      toggleMenuServiceItemRenderer:
          json['toggleMenuServiceItemRenderer'] == null
          ? null
          : ToggleMenuServiceItemRenderer.fromJson(
              json['toggleMenuServiceItemRenderer'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    menuNavigationItemRenderer,
    menuServiceItemRenderer,
    toggleMenuServiceItemRenderer,
  ];
}

class ToggleMenuServiceItemRenderer extends Equatable {
  const ToggleMenuServiceItemRenderer({
    required this.defaultText,
    required this.defaultIcon,
    required this.defaultServiceEndpoint,
    required this.toggledText,
    required this.toggledIcon,
    required this.toggledServiceEndpoint,
    required this.trackingParams,
  });

  final Strapline? defaultText;
  final Icon? defaultIcon;
  final DislikeNavigationEndpoint? defaultServiceEndpoint;
  final Strapline? toggledText;
  final Icon? toggledIcon;
  final ToggledServiceEndpoint? toggledServiceEndpoint;
  final String? trackingParams;

  factory ToggleMenuServiceItemRenderer.fromJson(Map<String, dynamic> json) {
    return ToggleMenuServiceItemRenderer(
      defaultText: json['defaultText'] == null
          ? null
          : Strapline.fromJson(json['defaultText']),
      defaultIcon: json['defaultIcon'] == null
          ? null
          : Icon.fromJson(json['defaultIcon']),
      defaultServiceEndpoint: json['defaultServiceEndpoint'] == null
          ? null
          : DislikeNavigationEndpoint.fromJson(json['defaultServiceEndpoint']),
      toggledText: json['toggledText'] == null
          ? null
          : Strapline.fromJson(json['toggledText']),
      toggledIcon: json['toggledIcon'] == null
          ? null
          : Icon.fromJson(json['toggledIcon']),
      toggledServiceEndpoint: json['toggledServiceEndpoint'] == null
          ? null
          : ToggledServiceEndpoint.fromJson(json['toggledServiceEndpoint']),
      trackingParams: json['trackingParams'],
    );
  }

  @override
  List<Object?> get props => [
    defaultText,
    defaultIcon,
    defaultServiceEndpoint,
    toggledText,
    toggledIcon,
    toggledServiceEndpoint,
    trackingParams,
  ];
}

class ToggledServiceEndpoint extends Equatable {
  const ToggledServiceEndpoint({
    required this.clickTrackingParams,
    required this.likeEndpoint,
  });

  final String? clickTrackingParams;
  final LikeEndpoint? likeEndpoint;

  factory ToggledServiceEndpoint.fromJson(Map<String, dynamic> json) {
    return ToggledServiceEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      likeEndpoint: json['likeEndpoint'] == null
          ? null
          : LikeEndpoint.fromJson(json['likeEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    likeEndpoint,
  ];
}

class LikeEndpoint extends Equatable {
  const LikeEndpoint({
    required this.status,
    required this.target,
  });

  final String? status;
  final Target? target;

  factory LikeEndpoint.fromJson(Map<String, dynamic> json) {
    return LikeEndpoint(
      status: json['status'],
      target: json['target'] == null ? null : Target.fromJson(json['target']),
    );
  }

  @override
  List<Object?> get props => [
    status,
    target,
  ];
}

class Target extends Equatable {
  const Target({
    required this.playlistId,
  });

  final String? playlistId;

  factory Target.fromJson(Map<String, dynamic> json) {
    return Target(
      playlistId: json['playlistId'],
    );
  }

  @override
  List<Object?> get props => [
    playlistId,
  ];
}

class MusicTwoRowItemRendererNavigationEndpoint extends Equatable {
  const MusicTwoRowItemRendererNavigationEndpoint({
    required this.clickTrackingParams,
    required this.browseEndpoint,
    required this.watchEndpoint,
  });

  final String? clickTrackingParams;
  final FluffyBrowseEndpoint? browseEndpoint;
  final FluffyWatchEndpoint? watchEndpoint;

  factory MusicTwoRowItemRendererNavigationEndpoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return MusicTwoRowItemRendererNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      browseEndpoint: json['browseEndpoint'] == null
          ? null
          : FluffyBrowseEndpoint.fromJson(json['browseEndpoint']),
      watchEndpoint: json['watchEndpoint'] == null
          ? null
          : FluffyWatchEndpoint.fromJson(json['watchEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    browseEndpoint,
    watchEndpoint,
  ];
}

class FluffyWatchEndpoint extends Equatable {
  const FluffyWatchEndpoint({
    required this.videoId,
    required this.watchEndpointMusicSupportedConfigs,
    required this.playerParams,
  });

  final String? videoId;
  final WatchEndpointMusicSupportedConfigs? watchEndpointMusicSupportedConfigs;
  final String? playerParams;

  factory FluffyWatchEndpoint.fromJson(Map<String, dynamic> json) {
    return FluffyWatchEndpoint(
      videoId: json['videoId'],
      watchEndpointMusicSupportedConfigs:
          json['watchEndpointMusicSupportedConfigs'] == null
          ? null
          : WatchEndpointMusicSupportedConfigs.fromJson(
              json['watchEndpointMusicSupportedConfigs'],
            ),
      playerParams: json['playerParams'],
    );
  }

  @override
  List<Object?> get props => [
    videoId,
    watchEndpointMusicSupportedConfigs,
    playerParams,
  ];
}

class Subtitle extends Equatable {
  const Subtitle({
    required this.runs,
    required this.accessibility,
  });

  final List<SubtitleRun> runs;
  final Accessibility? accessibility;

  factory Subtitle.fromJson(Map<String, dynamic> json) {
    return Subtitle(
      runs: json['runs'] == null
          ? []
          : List<SubtitleRun>.from(
              json['runs']!.map((x) => SubtitleRun.fromJson(x)),
            ),
      accessibility: json['accessibility'] == null
          ? null
          : Accessibility.fromJson(json['accessibility']),
    );
  }

  @override
  List<Object?> get props => [
    runs,
    accessibility,
  ];
}

class SubtitleRun extends Equatable {
  const SubtitleRun({
    required this.text,
    required this.navigationEndpoint,
  });

  final String? text;
  final TentacledNavigationEndpoint? navigationEndpoint;

  factory SubtitleRun.fromJson(Map<String, dynamic> json) {
    return SubtitleRun(
      text: json['text'],
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : TentacledNavigationEndpoint.fromJson(json['navigationEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    text,
    navigationEndpoint,
  ];
}

class TentacledNavigationEndpoint extends Equatable {
  const TentacledNavigationEndpoint({
    required this.clickTrackingParams,
    required this.browseEndpoint,
  });

  final String? clickTrackingParams;
  final FluffyBrowseEndpoint? browseEndpoint;

  factory TentacledNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return TentacledNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      browseEndpoint: json['browseEndpoint'] == null
          ? null
          : FluffyBrowseEndpoint.fromJson(json['browseEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    browseEndpoint,
  ];
}

class ThumbnailOverlay extends Equatable {
  const ThumbnailOverlay({
    required this.musicItemThumbnailOverlayRenderer,
  });

  final ThumbnailOverlayMusicItemThumbnailOverlayRenderer?
  musicItemThumbnailOverlayRenderer;

  factory ThumbnailOverlay.fromJson(Map<String, dynamic> json) {
    return ThumbnailOverlay(
      musicItemThumbnailOverlayRenderer:
          json['musicItemThumbnailOverlayRenderer'] == null
          ? null
          : ThumbnailOverlayMusicItemThumbnailOverlayRenderer.fromJson(
              json['musicItemThumbnailOverlayRenderer'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    musicItemThumbnailOverlayRenderer,
  ];
}

class ThumbnailOverlayMusicItemThumbnailOverlayRenderer extends Equatable {
  const ThumbnailOverlayMusicItemThumbnailOverlayRenderer({
    required this.background,
    required this.content,
    required this.contentPosition,
    required this.displayStyle,
  });

  final Background? background;
  final FluffyContent? content;
  final String? contentPosition;
  final String? displayStyle;

  factory ThumbnailOverlayMusicItemThumbnailOverlayRenderer.fromJson(
    Map<String, dynamic> json,
  ) {
    return ThumbnailOverlayMusicItemThumbnailOverlayRenderer(
      background: json['background'] == null
          ? null
          : Background.fromJson(json['background']),
      content: json['content'] == null
          ? null
          : FluffyContent.fromJson(json['content']),
      contentPosition: json['contentPosition'],
      displayStyle: json['displayStyle'],
    );
  }

  @override
  List<Object?> get props => [
    background,
    content,
    contentPosition,
    displayStyle,
  ];
}

class FluffyContent extends Equatable {
  const FluffyContent({
    required this.musicPlayButtonRenderer,
  });

  final FluffyMusicPlayButtonRenderer? musicPlayButtonRenderer;

  factory FluffyContent.fromJson(Map<String, dynamic> json) {
    return FluffyContent(
      musicPlayButtonRenderer: json['musicPlayButtonRenderer'] == null
          ? null
          : FluffyMusicPlayButtonRenderer.fromJson(
              json['musicPlayButtonRenderer'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    musicPlayButtonRenderer,
  ];
}

class FluffyMusicPlayButtonRenderer extends Equatable {
  const FluffyMusicPlayButtonRenderer({
    required this.playNavigationEndpoint,
    required this.trackingParams,
    required this.playIcon,
    required this.pauseIcon,
    required this.iconColor,
    required this.backgroundColor,
    required this.activeBackgroundColor,
    required this.loadingIndicatorColor,
    required this.playingIcon,
    required this.iconLoadingColor,
    required this.activeScaleFactor,
    required this.buttonSize,
    required this.rippleTarget,
    required this.accessibilityPlayData,
    required this.accessibilityPauseData,
  });

  final FluffyPlayNavigationEndpoint? playNavigationEndpoint;
  final String? trackingParams;
  final Icon? playIcon;
  final Icon? pauseIcon;
  final int? iconColor;
  final int? backgroundColor;
  final int? activeBackgroundColor;
  final int? loadingIndicatorColor;
  final Icon? playingIcon;
  final int? iconLoadingColor;
  final num? activeScaleFactor;
  final String? buttonSize;
  final String? rippleTarget;
  final Accessibility? accessibilityPlayData;
  final Accessibility? accessibilityPauseData;

  factory FluffyMusicPlayButtonRenderer.fromJson(Map<String, dynamic> json) {
    return FluffyMusicPlayButtonRenderer(
      playNavigationEndpoint: json['playNavigationEndpoint'] == null
          ? null
          : FluffyPlayNavigationEndpoint.fromJson(
              json['playNavigationEndpoint'],
            ),
      trackingParams: json['trackingParams'],
      playIcon: json['playIcon'] == null
          ? null
          : Icon.fromJson(json['playIcon']),
      pauseIcon: json['pauseIcon'] == null
          ? null
          : Icon.fromJson(json['pauseIcon']),
      iconColor: json['iconColor'],
      backgroundColor: json['backgroundColor'],
      activeBackgroundColor: json['activeBackgroundColor'],
      loadingIndicatorColor: json['loadingIndicatorColor'],
      playingIcon: json['playingIcon'] == null
          ? null
          : Icon.fromJson(json['playingIcon']),
      iconLoadingColor: json['iconLoadingColor'],
      activeScaleFactor: json['activeScaleFactor'],
      buttonSize: json['buttonSize'],
      rippleTarget: json['rippleTarget'],
      accessibilityPlayData: json['accessibilityPlayData'] == null
          ? null
          : Accessibility.fromJson(json['accessibilityPlayData']),
      accessibilityPauseData: json['accessibilityPauseData'] == null
          ? null
          : Accessibility.fromJson(json['accessibilityPauseData']),
    );
  }

  @override
  List<Object?> get props => [
    playNavigationEndpoint,
    trackingParams,
    playIcon,
    pauseIcon,
    iconColor,
    backgroundColor,
    activeBackgroundColor,
    loadingIndicatorColor,
    playingIcon,
    iconLoadingColor,
    activeScaleFactor,
    buttonSize,
    rippleTarget,
    accessibilityPlayData,
    accessibilityPauseData,
  ];
}

class FluffyPlayNavigationEndpoint extends Equatable {
  const FluffyPlayNavigationEndpoint({
    required this.clickTrackingParams,
    required this.watchPlaylistEndpoint,
    required this.watchEndpoint,
  });

  final String? clickTrackingParams;
  final WatchPlaylistEndpoint? watchPlaylistEndpoint;
  final TentacledWatchEndpoint? watchEndpoint;

  factory FluffyPlayNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return FluffyPlayNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      watchPlaylistEndpoint: json['watchPlaylistEndpoint'] == null
          ? null
          : WatchPlaylistEndpoint.fromJson(json['watchPlaylistEndpoint']),
      watchEndpoint: json['watchEndpoint'] == null
          ? null
          : TentacledWatchEndpoint.fromJson(json['watchEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    watchPlaylistEndpoint,
    watchEndpoint,
  ];
}

class TentacledWatchEndpoint extends Equatable {
  const TentacledWatchEndpoint({
    required this.videoId,
    required this.params,
    required this.watchEndpointMusicSupportedConfigs,
  });

  final String? videoId;
  final String? params;
  final WatchEndpointMusicSupportedConfigs? watchEndpointMusicSupportedConfigs;

  factory TentacledWatchEndpoint.fromJson(Map<String, dynamic> json) {
    return TentacledWatchEndpoint(
      videoId: json['videoId'],
      params: json['params'],
      watchEndpointMusicSupportedConfigs:
          json['watchEndpointMusicSupportedConfigs'] == null
          ? null
          : WatchEndpointMusicSupportedConfigs.fromJson(
              json['watchEndpointMusicSupportedConfigs'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    videoId,
    params,
    watchEndpointMusicSupportedConfigs,
  ];
}

class Title extends Equatable {
  const Title({
    required this.runs,
  });

  final List<SubtitleRun> runs;

  factory Title.fromJson(Map<String, dynamic> json) {
    return Title(
      runs: json['runs'] == null
          ? []
          : List<SubtitleRun>.from(
              json['runs']!.map((x) => SubtitleRun.fromJson(x)),
            ),
    );
  }

  @override
  List<Object?> get props => [
    runs,
  ];
}

class Header extends Equatable {
  const Header({
    required this.musicCarouselShelfBasicHeaderRenderer,
  });

  final MusicCarouselShelfBasicHeaderRenderer?
  musicCarouselShelfBasicHeaderRenderer;

  factory Header.fromJson(Map<String, dynamic> json) {
    return Header(
      musicCarouselShelfBasicHeaderRenderer:
          json['musicCarouselShelfBasicHeaderRenderer'] == null
          ? null
          : MusicCarouselShelfBasicHeaderRenderer.fromJson(
              json['musicCarouselShelfBasicHeaderRenderer'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    musicCarouselShelfBasicHeaderRenderer,
  ];
}

class MusicCarouselShelfBasicHeaderRenderer extends Equatable {
  const MusicCarouselShelfBasicHeaderRenderer({
    required this.title,
    required this.accessibilityData,
    required this.headerStyle,
    required this.moreContentButton,
    required this.trackingParams,
    required this.strapline,
  });

  final Title? title;
  final Accessibility? accessibilityData;
  final String? headerStyle;
  final MoreContentButton? moreContentButton;
  final String? trackingParams;
  final Strapline? strapline;

  factory MusicCarouselShelfBasicHeaderRenderer.fromJson(
    Map<String, dynamic> json,
  ) {
    return MusicCarouselShelfBasicHeaderRenderer(
      title: json['title'] == null ? null : Title.fromJson(json['title']),
      accessibilityData: json['accessibilityData'] == null
          ? null
          : Accessibility.fromJson(json['accessibilityData']),
      headerStyle: json['headerStyle'],
      moreContentButton: json['moreContentButton'] == null
          ? null
          : MoreContentButton.fromJson(json['moreContentButton']),
      trackingParams: json['trackingParams'],
      strapline: json['strapline'] == null
          ? null
          : Strapline.fromJson(json['strapline']),
    );
  }

  @override
  List<Object?> get props => [
    title,
    accessibilityData,
    headerStyle,
    moreContentButton,
    trackingParams,
    strapline,
  ];
}

class MoreContentButton extends Equatable {
  const MoreContentButton({
    required this.buttonRenderer,
  });

  final MoreContentButtonButtonRenderer? buttonRenderer;

  factory MoreContentButton.fromJson(Map<String, dynamic> json) {
    return MoreContentButton(
      buttonRenderer: json['buttonRenderer'] == null
          ? null
          : MoreContentButtonButtonRenderer.fromJson(json['buttonRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    buttonRenderer,
  ];
}

class MoreContentButtonButtonRenderer extends Equatable {
  const MoreContentButtonButtonRenderer({
    required this.style,
    required this.text,
    required this.navigationEndpoint,
    required this.trackingParams,
    required this.accessibilityData,
  });

  final String? style;
  final Strapline? text;
  final StickyNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;
  final Accessibility? accessibilityData;

  factory MoreContentButtonButtonRenderer.fromJson(Map<String, dynamic> json) {
    return MoreContentButtonButtonRenderer(
      style: json['style'],
      text: json['text'] == null ? null : Strapline.fromJson(json['text']),
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : StickyNavigationEndpoint.fromJson(json['navigationEndpoint']),
      trackingParams: json['trackingParams'],
      accessibilityData: json['accessibilityData'] == null
          ? null
          : Accessibility.fromJson(json['accessibilityData']),
    );
  }

  @override
  List<Object?> get props => [
    style,
    text,
    navigationEndpoint,
    trackingParams,
    accessibilityData,
  ];
}

class StickyNavigationEndpoint extends Equatable {
  const StickyNavigationEndpoint({
    required this.clickTrackingParams,
    required this.browseEndpoint,
    required this.watchEndpoint,
  });

  final String? clickTrackingParams;
  final FluffyBrowseEndpoint? browseEndpoint;
  final StickyWatchEndpoint? watchEndpoint;

  factory StickyNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return StickyNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      browseEndpoint: json['browseEndpoint'] == null
          ? null
          : FluffyBrowseEndpoint.fromJson(json['browseEndpoint']),
      watchEndpoint: json['watchEndpoint'] == null
          ? null
          : StickyWatchEndpoint.fromJson(json['watchEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    browseEndpoint,
    watchEndpoint,
  ];
}

class StickyWatchEndpoint extends Equatable {
  const StickyWatchEndpoint({
    required this.videoId,
    required this.params,
  });

  final String? videoId;
  final String? params;

  factory StickyWatchEndpoint.fromJson(Map<String, dynamic> json) {
    return StickyWatchEndpoint(
      videoId: json['videoId'],
      params: json['params'],
    );
  }

  @override
  List<Object?> get props => [
    videoId,
    params,
  ];
}

class Continuation extends Equatable {
  const Continuation({
    required this.nextContinuationData,
  });

  final NextContinuationData? nextContinuationData;

  factory Continuation.fromJson(Map<String, dynamic> json) {
    return Continuation(
      nextContinuationData: json['nextContinuationData'] == null
          ? null
          : NextContinuationData.fromJson(json['nextContinuationData']),
    );
  }

  @override
  List<Object?> get props => [
    nextContinuationData,
  ];
}

class NextContinuationData extends Equatable {
  const NextContinuationData({
    required this.continuation,
    required this.clickTrackingParams,
  });

  final String? continuation;
  final String? clickTrackingParams;

  factory NextContinuationData.fromJson(Map<String, dynamic> json) {
    return NextContinuationData(
      continuation: json['continuation'],
      clickTrackingParams: json['clickTrackingParams'],
    );
  }

  @override
  List<Object?> get props => [
    continuation,
    clickTrackingParams,
  ];
}

class ResponseContext extends Equatable {
  const ResponseContext({
    required this.visitorData,
    required this.serviceTrackingParams,
    required this.maxAgeSeconds,
  });

  final String? visitorData;
  final List<ServiceTrackingParam> serviceTrackingParams;
  final int? maxAgeSeconds;

  factory ResponseContext.fromJson(Map<String, dynamic> json) {
    return ResponseContext(
      visitorData: json['visitorData'],
      serviceTrackingParams: json['serviceTrackingParams'] == null
          ? []
          : List<ServiceTrackingParam>.from(
              json['serviceTrackingParams']!.map(
                (x) => ServiceTrackingParam.fromJson(x),
              ),
            ),
      maxAgeSeconds: json['maxAgeSeconds'],
    );
  }

  @override
  List<Object?> get props => [
    visitorData,
    serviceTrackingParams,
    maxAgeSeconds,
  ];
}

class ServiceTrackingParam extends Equatable {
  const ServiceTrackingParam({
    required this.service,
    required this.params,
  });

  final String? service;
  final List<Param> params;

  factory ServiceTrackingParam.fromJson(Map<String, dynamic> json) {
    return ServiceTrackingParam(
      service: json['service'],
      params: json['params'] == null
          ? []
          : List<Param>.from(json['params']!.map((x) => Param.fromJson(x))),
    );
  }

  @override
  List<Object?> get props => [
    service,
    params,
  ];
}

class Param extends Equatable {
  const Param({
    required this.key,
    required this.value,
  });

  final String? key;
  final String? value;

  factory Param.fromJson(Map<String, dynamic> json) {
    return Param(
      key: json['key'],
      value: json['value'],
    );
  }

  @override
  List<Object?> get props => [
    key,
    value,
  ];
}
