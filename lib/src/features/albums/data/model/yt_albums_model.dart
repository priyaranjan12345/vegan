import 'package:equatable/equatable.dart';

class YtAlbumsModel extends Equatable {
  const YtAlbumsModel({
    required this.responseContext,
    required this.contents,
    required this.header,
    required this.trackingParams,
  });

  final ResponseContext? responseContext;
  final Contents? contents;
  final YtAlbumsModelHeader? header;
  final String? trackingParams;

  factory YtAlbumsModel.fromJson(Map<String, dynamic> json) {
    return YtAlbumsModel(
      responseContext: json['responseContext'] == null
          ? null
          : ResponseContext.fromJson(json['responseContext']),
      contents: json['contents'] == null
          ? null
          : Contents.fromJson(json['contents']),
      header: json['header'] == null
          ? null
          : YtAlbumsModelHeader.fromJson(json['header']),
      trackingParams: json['trackingParams'],
    );
  }

  @override
  List<Object?> get props => [
    responseContext,
    contents,
    header,
    trackingParams,
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
    required this.title,
    required this.content,
    required this.trackingParams,
  });

  final String? title;
  final TabRendererContent? content;
  final String? trackingParams;

  factory TabRenderer.fromJson(Map<String, dynamic> json) {
    return TabRenderer(
      title: json['title'],
      content: json['content'] == null
          ? null
          : TabRendererContent.fromJson(json['content']),
      trackingParams: json['trackingParams'],
    );
  }

  @override
  List<Object?> get props => [
    title,
    content,
    trackingParams,
  ];
}

class TabRendererContent extends Equatable {
  const TabRendererContent({
    required this.sectionListRenderer,
  });

  final SectionListRenderer? sectionListRenderer;

  factory TabRendererContent.fromJson(Map<String, dynamic> json) {
    return TabRendererContent(
      sectionListRenderer: json['sectionListRenderer'] == null
          ? null
          : SectionListRenderer.fromJson(json['sectionListRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    sectionListRenderer,
  ];
}

class SectionListRenderer extends Equatable {
  const SectionListRenderer({
    required this.contents,
    required this.trackingParams,
  });

  final List<SectionListRendererContent> contents;
  final String? trackingParams;

  factory SectionListRenderer.fromJson(Map<String, dynamic> json) {
    return SectionListRenderer(
      contents: json['contents'] == null
          ? []
          : List<SectionListRendererContent>.from(
              json['contents']!.map(
                (x) => SectionListRendererContent.fromJson(x),
              ),
            ),
      trackingParams: json['trackingParams'],
    );
  }

  @override
  List<Object?> get props => [
    contents,
    trackingParams,
  ];
}

class SectionListRendererContent extends Equatable {
  const SectionListRendererContent({
    required this.musicShelfRenderer,
    required this.musicCarouselShelfRenderer,
    required this.musicDescriptionShelfRenderer,
  });

  final MusicShelfRenderer? musicShelfRenderer;
  final MusicCarouselShelfRenderer? musicCarouselShelfRenderer;
  final MusicDescriptionShelfRenderer? musicDescriptionShelfRenderer;

  factory SectionListRendererContent.fromJson(Map<String, dynamic> json) {
    return SectionListRendererContent(
      musicShelfRenderer: json['musicShelfRenderer'] == null
          ? null
          : MusicShelfRenderer.fromJson(json['musicShelfRenderer']),
      musicCarouselShelfRenderer: json['musicCarouselShelfRenderer'] == null
          ? null
          : MusicCarouselShelfRenderer.fromJson(
              json['musicCarouselShelfRenderer'],
            ),
      musicDescriptionShelfRenderer:
          json['musicDescriptionShelfRenderer'] == null
          ? null
          : MusicDescriptionShelfRenderer.fromJson(
              json['musicDescriptionShelfRenderer'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    musicShelfRenderer,
    musicCarouselShelfRenderer,
    musicDescriptionShelfRenderer,
  ];
}

class MusicCarouselShelfRenderer extends Equatable {
  const MusicCarouselShelfRenderer({
    required this.header,
    required this.contents,
    required this.trackingParams,
    required this.itemSize,
  });

  final MusicCarouselShelfRendererHeader? header;
  final List<MusicCarouselShelfRendererContent> contents;
  final String? trackingParams;
  final String? itemSize;

  factory MusicCarouselShelfRenderer.fromJson(Map<String, dynamic> json) {
    return MusicCarouselShelfRenderer(
      header: json['header'] == null
          ? null
          : MusicCarouselShelfRendererHeader.fromJson(json['header']),
      contents: json['contents'] == null
          ? []
          : List<MusicCarouselShelfRendererContent>.from(
              json['contents']!.map(
                (x) => MusicCarouselShelfRendererContent.fromJson(x),
              ),
            ),
      trackingParams: json['trackingParams'],
      itemSize: json['itemSize'],
    );
  }

  @override
  List<Object?> get props => [
    header,
    contents,
    trackingParams,
    itemSize,
  ];
}

class MusicCarouselShelfRendererContent extends Equatable {
  const MusicCarouselShelfRendererContent({
    required this.musicTwoRowItemRenderer,
  });

  final MusicTwoRowItemRenderer? musicTwoRowItemRenderer;

  factory MusicCarouselShelfRendererContent.fromJson(
    Map<String, dynamic> json,
  ) {
    return MusicCarouselShelfRendererContent(
      musicTwoRowItemRenderer: json['musicTwoRowItemRenderer'] == null
          ? null
          : MusicTwoRowItemRenderer.fromJson(json['musicTwoRowItemRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    musicTwoRowItemRenderer,
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

  final PurpleMenuRenderer? menuRenderer;

  factory MusicTwoRowItemRendererMenu.fromJson(Map<String, dynamic> json) {
    return MusicTwoRowItemRendererMenu(
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
    required this.accessibility,
  });

  final List<PurpleItem> items;
  final String? trackingParams;
  final SubscribeAccessibilityClass? accessibility;

  factory PurpleMenuRenderer.fromJson(Map<String, dynamic> json) {
    return PurpleMenuRenderer(
      items: json['items'] == null
          ? []
          : List<PurpleItem>.from(
              json['items']!.map((x) => PurpleItem.fromJson(x)),
            ),
      trackingParams: json['trackingParams'],
      accessibility: json['accessibility'] == null
          ? null
          : SubscribeAccessibilityClass.fromJson(json['accessibility']),
    );
  }

  @override
  List<Object?> get props => [
    items,
    trackingParams,
    accessibility,
  ];
}

class SubscribeAccessibilityClass extends Equatable {
  const SubscribeAccessibilityClass({
    required this.accessibilityData,
  });

  final AccessibilityAccessibility? accessibilityData;

  factory SubscribeAccessibilityClass.fromJson(Map<String, dynamic> json) {
    return SubscribeAccessibilityClass(
      accessibilityData: json['accessibilityData'] == null
          ? null
          : AccessibilityAccessibility.fromJson(json['accessibilityData']),
    );
  }

  @override
  List<Object?> get props => [
    accessibilityData,
  ];
}

class AccessibilityAccessibility extends Equatable {
  const AccessibilityAccessibility({
    required this.label,
  });

  final String? label;

  factory AccessibilityAccessibility.fromJson(Map<String, dynamic> json) {
    return AccessibilityAccessibility(
      label: json['label'],
    );
  }

  @override
  List<Object?> get props => [
    label,
  ];
}

class PurpleItem extends Equatable {
  const PurpleItem({
    required this.menuNavigationItemRenderer,
    required this.menuServiceItemRenderer,
    required this.toggleMenuServiceItemRenderer,
  });

  final MenuItemRenderer? menuNavigationItemRenderer;
  final MenuItemRenderer? menuServiceItemRenderer;
  final ToggleMenuServiceItemRenderer? toggleMenuServiceItemRenderer;

  factory PurpleItem.fromJson(Map<String, dynamic> json) {
    return PurpleItem(
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

class MenuItemRenderer extends Equatable {
  const MenuItemRenderer({
    required this.text,
    required this.icon,
    required this.navigationEndpoint,
    required this.trackingParams,
    required this.serviceEndpoint,
  });

  final Description? text;
  final Icon? icon;
  final MenuNavigationItemRendererNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;
  final MenuNavigationItemRendererServiceEndpoint? serviceEndpoint;

  factory MenuItemRenderer.fromJson(Map<String, dynamic> json) {
    return MenuItemRenderer(
      text: json['text'] == null ? null : Description.fromJson(json['text']),
      icon: json['icon'] == null ? null : Icon.fromJson(json['icon']),
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : MenuNavigationItemRendererNavigationEndpoint.fromJson(
              json['navigationEndpoint'],
            ),
      trackingParams: json['trackingParams'],
      serviceEndpoint: json['serviceEndpoint'] == null
          ? null
          : MenuNavigationItemRendererServiceEndpoint.fromJson(
              json['serviceEndpoint'],
            ),
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

class MenuNavigationItemRendererNavigationEndpoint extends Equatable {
  const MenuNavigationItemRendererNavigationEndpoint({
    required this.clickTrackingParams,
    required this.watchPlaylistEndpoint,
    required this.modalEndpoint,
    required this.shareEntityEndpoint,
    required this.watchEndpoint,
    required this.browseEndpoint,
  });

  final String? clickTrackingParams;
  final WatchPlaylistEndpoint? watchPlaylistEndpoint;
  final ModalEndpoint? modalEndpoint;
  final ShareEntityEndpoint? shareEntityEndpoint;
  final NavigationEndpointWatchEndpoint? watchEndpoint;
  final PurpleBrowseEndpoint? browseEndpoint;

  factory MenuNavigationItemRendererNavigationEndpoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return MenuNavigationItemRendererNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      watchPlaylistEndpoint: json['watchPlaylistEndpoint'] == null
          ? null
          : WatchPlaylistEndpoint.fromJson(json['watchPlaylistEndpoint']),
      modalEndpoint: json['modalEndpoint'] == null
          ? null
          : ModalEndpoint.fromJson(json['modalEndpoint']),
      shareEntityEndpoint: json['shareEntityEndpoint'] == null
          ? null
          : ShareEntityEndpoint.fromJson(json['shareEntityEndpoint']),
      watchEndpoint: json['watchEndpoint'] == null
          ? null
          : NavigationEndpointWatchEndpoint.fromJson(json['watchEndpoint']),
      browseEndpoint: json['browseEndpoint'] == null
          ? null
          : PurpleBrowseEndpoint.fromJson(json['browseEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    watchPlaylistEndpoint,
    modalEndpoint,
    shareEntityEndpoint,
    watchEndpoint,
    browseEndpoint,
  ];
}

class PurpleBrowseEndpoint extends Equatable {
  const PurpleBrowseEndpoint({
    required this.browseId,
    required this.browseEndpointContextSupportedConfigs,
  });

  final String? browseId;
  final BrowseEndpointContextSupportedConfigs?
  browseEndpointContextSupportedConfigs;

  factory PurpleBrowseEndpoint.fromJson(Map<String, dynamic> json) {
    return PurpleBrowseEndpoint(
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

  final Description? title;
  final Description? content;
  final Button? button;

  factory ModalWithTitleAndButtonRenderer.fromJson(Map<String, dynamic> json) {
    return ModalWithTitleAndButtonRenderer(
      title: json['title'] == null ? null : Description.fromJson(json['title']),
      content: json['content'] == null
          ? null
          : Description.fromJson(json['content']),
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
  final Description? text;
  final PurpleNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;

  factory ButtonButtonRenderer.fromJson(Map<String, dynamic> json) {
    return ButtonButtonRenderer(
      style: json['style'],
      isDisabled: json['isDisabled'],
      text: json['text'] == null ? null : Description.fromJson(json['text']),
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : PurpleNavigationEndpoint.fromJson(json['navigationEndpoint']),
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

class PurpleNavigationEndpoint extends Equatable {
  const PurpleNavigationEndpoint({
    required this.clickTrackingParams,
    required this.signInEndpoint,
  });

  final String? clickTrackingParams;
  final SignInEndpoint? signInEndpoint;

  factory PurpleNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return PurpleNavigationEndpoint(
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

class Description extends Equatable {
  const Description({
    required this.runs,
  });

  final List<DescriptionRun> runs;

  factory Description.fromJson(Map<String, dynamic> json) {
    return Description(
      runs: json['runs'] == null
          ? []
          : List<DescriptionRun>.from(
              json['runs']!.map((x) => DescriptionRun.fromJson(x)),
            ),
    );
  }

  @override
  List<Object?> get props => [
    runs,
  ];
}

class DescriptionRun extends Equatable {
  const DescriptionRun({
    required this.text,
  });

  final String? text;

  factory DescriptionRun.fromJson(Map<String, dynamic> json) {
    return DescriptionRun(
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

class NavigationEndpointWatchEndpoint extends Equatable {
  const NavigationEndpointWatchEndpoint({
    required this.videoId,
    required this.playlistId,
    required this.params,
    required this.loggingContext,
    required this.watchEndpointMusicSupportedConfigs,
    required this.playerParams,
    required this.index,
  });

  final String? videoId;
  final String? playlistId;
  final String? params;
  final LoggingContext? loggingContext;
  final WatchEndpointMusicSupportedConfigs? watchEndpointMusicSupportedConfigs;
  final String? playerParams;
  final int? index;

  factory NavigationEndpointWatchEndpoint.fromJson(Map<String, dynamic> json) {
    return NavigationEndpointWatchEndpoint(
      videoId: json['videoId'],
      playlistId: json['playlistId'],
      params: json['params'],
      loggingContext: json['loggingContext'] == null
          ? null
          : LoggingContext.fromJson(json['loggingContext']),
      watchEndpointMusicSupportedConfigs:
          json['watchEndpointMusicSupportedConfigs'] == null
          ? null
          : WatchEndpointMusicSupportedConfigs.fromJson(
              json['watchEndpointMusicSupportedConfigs'],
            ),
      playerParams: json['playerParams'],
      index: json['index'],
    );
  }

  @override
  List<Object?> get props => [
    videoId,
    playlistId,
    params,
    loggingContext,
    watchEndpointMusicSupportedConfigs,
    playerParams,
    index,
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

class MenuNavigationItemRendererServiceEndpoint extends Equatable {
  const MenuNavigationItemRendererServiceEndpoint({
    required this.clickTrackingParams,
    required this.queueAddEndpoint,
  });

  final String? clickTrackingParams;
  final QueueAddEndpoint? queueAddEndpoint;

  factory MenuNavigationItemRendererServiceEndpoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return MenuNavigationItemRendererServiceEndpoint(
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

  final Description? successResponseText;
  final String? trackingParams;

  factory NotificationTextRenderer.fromJson(Map<String, dynamic> json) {
    return NotificationTextRenderer(
      successResponseText: json['successResponseText'] == null
          ? null
          : Description.fromJson(json['successResponseText']),
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
    required this.playlistId,
    required this.onEmptyQueue,
    required this.videoId,
  });

  final String? playlistId;
  final OnEmptyQueue? onEmptyQueue;
  final String? videoId;

  factory QueueTarget.fromJson(Map<String, dynamic> json) {
    return QueueTarget(
      playlistId: json['playlistId'],
      onEmptyQueue: json['onEmptyQueue'] == null
          ? null
          : OnEmptyQueue.fromJson(json['onEmptyQueue']),
      videoId: json['videoId'],
    );
  }

  @override
  List<Object?> get props => [
    playlistId,
    onEmptyQueue,
    videoId,
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
    required this.playlistId,
    required this.videoId,
  });

  final String? playlistId;
  final String? videoId;

  factory OnEmptyQueueWatchEndpoint.fromJson(Map<String, dynamic> json) {
    return OnEmptyQueueWatchEndpoint(
      playlistId: json['playlistId'],
      videoId: json['videoId'],
    );
  }

  @override
  List<Object?> get props => [
    playlistId,
    videoId,
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

  final Description? defaultText;
  final Icon? defaultIcon;
  final DefaultServiceEndpointClass? defaultServiceEndpoint;
  final Description? toggledText;
  final Icon? toggledIcon;
  final ToggledServiceEndpoint? toggledServiceEndpoint;
  final String? trackingParams;

  factory ToggleMenuServiceItemRenderer.fromJson(Map<String, dynamic> json) {
    return ToggleMenuServiceItemRenderer(
      defaultText: json['defaultText'] == null
          ? null
          : Description.fromJson(json['defaultText']),
      defaultIcon: json['defaultIcon'] == null
          ? null
          : Icon.fromJson(json['defaultIcon']),
      defaultServiceEndpoint: json['defaultServiceEndpoint'] == null
          ? null
          : DefaultServiceEndpointClass.fromJson(
              json['defaultServiceEndpoint'],
            ),
      toggledText: json['toggledText'] == null
          ? null
          : Description.fromJson(json['toggledText']),
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

class DefaultServiceEndpointClass extends Equatable {
  const DefaultServiceEndpointClass({
    required this.clickTrackingParams,
    required this.modalEndpoint,
  });

  final String? clickTrackingParams;
  final ModalEndpoint? modalEndpoint;

  factory DefaultServiceEndpointClass.fromJson(Map<String, dynamic> json) {
    return DefaultServiceEndpointClass(
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
  final BottomEndpointBrowseEndpoint? browseEndpoint;
  final NavigationEndpointWatchEndpoint? watchEndpoint;

  factory MusicTwoRowItemRendererNavigationEndpoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return MusicTwoRowItemRendererNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      browseEndpoint: json['browseEndpoint'] == null
          ? null
          : BottomEndpointBrowseEndpoint.fromJson(json['browseEndpoint']),
      watchEndpoint: json['watchEndpoint'] == null
          ? null
          : NavigationEndpointWatchEndpoint.fromJson(json['watchEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    browseEndpoint,
    watchEndpoint,
  ];
}

class BottomEndpointBrowseEndpoint extends Equatable {
  const BottomEndpointBrowseEndpoint({
    required this.browseId,
    required this.params,
    required this.browseEndpointContextSupportedConfigs,
  });

  final String? browseId;
  final String? params;
  final BrowseEndpointContextSupportedConfigs?
  browseEndpointContextSupportedConfigs;

  factory BottomEndpointBrowseEndpoint.fromJson(Map<String, dynamic> json) {
    return BottomEndpointBrowseEndpoint(
      browseId: json['browseId'],
      params: json['params'],
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
    params,
    browseEndpointContextSupportedConfigs,
  ];
}

class Subtitle extends Equatable {
  const Subtitle({
    required this.runs,
    required this.accessibility,
  });

  final List<SubtitleRun> runs;
  final SubscribeAccessibilityClass? accessibility;

  factory Subtitle.fromJson(Map<String, dynamic> json) {
    return Subtitle(
      runs: json['runs'] == null
          ? []
          : List<SubtitleRun>.from(
              json['runs']!.map((x) => SubtitleRun.fromJson(x)),
            ),
      accessibility: json['accessibility'] == null
          ? null
          : SubscribeAccessibilityClass.fromJson(json['accessibility']),
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
  final FluffyNavigationEndpoint? navigationEndpoint;

  factory SubtitleRun.fromJson(Map<String, dynamic> json) {
    return SubtitleRun(
      text: json['text'],
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : FluffyNavigationEndpoint.fromJson(json['navigationEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    text,
    navigationEndpoint,
  ];
}

class FluffyNavigationEndpoint extends Equatable {
  const FluffyNavigationEndpoint({
    required this.clickTrackingParams,
    required this.browseEndpoint,
  });

  final String? clickTrackingParams;
  final PurpleBrowseEndpoint? browseEndpoint;

  factory FluffyNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return FluffyNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      browseEndpoint: json['browseEndpoint'] == null
          ? null
          : PurpleBrowseEndpoint.fromJson(json['browseEndpoint']),
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
  final PurpleContent? content;
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

  final PlayNavigationEndpoint? playNavigationEndpoint;
  final String? trackingParams;
  final Icon? playIcon;
  final Icon? pauseIcon;
  final int? iconColor;
  final int? backgroundColor;
  final int? activeBackgroundColor;
  final int? loadingIndicatorColor;
  final Icon? playingIcon;
  final int? iconLoadingColor;
  final double? activeScaleFactor;
  final String? buttonSize;
  final String? rippleTarget;
  final SubscribeAccessibilityClass? accessibilityPlayData;
  final SubscribeAccessibilityClass? accessibilityPauseData;

  factory PurpleMusicPlayButtonRenderer.fromJson(Map<String, dynamic> json) {
    return PurpleMusicPlayButtonRenderer(
      playNavigationEndpoint: json['playNavigationEndpoint'] == null
          ? null
          : PlayNavigationEndpoint.fromJson(json['playNavigationEndpoint']),
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
          : SubscribeAccessibilityClass.fromJson(json['accessibilityPlayData']),
      accessibilityPauseData: json['accessibilityPauseData'] == null
          ? null
          : SubscribeAccessibilityClass.fromJson(
              json['accessibilityPauseData'],
            ),
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

class PlayNavigationEndpoint extends Equatable {
  const PlayNavigationEndpoint({
    required this.clickTrackingParams,
    required this.watchPlaylistEndpoint,
    required this.watchEndpoint,
  });

  final String? clickTrackingParams;
  final WatchPlaylistEndpoint? watchPlaylistEndpoint;
  final NavigationEndpointWatchEndpoint? watchEndpoint;

  factory PlayNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return PlayNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      watchPlaylistEndpoint: json['watchPlaylistEndpoint'] == null
          ? null
          : WatchPlaylistEndpoint.fromJson(json['watchPlaylistEndpoint']),
      watchEndpoint: json['watchEndpoint'] == null
          ? null
          : NavigationEndpointWatchEndpoint.fromJson(json['watchEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    watchPlaylistEndpoint,
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

class Title extends Equatable {
  const Title({
    required this.runs,
  });

  final List<PurpleRun> runs;

  factory Title.fromJson(Map<String, dynamic> json) {
    return Title(
      runs: json['runs'] == null
          ? []
          : List<PurpleRun>.from(
              json['runs']!.map((x) => PurpleRun.fromJson(x)),
            ),
    );
  }

  @override
  List<Object?> get props => [
    runs,
  ];
}

class PurpleRun extends Equatable {
  const PurpleRun({
    required this.text,
    required this.navigationEndpoint,
  });

  final String? text;
  final Endpoint? navigationEndpoint;

  factory PurpleRun.fromJson(Map<String, dynamic> json) {
    return PurpleRun(
      text: json['text'],
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : Endpoint.fromJson(json['navigationEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    text,
    navigationEndpoint,
  ];
}

class Endpoint extends Equatable {
  const Endpoint({
    required this.clickTrackingParams,
    required this.browseEndpoint,
  });

  final String? clickTrackingParams;
  final BottomEndpointBrowseEndpoint? browseEndpoint;

  factory Endpoint.fromJson(Map<String, dynamic> json) {
    return Endpoint(
      clickTrackingParams: json['clickTrackingParams'],
      browseEndpoint: json['browseEndpoint'] == null
          ? null
          : BottomEndpointBrowseEndpoint.fromJson(json['browseEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    browseEndpoint,
  ];
}

class MusicCarouselShelfRendererHeader extends Equatable {
  const MusicCarouselShelfRendererHeader({
    required this.musicCarouselShelfBasicHeaderRenderer,
  });

  final MusicCarouselShelfBasicHeaderRenderer?
  musicCarouselShelfBasicHeaderRenderer;

  factory MusicCarouselShelfRendererHeader.fromJson(Map<String, dynamic> json) {
    return MusicCarouselShelfRendererHeader(
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
    required this.trackingParams,
    required this.moreContentButton,
  });

  final Title? title;
  final SubscribeAccessibilityClass? accessibilityData;
  final String? headerStyle;
  final String? trackingParams;
  final MoreContentButton? moreContentButton;

  factory MusicCarouselShelfBasicHeaderRenderer.fromJson(
    Map<String, dynamic> json,
  ) {
    return MusicCarouselShelfBasicHeaderRenderer(
      title: json['title'] == null ? null : Title.fromJson(json['title']),
      accessibilityData: json['accessibilityData'] == null
          ? null
          : SubscribeAccessibilityClass.fromJson(json['accessibilityData']),
      headerStyle: json['headerStyle'],
      trackingParams: json['trackingParams'],
      moreContentButton: json['moreContentButton'] == null
          ? null
          : MoreContentButton.fromJson(json['moreContentButton']),
    );
  }

  @override
  List<Object?> get props => [
    title,
    accessibilityData,
    headerStyle,
    trackingParams,
    moreContentButton,
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
  final Description? text;
  final Endpoint? navigationEndpoint;
  final String? trackingParams;
  final SubscribeAccessibilityClass? accessibilityData;

  factory MoreContentButtonButtonRenderer.fromJson(Map<String, dynamic> json) {
    return MoreContentButtonButtonRenderer(
      style: json['style'],
      text: json['text'] == null ? null : Description.fromJson(json['text']),
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : Endpoint.fromJson(json['navigationEndpoint']),
      trackingParams: json['trackingParams'],
      accessibilityData: json['accessibilityData'] == null
          ? null
          : SubscribeAccessibilityClass.fromJson(json['accessibilityData']),
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

class MusicDescriptionShelfRenderer extends Equatable {
  const MusicDescriptionShelfRenderer({
    required this.header,
    required this.subheader,
    required this.description,
    required this.moreButton,
    required this.trackingParams,
  });

  final Description? header;
  final Description? subheader;
  final Description? description;
  final MoreButton? moreButton;
  final String? trackingParams;

  factory MusicDescriptionShelfRenderer.fromJson(Map<String, dynamic> json) {
    return MusicDescriptionShelfRenderer(
      header: json['header'] == null
          ? null
          : Description.fromJson(json['header']),
      subheader: json['subheader'] == null
          ? null
          : Description.fromJson(json['subheader']),
      description: json['description'] == null
          ? null
          : Description.fromJson(json['description']),
      moreButton: json['moreButton'] == null
          ? null
          : MoreButton.fromJson(json['moreButton']),
      trackingParams: json['trackingParams'],
    );
  }

  @override
  List<Object?> get props => [
    header,
    subheader,
    description,
    moreButton,
    trackingParams,
  ];
}

class MoreButton extends Equatable {
  const MoreButton({
    required this.toggleButtonRenderer,
  });

  final ToggleButtonRenderer? toggleButtonRenderer;

  factory MoreButton.fromJson(Map<String, dynamic> json) {
    return MoreButton(
      toggleButtonRenderer: json['toggleButtonRenderer'] == null
          ? null
          : ToggleButtonRenderer.fromJson(json['toggleButtonRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    toggleButtonRenderer,
  ];
}

class ToggleButtonRenderer extends Equatable {
  const ToggleButtonRenderer({
    required this.isToggled,
    required this.isDisabled,
    required this.defaultIcon,
    required this.defaultText,
    required this.toggledIcon,
    required this.toggledText,
    required this.trackingParams,
  });

  final bool? isToggled;
  final bool? isDisabled;
  final Icon? defaultIcon;
  final Description? defaultText;
  final Icon? toggledIcon;
  final Description? toggledText;
  final String? trackingParams;

  factory ToggleButtonRenderer.fromJson(Map<String, dynamic> json) {
    return ToggleButtonRenderer(
      isToggled: json['isToggled'],
      isDisabled: json['isDisabled'],
      defaultIcon: json['defaultIcon'] == null
          ? null
          : Icon.fromJson(json['defaultIcon']),
      defaultText: json['defaultText'] == null
          ? null
          : Description.fromJson(json['defaultText']),
      toggledIcon: json['toggledIcon'] == null
          ? null
          : Icon.fromJson(json['toggledIcon']),
      toggledText: json['toggledText'] == null
          ? null
          : Description.fromJson(json['toggledText']),
      trackingParams: json['trackingParams'],
    );
  }

  @override
  List<Object?> get props => [
    isToggled,
    isDisabled,
    defaultIcon,
    defaultText,
    toggledIcon,
    toggledText,
    trackingParams,
  ];
}

class MusicShelfRenderer extends Equatable {
  const MusicShelfRenderer({
    required this.title,
    required this.contents,
    required this.trackingParams,
    required this.bottomText,
    required this.bottomEndpoint,
    required this.shelfDivider,
  });

  final Title? title;
  final List<MusicShelfRendererContent> contents;
  final String? trackingParams;
  final Description? bottomText;
  final Endpoint? bottomEndpoint;
  final ShelfDivider? shelfDivider;

  factory MusicShelfRenderer.fromJson(Map<String, dynamic> json) {
    return MusicShelfRenderer(
      title: json['title'] == null ? null : Title.fromJson(json['title']),
      contents: json['contents'] == null
          ? []
          : List<MusicShelfRendererContent>.from(
              json['contents']!.map(
                (x) => MusicShelfRendererContent.fromJson(x),
              ),
            ),
      trackingParams: json['trackingParams'],
      bottomText: json['bottomText'] == null
          ? null
          : Description.fromJson(json['bottomText']),
      bottomEndpoint: json['bottomEndpoint'] == null
          ? null
          : Endpoint.fromJson(json['bottomEndpoint']),
      shelfDivider: json['shelfDivider'] == null
          ? null
          : ShelfDivider.fromJson(json['shelfDivider']),
    );
  }

  @override
  List<Object?> get props => [
    title,
    contents,
    trackingParams,
    bottomText,
    bottomEndpoint,
    shelfDivider,
  ];
}

class MusicShelfRendererContent extends Equatable {
  const MusicShelfRendererContent({
    required this.musicResponsiveListItemRenderer,
  });

  final MusicResponsiveListItemRenderer? musicResponsiveListItemRenderer;

  factory MusicShelfRendererContent.fromJson(Map<String, dynamic> json) {
    return MusicShelfRendererContent(
      musicResponsiveListItemRenderer:
          json['musicResponsiveListItemRenderer'] == null
          ? null
          : MusicResponsiveListItemRenderer.fromJson(
              json['musicResponsiveListItemRenderer'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    musicResponsiveListItemRenderer,
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
  });

  final String? trackingParams;
  final ThumbnailRendererClass? thumbnail;
  final Overlay? overlay;
  final List<FlexColumn> flexColumns;
  final MusicResponsiveListItemRendererMenu? menu;
  final PlaylistItemData? playlistItemData;

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
  });

  final List<FluffyRun> runs;

  factory Text.fromJson(Map<String, dynamic> json) {
    return Text(
      runs: json['runs'] == null
          ? []
          : List<FluffyRun>.from(
              json['runs']!.map((x) => FluffyRun.fromJson(x)),
            ),
    );
  }

  @override
  List<Object?> get props => [
    runs,
  ];
}

class FluffyRun extends Equatable {
  const FluffyRun({
    required this.text,
    required this.navigationEndpoint,
  });

  final String? text;
  final TentacledNavigationEndpoint? navigationEndpoint;

  factory FluffyRun.fromJson(Map<String, dynamic> json) {
    return FluffyRun(
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
    required this.watchEndpoint,
    required this.browseEndpoint,
  });

  final String? clickTrackingParams;
  final NavigationEndpointWatchEndpoint? watchEndpoint;
  final PurpleBrowseEndpoint? browseEndpoint;

  factory TentacledNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return TentacledNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      watchEndpoint: json['watchEndpoint'] == null
          ? null
          : NavigationEndpointWatchEndpoint.fromJson(json['watchEndpoint']),
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

class MusicResponsiveListItemRendererMenu extends Equatable {
  const MusicResponsiveListItemRendererMenu({
    required this.menuRenderer,
  });

  final FluffyMenuRenderer? menuRenderer;

  factory MusicResponsiveListItemRendererMenu.fromJson(
    Map<String, dynamic> json,
  ) {
    return MusicResponsiveListItemRendererMenu(
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
    required this.topLevelButtons,
    required this.accessibility,
  });

  final List<FluffyItem> items;
  final String? trackingParams;
  final List<TopLevelButton> topLevelButtons;
  final SubscribeAccessibilityClass? accessibility;

  factory FluffyMenuRenderer.fromJson(Map<String, dynamic> json) {
    return FluffyMenuRenderer(
      items: json['items'] == null
          ? []
          : List<FluffyItem>.from(
              json['items']!.map((x) => FluffyItem.fromJson(x)),
            ),
      trackingParams: json['trackingParams'],
      topLevelButtons: json['topLevelButtons'] == null
          ? []
          : List<TopLevelButton>.from(
              json['topLevelButtons']!.map((x) => TopLevelButton.fromJson(x)),
            ),
      accessibility: json['accessibility'] == null
          ? null
          : SubscribeAccessibilityClass.fromJson(json['accessibility']),
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

class FluffyItem extends Equatable {
  const FluffyItem({
    required this.menuNavigationItemRenderer,
    required this.menuServiceItemRenderer,
  });

  final MenuItemRenderer? menuNavigationItemRenderer;
  final MenuItemRenderer? menuServiceItemRenderer;

  factory FluffyItem.fromJson(Map<String, dynamic> json) {
    return FluffyItem(
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
  final DefaultServiceEndpointClass? dislikeNavigationEndpoint;
  final DefaultServiceEndpointClass? likeCommand;

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
          : DefaultServiceEndpointClass.fromJson(
              json['dislikeNavigationEndpoint'],
            ),
      likeCommand: json['likeCommand'] == null
          ? null
          : DefaultServiceEndpointClass.fromJson(json['likeCommand']),
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
  final FluffyContent? content;
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

  final NavigationEndpoint? playNavigationEndpoint;
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
  final SubscribeAccessibilityClass? accessibilityPlayData;
  final SubscribeAccessibilityClass? accessibilityPauseData;

  factory FluffyMusicPlayButtonRenderer.fromJson(Map<String, dynamic> json) {
    return FluffyMusicPlayButtonRenderer(
      playNavigationEndpoint: json['playNavigationEndpoint'] == null
          ? null
          : NavigationEndpoint.fromJson(json['playNavigationEndpoint']),
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
          : SubscribeAccessibilityClass.fromJson(json['accessibilityPlayData']),
      accessibilityPauseData: json['accessibilityPauseData'] == null
          ? null
          : SubscribeAccessibilityClass.fromJson(
              json['accessibilityPauseData'],
            ),
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

class NavigationEndpoint extends Equatable {
  const NavigationEndpoint({
    required this.clickTrackingParams,
    required this.watchEndpoint,
  });

  final String? clickTrackingParams;
  final NavigationEndpointWatchEndpoint? watchEndpoint;

  factory NavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return NavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      watchEndpoint: json['watchEndpoint'] == null
          ? null
          : NavigationEndpointWatchEndpoint.fromJson(json['watchEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    watchEndpoint,
  ];
}

class ShelfDivider extends Equatable {
  const ShelfDivider({
    required this.musicShelfDividerRenderer,
  });

  final MusicShelfDividerRenderer? musicShelfDividerRenderer;

  factory ShelfDivider.fromJson(Map<String, dynamic> json) {
    return ShelfDivider(
      musicShelfDividerRenderer: json['musicShelfDividerRenderer'] == null
          ? null
          : MusicShelfDividerRenderer.fromJson(
              json['musicShelfDividerRenderer'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    musicShelfDividerRenderer,
  ];
}

class MusicShelfDividerRenderer extends Equatable {
  const MusicShelfDividerRenderer({
    required this.hidden,
  });

  final bool? hidden;

  factory MusicShelfDividerRenderer.fromJson(Map<String, dynamic> json) {
    return MusicShelfDividerRenderer(
      hidden: json['hidden'],
    );
  }

  @override
  List<Object?> get props => [
    hidden,
  ];
}

class YtAlbumsModelHeader extends Equatable {
  const YtAlbumsModelHeader({
    required this.musicImmersiveHeaderRenderer,
  });

  final MusicImmersiveHeaderRenderer? musicImmersiveHeaderRenderer;

  factory YtAlbumsModelHeader.fromJson(Map<String, dynamic> json) {
    return YtAlbumsModelHeader(
      musicImmersiveHeaderRenderer: json['musicImmersiveHeaderRenderer'] == null
          ? null
          : MusicImmersiveHeaderRenderer.fromJson(
              json['musicImmersiveHeaderRenderer'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    musicImmersiveHeaderRenderer,
  ];
}

class MusicImmersiveHeaderRenderer extends Equatable {
  const MusicImmersiveHeaderRenderer({
    required this.title,
    required this.subscriptionButton,
    required this.description,
    required this.moreButton,
    required this.menu,
    required this.thumbnail,
    required this.trackingParams,
    required this.playButton,
    required this.startRadioButton,
    required this.shareEndpoint,
  });

  final Description? title;
  final SubscriptionButton? subscriptionButton;
  final Description? description;
  final MoreButton? moreButton;
  final MusicImmersiveHeaderRendererMenu? menu;
  final ThumbnailRendererClass? thumbnail;
  final String? trackingParams;
  final PlayButtonClass? playButton;
  final PlayButtonClass? startRadioButton;
  final ShareEndpoint? shareEndpoint;

  factory MusicImmersiveHeaderRenderer.fromJson(Map<String, dynamic> json) {
    return MusicImmersiveHeaderRenderer(
      title: json['title'] == null ? null : Description.fromJson(json['title']),
      subscriptionButton: json['subscriptionButton'] == null
          ? null
          : SubscriptionButton.fromJson(json['subscriptionButton']),
      description: json['description'] == null
          ? null
          : Description.fromJson(json['description']),
      moreButton: json['moreButton'] == null
          ? null
          : MoreButton.fromJson(json['moreButton']),
      menu: json['menu'] == null
          ? null
          : MusicImmersiveHeaderRendererMenu.fromJson(json['menu']),
      thumbnail: json['thumbnail'] == null
          ? null
          : ThumbnailRendererClass.fromJson(json['thumbnail']),
      trackingParams: json['trackingParams'],
      playButton: json['playButton'] == null
          ? null
          : PlayButtonClass.fromJson(json['playButton']),
      startRadioButton: json['startRadioButton'] == null
          ? null
          : PlayButtonClass.fromJson(json['startRadioButton']),
      shareEndpoint: json['shareEndpoint'] == null
          ? null
          : ShareEndpoint.fromJson(json['shareEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    title,
    subscriptionButton,
    description,
    moreButton,
    menu,
    thumbnail,
    trackingParams,
    playButton,
    startRadioButton,
    shareEndpoint,
  ];
}

class MusicImmersiveHeaderRendererMenu extends Equatable {
  const MusicImmersiveHeaderRendererMenu({
    required this.menuRenderer,
  });

  final TentacledMenuRenderer? menuRenderer;

  factory MusicImmersiveHeaderRendererMenu.fromJson(Map<String, dynamic> json) {
    return MusicImmersiveHeaderRendererMenu(
      menuRenderer: json['menuRenderer'] == null
          ? null
          : TentacledMenuRenderer.fromJson(json['menuRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    menuRenderer,
  ];
}

class TentacledMenuRenderer extends Equatable {
  const TentacledMenuRenderer({
    required this.items,
    required this.trackingParams,
    required this.accessibility,
  });

  final List<TentacledItem> items;
  final String? trackingParams;
  final SubscribeAccessibilityClass? accessibility;

  factory TentacledMenuRenderer.fromJson(Map<String, dynamic> json) {
    return TentacledMenuRenderer(
      items: json['items'] == null
          ? []
          : List<TentacledItem>.from(
              json['items']!.map((x) => TentacledItem.fromJson(x)),
            ),
      trackingParams: json['trackingParams'],
      accessibility: json['accessibility'] == null
          ? null
          : SubscribeAccessibilityClass.fromJson(json['accessibility']),
    );
  }

  @override
  List<Object?> get props => [
    items,
    trackingParams,
    accessibility,
  ];
}

class TentacledItem extends Equatable {
  const TentacledItem({
    required this.menuNavigationItemRenderer,
  });

  final MenuItemRenderer? menuNavigationItemRenderer;

  factory TentacledItem.fromJson(Map<String, dynamic> json) {
    return TentacledItem(
      menuNavigationItemRenderer: json['menuNavigationItemRenderer'] == null
          ? null
          : MenuItemRenderer.fromJson(json['menuNavigationItemRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    menuNavigationItemRenderer,
  ];
}

class PlayButtonClass extends Equatable {
  const PlayButtonClass({
    required this.buttonRenderer,
  });

  final PlayButtonButtonRenderer? buttonRenderer;

  factory PlayButtonClass.fromJson(Map<String, dynamic> json) {
    return PlayButtonClass(
      buttonRenderer: json['buttonRenderer'] == null
          ? null
          : PlayButtonButtonRenderer.fromJson(json['buttonRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    buttonRenderer,
  ];
}

class PlayButtonButtonRenderer extends Equatable {
  const PlayButtonButtonRenderer({
    required this.style,
    required this.size,
    required this.text,
    required this.icon,
    required this.navigationEndpoint,
    required this.accessibility,
    required this.trackingParams,
    required this.accessibilityData,
  });

  final String? style;
  final String? size;
  final Description? text;
  final Icon? icon;
  final NavigationEndpoint? navigationEndpoint;
  final AccessibilityAccessibility? accessibility;
  final String? trackingParams;
  final SubscribeAccessibilityClass? accessibilityData;

  factory PlayButtonButtonRenderer.fromJson(Map<String, dynamic> json) {
    return PlayButtonButtonRenderer(
      style: json['style'],
      size: json['size'],
      text: json['text'] == null ? null : Description.fromJson(json['text']),
      icon: json['icon'] == null ? null : Icon.fromJson(json['icon']),
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : NavigationEndpoint.fromJson(json['navigationEndpoint']),
      accessibility: json['accessibility'] == null
          ? null
          : AccessibilityAccessibility.fromJson(json['accessibility']),
      trackingParams: json['trackingParams'],
      accessibilityData: json['accessibilityData'] == null
          ? null
          : SubscribeAccessibilityClass.fromJson(json['accessibilityData']),
    );
  }

  @override
  List<Object?> get props => [
    style,
    size,
    text,
    icon,
    navigationEndpoint,
    accessibility,
    trackingParams,
    accessibilityData,
  ];
}

class ShareEndpoint extends Equatable {
  const ShareEndpoint({
    required this.clickTrackingParams,
    required this.shareEntityEndpoint,
  });

  final String? clickTrackingParams;
  final ShareEntityEndpoint? shareEntityEndpoint;

  factory ShareEndpoint.fromJson(Map<String, dynamic> json) {
    return ShareEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      shareEntityEndpoint: json['shareEntityEndpoint'] == null
          ? null
          : ShareEntityEndpoint.fromJson(json['shareEntityEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    shareEntityEndpoint,
  ];
}

class SubscriptionButton extends Equatable {
  const SubscriptionButton({
    required this.subscribeButtonRenderer,
  });

  final SubscribeButtonRenderer? subscribeButtonRenderer;

  factory SubscriptionButton.fromJson(Map<String, dynamic> json) {
    return SubscriptionButton(
      subscribeButtonRenderer: json['subscribeButtonRenderer'] == null
          ? null
          : SubscribeButtonRenderer.fromJson(json['subscribeButtonRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    subscribeButtonRenderer,
  ];
}

class SubscribeButtonRenderer extends Equatable {
  const SubscribeButtonRenderer({
    required this.subscriberCountText,
    required this.subscribed,
    required this.enabled,
    required this.type,
    required this.channelId,
    required this.showPreferences,
    required this.subscriberCountWithSubscribeText,
    required this.subscribedButtonText,
    required this.unsubscribedButtonText,
    required this.trackingParams,
    required this.unsubscribeButtonText,
    required this.serviceEndpoints,
    required this.longSubscriberCountText,
    required this.shortSubscriberCountText,
    required this.subscribeAccessibility,
    required this.unsubscribeAccessibility,
    required this.signInEndpoint,
  });

  final Description? subscriberCountText;
  final bool? subscribed;
  final bool? enabled;
  final String? type;
  final String? channelId;
  final bool? showPreferences;
  final Description? subscriberCountWithSubscribeText;
  final Description? subscribedButtonText;
  final Description? unsubscribedButtonText;
  final String? trackingParams;
  final Description? unsubscribeButtonText;
  final List<ServiceEndpointElement> serviceEndpoints;
  final LongSubscriberCountText? longSubscriberCountText;
  final Description? shortSubscriberCountText;
  final SubscribeAccessibilityClass? subscribeAccessibility;
  final SubscribeAccessibilityClass? unsubscribeAccessibility;
  final DefaultServiceEndpointClass? signInEndpoint;

  factory SubscribeButtonRenderer.fromJson(Map<String, dynamic> json) {
    return SubscribeButtonRenderer(
      subscriberCountText: json['subscriberCountText'] == null
          ? null
          : Description.fromJson(json['subscriberCountText']),
      subscribed: json['subscribed'],
      enabled: json['enabled'],
      type: json['type'],
      channelId: json['channelId'],
      showPreferences: json['showPreferences'],
      subscriberCountWithSubscribeText:
          json['subscriberCountWithSubscribeText'] == null
          ? null
          : Description.fromJson(json['subscriberCountWithSubscribeText']),
      subscribedButtonText: json['subscribedButtonText'] == null
          ? null
          : Description.fromJson(json['subscribedButtonText']),
      unsubscribedButtonText: json['unsubscribedButtonText'] == null
          ? null
          : Description.fromJson(json['unsubscribedButtonText']),
      trackingParams: json['trackingParams'],
      unsubscribeButtonText: json['unsubscribeButtonText'] == null
          ? null
          : Description.fromJson(json['unsubscribeButtonText']),
      serviceEndpoints: json['serviceEndpoints'] == null
          ? []
          : List<ServiceEndpointElement>.from(
              json['serviceEndpoints']!.map(
                (x) => ServiceEndpointElement.fromJson(x),
              ),
            ),
      longSubscriberCountText: json['longSubscriberCountText'] == null
          ? null
          : LongSubscriberCountText.fromJson(json['longSubscriberCountText']),
      shortSubscriberCountText: json['shortSubscriberCountText'] == null
          ? null
          : Description.fromJson(json['shortSubscriberCountText']),
      subscribeAccessibility: json['subscribeAccessibility'] == null
          ? null
          : SubscribeAccessibilityClass.fromJson(
              json['subscribeAccessibility'],
            ),
      unsubscribeAccessibility: json['unsubscribeAccessibility'] == null
          ? null
          : SubscribeAccessibilityClass.fromJson(
              json['unsubscribeAccessibility'],
            ),
      signInEndpoint: json['signInEndpoint'] == null
          ? null
          : DefaultServiceEndpointClass.fromJson(json['signInEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    subscriberCountText,
    subscribed,
    enabled,
    type,
    channelId,
    showPreferences,
    subscriberCountWithSubscribeText,
    subscribedButtonText,
    unsubscribedButtonText,
    trackingParams,
    unsubscribeButtonText,
    serviceEndpoints,
    longSubscriberCountText,
    shortSubscriberCountText,
    subscribeAccessibility,
    unsubscribeAccessibility,
    signInEndpoint,
  ];
}

class LongSubscriberCountText extends Equatable {
  const LongSubscriberCountText({
    required this.runs,
    required this.accessibility,
  });

  final List<DescriptionRun> runs;
  final SubscribeAccessibilityClass? accessibility;

  factory LongSubscriberCountText.fromJson(Map<String, dynamic> json) {
    return LongSubscriberCountText(
      runs: json['runs'] == null
          ? []
          : List<DescriptionRun>.from(
              json['runs']!.map((x) => DescriptionRun.fromJson(x)),
            ),
      accessibility: json['accessibility'] == null
          ? null
          : SubscribeAccessibilityClass.fromJson(json['accessibility']),
    );
  }

  @override
  List<Object?> get props => [
    runs,
    accessibility,
  ];
}

class ServiceEndpointElement extends Equatable {
  const ServiceEndpointElement({
    required this.clickTrackingParams,
    required this.subscribeEndpoint,
    required this.signalServiceEndpoint,
  });

  final String? clickTrackingParams;
  final SubscribeEndpoint? subscribeEndpoint;
  final SignalServiceEndpoint? signalServiceEndpoint;

  factory ServiceEndpointElement.fromJson(Map<String, dynamic> json) {
    return ServiceEndpointElement(
      clickTrackingParams: json['clickTrackingParams'],
      subscribeEndpoint: json['subscribeEndpoint'] == null
          ? null
          : SubscribeEndpoint.fromJson(json['subscribeEndpoint']),
      signalServiceEndpoint: json['signalServiceEndpoint'] == null
          ? null
          : SignalServiceEndpoint.fromJson(json['signalServiceEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    subscribeEndpoint,
    signalServiceEndpoint,
  ];
}

class SignalServiceEndpoint extends Equatable {
  const SignalServiceEndpoint({
    required this.signal,
    required this.actions,
  });

  final String? signal;
  final List<Action> actions;

  factory SignalServiceEndpoint.fromJson(Map<String, dynamic> json) {
    return SignalServiceEndpoint(
      signal: json['signal'],
      actions: json['actions'] == null
          ? []
          : List<Action>.from(json['actions']!.map((x) => Action.fromJson(x))),
    );
  }

  @override
  List<Object?> get props => [
    signal,
    actions,
  ];
}

class Action extends Equatable {
  const Action({
    required this.clickTrackingParams,
    required this.openPopupAction,
  });

  final String? clickTrackingParams;
  final OpenPopupAction? openPopupAction;

  factory Action.fromJson(Map<String, dynamic> json) {
    return Action(
      clickTrackingParams: json['clickTrackingParams'],
      openPopupAction: json['openPopupAction'] == null
          ? null
          : OpenPopupAction.fromJson(json['openPopupAction']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    openPopupAction,
  ];
}

class OpenPopupAction extends Equatable {
  const OpenPopupAction({
    required this.popup,
    required this.popupType,
  });

  final Popup? popup;
  final String? popupType;

  factory OpenPopupAction.fromJson(Map<String, dynamic> json) {
    return OpenPopupAction(
      popup: json['popup'] == null ? null : Popup.fromJson(json['popup']),
      popupType: json['popupType'],
    );
  }

  @override
  List<Object?> get props => [
    popup,
    popupType,
  ];
}

class Popup extends Equatable {
  const Popup({
    required this.confirmDialogRenderer,
  });

  final ConfirmDialogRenderer? confirmDialogRenderer;

  factory Popup.fromJson(Map<String, dynamic> json) {
    return Popup(
      confirmDialogRenderer: json['confirmDialogRenderer'] == null
          ? null
          : ConfirmDialogRenderer.fromJson(json['confirmDialogRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    confirmDialogRenderer,
  ];
}

class ConfirmDialogRenderer extends Equatable {
  const ConfirmDialogRenderer({
    required this.trackingParams,
    required this.dialogMessages,
    required this.confirmButton,
    required this.cancelButton,
  });

  final String? trackingParams;
  final List<Description> dialogMessages;
  final CancelButtonClass? confirmButton;
  final CancelButtonClass? cancelButton;

  factory ConfirmDialogRenderer.fromJson(Map<String, dynamic> json) {
    return ConfirmDialogRenderer(
      trackingParams: json['trackingParams'],
      dialogMessages: json['dialogMessages'] == null
          ? []
          : List<Description>.from(
              json['dialogMessages']!.map((x) => Description.fromJson(x)),
            ),
      confirmButton: json['confirmButton'] == null
          ? null
          : CancelButtonClass.fromJson(json['confirmButton']),
      cancelButton: json['cancelButton'] == null
          ? null
          : CancelButtonClass.fromJson(json['cancelButton']),
    );
  }

  @override
  List<Object?> get props => [
    trackingParams,
    dialogMessages,
    confirmButton,
    cancelButton,
  ];
}

class CancelButtonClass extends Equatable {
  const CancelButtonClass({
    required this.buttonRenderer,
  });

  final CancelButtonButtonRenderer? buttonRenderer;

  factory CancelButtonClass.fromJson(Map<String, dynamic> json) {
    return CancelButtonClass(
      buttonRenderer: json['buttonRenderer'] == null
          ? null
          : CancelButtonButtonRenderer.fromJson(json['buttonRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    buttonRenderer,
  ];
}

class CancelButtonButtonRenderer extends Equatable {
  const CancelButtonButtonRenderer({
    required this.style,
    required this.size,
    required this.text,
    required this.trackingParams,
    required this.serviceEndpoint,
  });

  final String? style;
  final String? size;
  final Description? text;
  final String? trackingParams;
  final ButtonRendererServiceEndpoint? serviceEndpoint;

  factory CancelButtonButtonRenderer.fromJson(Map<String, dynamic> json) {
    return CancelButtonButtonRenderer(
      style: json['style'],
      size: json['size'],
      text: json['text'] == null ? null : Description.fromJson(json['text']),
      trackingParams: json['trackingParams'],
      serviceEndpoint: json['serviceEndpoint'] == null
          ? null
          : ButtonRendererServiceEndpoint.fromJson(json['serviceEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    style,
    size,
    text,
    trackingParams,
    serviceEndpoint,
  ];
}

class ButtonRendererServiceEndpoint extends Equatable {
  const ButtonRendererServiceEndpoint({
    required this.clickTrackingParams,
    required this.unsubscribeEndpoint,
  });

  final String? clickTrackingParams;
  final UnsubscribeEndpoint? unsubscribeEndpoint;

  factory ButtonRendererServiceEndpoint.fromJson(Map<String, dynamic> json) {
    return ButtonRendererServiceEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      unsubscribeEndpoint: json['unsubscribeEndpoint'] == null
          ? null
          : UnsubscribeEndpoint.fromJson(json['unsubscribeEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    unsubscribeEndpoint,
  ];
}

class UnsubscribeEndpoint extends Equatable {
  const UnsubscribeEndpoint({
    required this.channelIds,
  });

  final List<String> channelIds;

  factory UnsubscribeEndpoint.fromJson(Map<String, dynamic> json) {
    return UnsubscribeEndpoint(
      channelIds: json['channelIds'] == null
          ? []
          : List<String>.from(json['channelIds']!.map((x) => x)),
    );
  }

  @override
  List<Object?> get props => [
    channelIds,
  ];
}

class SubscribeEndpoint extends Equatable {
  const SubscribeEndpoint({
    required this.channelIds,
    required this.params,
  });

  final List<String> channelIds;
  final String? params;

  factory SubscribeEndpoint.fromJson(Map<String, dynamic> json) {
    return SubscribeEndpoint(
      channelIds: json['channelIds'] == null
          ? []
          : List<String>.from(json['channelIds']!.map((x) => x)),
      params: json['params'],
    );
  }

  @override
  List<Object?> get props => [
    channelIds,
    params,
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
