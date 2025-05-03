class YtBrowseModel {
  YtBrowseModel({
    required this.responseContext,
    required this.contents,
    required this.trackingParams,
    required this.maxAgeStoreSeconds,
    required this.background,
  });

  final ResponseContext? responseContext;
  final Contents? contents;
  final String? trackingParams;
  final int? maxAgeStoreSeconds;
  final ThumbnailClass? background;

  factory YtBrowseModel.fromJson(Map<String, dynamic> json) {
    return YtBrowseModel(
      responseContext: json["responseContext"] == null
          ? null
          : ResponseContext.fromJson(json["responseContext"]),
      contents:
          json["contents"] == null ? null : Contents.fromJson(json["contents"]),
      trackingParams: json["trackingParams"],
      maxAgeStoreSeconds: json["maxAgeStoreSeconds"],
      background: json["background"] == null
          ? null
          : ThumbnailClass.fromJson(json["background"]),
    );
  }
}

class ThumbnailClass {
  ThumbnailClass({
    required this.musicThumbnailRenderer,
  });

  final MusicThumbnailRenderer? musicThumbnailRenderer;

  factory ThumbnailClass.fromJson(Map<String, dynamic> json) {
    return ThumbnailClass(
      musicThumbnailRenderer: json["musicThumbnailRenderer"] == null
          ? null
          : MusicThumbnailRenderer.fromJson(json["musicThumbnailRenderer"]),
    );
  }
}

class MusicThumbnailRenderer {
  MusicThumbnailRenderer({
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
      thumbnail: json["thumbnail"] == null
          ? null
          : MusicThumbnailRendererThumbnail.fromJson(json["thumbnail"]),
      thumbnailCrop: json["thumbnailCrop"],
      thumbnailScale: json["thumbnailScale"],
      trackingParams: json["trackingParams"],
    );
  }
}

class MusicThumbnailRendererThumbnail {
  MusicThumbnailRendererThumbnail({
    required this.thumbnails,
  });

  final List<ThumbnailElement> thumbnails;

  factory MusicThumbnailRendererThumbnail.fromJson(Map<String, dynamic> json) {
    return MusicThumbnailRendererThumbnail(
      thumbnails: json["thumbnails"] == null
          ? []
          : List<ThumbnailElement>.from(
              json["thumbnails"]!.map((x) => ThumbnailElement.fromJson(x))),
    );
  }
}

class ThumbnailElement {
  ThumbnailElement({
    required this.url,
    required this.width,
    required this.height,
  });

  final String? url;
  final int? width;
  final int? height;

  factory ThumbnailElement.fromJson(Map<String, dynamic> json) {
    return ThumbnailElement(
      url: json["url"],
      width: json["width"],
      height: json["height"],
    );
  }
}

class Contents {
  Contents({
    required this.singleColumnBrowseResultsRenderer,
  });

  final SingleColumnBrowseResultsRenderer? singleColumnBrowseResultsRenderer;

  factory Contents.fromJson(Map<String, dynamic> json) {
    return Contents(
      singleColumnBrowseResultsRenderer:
          json["singleColumnBrowseResultsRenderer"] == null
              ? null
              : SingleColumnBrowseResultsRenderer.fromJson(
                  json["singleColumnBrowseResultsRenderer"]),
    );
  }
}

class SingleColumnBrowseResultsRenderer {
  SingleColumnBrowseResultsRenderer({
    required this.tabs,
  });

  final List<Tab> tabs;

  factory SingleColumnBrowseResultsRenderer.fromJson(
      Map<String, dynamic> json) {
    return SingleColumnBrowseResultsRenderer(
      tabs: json["tabs"] == null
          ? []
          : List<Tab>.from(json["tabs"]!.map((x) => Tab.fromJson(x))),
    );
  }
}

class Tab {
  Tab({
    required this.tabRenderer,
  });

  final TabRenderer? tabRenderer;

  factory Tab.fromJson(Map<String, dynamic> json) {
    return Tab(
      tabRenderer: json["tabRenderer"] == null
          ? null
          : TabRenderer.fromJson(json["tabRenderer"]),
    );
  }
}

class TabRenderer {
  TabRenderer({
    required this.endpoint,
    required this.title,
    required this.selected,
    required this.content,
    required this.icon,
    required this.tabIdentifier,
    required this.trackingParams,
  });

  final Endpoint? endpoint;
  final String? title;
  final bool? selected;
  final TabRendererContent? content;
  final Icon? icon;
  final String? tabIdentifier;
  final String? trackingParams;

  factory TabRenderer.fromJson(Map<String, dynamic> json) {
    return TabRenderer(
      endpoint:
          json["endpoint"] == null ? null : Endpoint.fromJson(json["endpoint"]),
      title: json["title"],
      selected: json["selected"],
      content: json["content"] == null
          ? null
          : TabRendererContent.fromJson(json["content"]),
      icon: json["icon"] == null ? null : Icon.fromJson(json["icon"]),
      tabIdentifier: json["tabIdentifier"],
      trackingParams: json["trackingParams"],
    );
  }
}

class TabRendererContent {
  TabRendererContent({
    required this.sectionListRenderer,
  });

  final SectionListRenderer? sectionListRenderer;

  factory TabRendererContent.fromJson(Map<String, dynamic> json) {
    return TabRendererContent(
      sectionListRenderer: json["sectionListRenderer"] == null
          ? null
          : SectionListRenderer.fromJson(json["sectionListRenderer"]),
    );
  }
}

class SectionListRenderer {
  SectionListRenderer({
    required this.contents,
    required this.continuations,
    required this.trackingParams,
    required this.header,
  });

  final List<SectionListRendererContent> contents;
  final List<Continuation> continuations;
  final String? trackingParams;
  final SectionListRendererHeader? header;

  factory SectionListRenderer.fromJson(Map<String, dynamic> json) {
    return SectionListRenderer(
      contents: json["contents"] == null
          ? []
          : List<SectionListRendererContent>.from(json["contents"]!
              .map((x) => SectionListRendererContent.fromJson(x))),
      continuations: json["continuations"] == null
          ? []
          : List<Continuation>.from(
              json["continuations"]!.map((x) => Continuation.fromJson(x))),
      trackingParams: json["trackingParams"],
      header: json["header"] == null
          ? null
          : SectionListRendererHeader.fromJson(json["header"]),
    );
  }
}

class SectionListRendererContent {
  SectionListRendererContent({
    required this.musicCarouselShelfRenderer,
    required this.musicTastebuilderShelfRenderer,
  });

  final MusicCarouselShelfRenderer? musicCarouselShelfRenderer;
  final MusicTastebuilderShelfRenderer? musicTastebuilderShelfRenderer;

  factory SectionListRendererContent.fromJson(Map<String, dynamic> json) {
    return SectionListRendererContent(
      musicCarouselShelfRenderer: json["musicCarouselShelfRenderer"] == null
          ? null
          : MusicCarouselShelfRenderer.fromJson(
              json["musicCarouselShelfRenderer"]),
      musicTastebuilderShelfRenderer:
          json["musicTastebuilderShelfRenderer"] == null
              ? null
              : MusicTastebuilderShelfRenderer.fromJson(
                  json["musicTastebuilderShelfRenderer"]),
    );
  }
}

class MusicCarouselShelfRenderer {
  MusicCarouselShelfRenderer({
    required this.header,
    required this.contents,
    required this.trackingParams,
    required this.itemSize,
    required this.numItemsPerColumn,
  });

  final MusicCarouselShelfRendererHeader? header;
  final List<MusicCarouselShelfRendererContent> contents;
  final String? trackingParams;
  final String? itemSize;
  final String? numItemsPerColumn;

  factory MusicCarouselShelfRenderer.fromJson(Map<String, dynamic> json) {
    return MusicCarouselShelfRenderer(
      header: json["header"] == null
          ? null
          : MusicCarouselShelfRendererHeader.fromJson(json["header"]),
      contents: json["contents"] == null
          ? []
          : List<MusicCarouselShelfRendererContent>.from(json["contents"]!
              .map((x) => MusicCarouselShelfRendererContent.fromJson(x))),
      trackingParams: json["trackingParams"],
      itemSize: json["itemSize"],
      numItemsPerColumn: json["numItemsPerColumn"],
    );
  }
}

class MusicCarouselShelfRendererContent {
  MusicCarouselShelfRendererContent({
    required this.musicResponsiveListItemRenderer,
    required this.musicTwoRowItemRenderer,
  });

  final MusicResponsiveListItemRenderer? musicResponsiveListItemRenderer;
  final MusicTwoRowItemRenderer? musicTwoRowItemRenderer;

  factory MusicCarouselShelfRendererContent.fromJson(
      Map<String, dynamic> json) {
    return MusicCarouselShelfRendererContent(
      musicResponsiveListItemRenderer:
          json["musicResponsiveListItemRenderer"] == null
              ? null
              : MusicResponsiveListItemRenderer.fromJson(
                  json["musicResponsiveListItemRenderer"]),
      musicTwoRowItemRenderer: json["musicTwoRowItemRenderer"] == null
          ? null
          : MusicTwoRowItemRenderer.fromJson(json["musicTwoRowItemRenderer"]),
    );
  }
}

class MusicResponsiveListItemRenderer {
  MusicResponsiveListItemRenderer({
    required this.trackingParams,
    required this.thumbnail,
    required this.overlay,
    required this.flexColumns,
    required this.menu,
    required this.playlistItemData,
    required this.flexColumnDisplayStyle,
    required this.itemHeight,
    required this.badges,
  });

  final String? trackingParams;
  final ThumbnailClass? thumbnail;
  final Overlay? overlay;
  final List<FlexColumn> flexColumns;
  final MusicResponsiveListItemRendererMenu? menu;
  final PlaylistItemData? playlistItemData;
  final String? flexColumnDisplayStyle;
  final String? itemHeight;
  final List<Badge> badges;

  factory MusicResponsiveListItemRenderer.fromJson(Map<String, dynamic> json) {
    return MusicResponsiveListItemRenderer(
      trackingParams: json["trackingParams"],
      thumbnail: json["thumbnail"] == null
          ? null
          : ThumbnailClass.fromJson(json["thumbnail"]),
      overlay:
          json["overlay"] == null ? null : Overlay.fromJson(json["overlay"]),
      flexColumns: json["flexColumns"] == null
          ? []
          : List<FlexColumn>.from(
              json["flexColumns"]!.map((x) => FlexColumn.fromJson(x))),
      menu: json["menu"] == null
          ? null
          : MusicResponsiveListItemRendererMenu.fromJson(json["menu"]),
      playlistItemData: json["playlistItemData"] == null
          ? null
          : PlaylistItemData.fromJson(json["playlistItemData"]),
      flexColumnDisplayStyle: json["flexColumnDisplayStyle"],
      itemHeight: json["itemHeight"],
      badges: json["badges"] == null
          ? []
          : List<Badge>.from(json["badges"]!.map((x) => Badge.fromJson(x))),
    );
  }
}

class Badge {
  Badge({
    required this.musicInlineBadgeRenderer,
  });

  final MusicInlineBadgeRenderer? musicInlineBadgeRenderer;

  factory Badge.fromJson(Map<String, dynamic> json) {
    return Badge(
      musicInlineBadgeRenderer: json["musicInlineBadgeRenderer"] == null
          ? null
          : MusicInlineBadgeRenderer.fromJson(json["musicInlineBadgeRenderer"]),
    );
  }
}

class MusicInlineBadgeRenderer {
  MusicInlineBadgeRenderer({
    required this.trackingParams,
    required this.icon,
    required this.accessibilityData,
  });

  final String? trackingParams;
  final Icon? icon;
  final Accessibility? accessibilityData;

  factory MusicInlineBadgeRenderer.fromJson(Map<String, dynamic> json) {
    return MusicInlineBadgeRenderer(
      trackingParams: json["trackingParams"],
      icon: json["icon"] == null ? null : Icon.fromJson(json["icon"]),
      accessibilityData: json["accessibilityData"] == null
          ? null
          : Accessibility.fromJson(json["accessibilityData"]),
    );
  }
}

class Accessibility {
  Accessibility({
    required this.accessibilityData,
  });

  final AccessibilityData? accessibilityData;

  factory Accessibility.fromJson(Map<String, dynamic> json) {
    return Accessibility(
      accessibilityData: json["accessibilityData"] == null
          ? null
          : AccessibilityData.fromJson(json["accessibilityData"]),
    );
  }
}

class AccessibilityData {
  AccessibilityData({
    required this.label,
  });

  final String? label;

  factory AccessibilityData.fromJson(Map<String, dynamic> json) {
    return AccessibilityData(
      label: json["label"],
    );
  }
}

class Icon {
  Icon({
    required this.iconType,
  });

  final String? iconType;

  factory Icon.fromJson(Map<String, dynamic> json) {
    return Icon(
      iconType: json["iconType"],
    );
  }
}

class FlexColumn {
  FlexColumn({
    required this.musicResponsiveListItemFlexColumnRenderer,
  });

  final MusicResponsiveListItemFlexColumnRenderer?
      musicResponsiveListItemFlexColumnRenderer;

  factory FlexColumn.fromJson(Map<String, dynamic> json) {
    return FlexColumn(
      musicResponsiveListItemFlexColumnRenderer:
          json["musicResponsiveListItemFlexColumnRenderer"] == null
              ? null
              : MusicResponsiveListItemFlexColumnRenderer.fromJson(
                  json["musicResponsiveListItemFlexColumnRenderer"]),
    );
  }
}

class MusicResponsiveListItemFlexColumnRenderer {
  MusicResponsiveListItemFlexColumnRenderer({
    required this.text,
    required this.displayPriority,
  });

  final Text? text;
  final String? displayPriority;

  factory MusicResponsiveListItemFlexColumnRenderer.fromJson(
      Map<String, dynamic> json) {
    return MusicResponsiveListItemFlexColumnRenderer(
      text: json["text"] == null ? null : Text.fromJson(json["text"]),
      displayPriority: json["displayPriority"],
    );
  }
}

class Text {
  Text({
    required this.runs,
    required this.accessibility,
  });

  final List<PurpleRun> runs;
  final Accessibility? accessibility;

  factory Text.fromJson(Map<String, dynamic> json) {
    return Text(
      runs: json["runs"] == null
          ? []
          : List<PurpleRun>.from(
              json["runs"]!.map((x) => PurpleRun.fromJson(x))),
      accessibility: json["accessibility"] == null
          ? null
          : Accessibility.fromJson(json["accessibility"]),
    );
  }
}

class PurpleRun {
  PurpleRun({
    required this.text,
    required this.navigationEndpoint,
  });

  final String? text;
  final PurpleNavigationEndpoint? navigationEndpoint;

  factory PurpleRun.fromJson(Map<String, dynamic> json) {
    return PurpleRun(
      text: json["text"],
      navigationEndpoint: json["navigationEndpoint"] == null
          ? null
          : PurpleNavigationEndpoint.fromJson(json["navigationEndpoint"]),
    );
  }
}

class PurpleNavigationEndpoint {
  PurpleNavigationEndpoint({
    required this.clickTrackingParams,
    required this.watchEndpoint,
    required this.browseEndpoint,
  });

  final String? clickTrackingParams;
  final PlayNavigationEndpointWatchEndpoint? watchEndpoint;
  final PurpleBrowseEndpoint? browseEndpoint;

  factory PurpleNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return PurpleNavigationEndpoint(
      clickTrackingParams: json["clickTrackingParams"],
      watchEndpoint: json["watchEndpoint"] == null
          ? null
          : PlayNavigationEndpointWatchEndpoint.fromJson(json["watchEndpoint"]),
      browseEndpoint: json["browseEndpoint"] == null
          ? null
          : PurpleBrowseEndpoint.fromJson(json["browseEndpoint"]),
    );
  }
}

class PurpleBrowseEndpoint {
  PurpleBrowseEndpoint({
    required this.browseId,
    required this.browseEndpointContextSupportedConfigs,
  });

  final String? browseId;
  final BrowseEndpointContextSupportedConfigs?
      browseEndpointContextSupportedConfigs;

  factory PurpleBrowseEndpoint.fromJson(Map<String, dynamic> json) {
    return PurpleBrowseEndpoint(
      browseId: json["browseId"],
      browseEndpointContextSupportedConfigs:
          json["browseEndpointContextSupportedConfigs"] == null
              ? null
              : BrowseEndpointContextSupportedConfigs.fromJson(
                  json["browseEndpointContextSupportedConfigs"]),
    );
  }
}

class BrowseEndpointContextSupportedConfigs {
  BrowseEndpointContextSupportedConfigs({
    required this.browseEndpointContextMusicConfig,
  });

  final BrowseEndpointContextMusicConfig? browseEndpointContextMusicConfig;

  factory BrowseEndpointContextSupportedConfigs.fromJson(
      Map<String, dynamic> json) {
    return BrowseEndpointContextSupportedConfigs(
      browseEndpointContextMusicConfig:
          json["browseEndpointContextMusicConfig"] == null
              ? null
              : BrowseEndpointContextMusicConfig.fromJson(
                  json["browseEndpointContextMusicConfig"]),
    );
  }
}

class BrowseEndpointContextMusicConfig {
  BrowseEndpointContextMusicConfig({
    required this.pageType,
  });

  final String? pageType;

  factory BrowseEndpointContextMusicConfig.fromJson(Map<String, dynamic> json) {
    return BrowseEndpointContextMusicConfig(
      pageType: json["pageType"],
    );
  }
}

class PlayNavigationEndpointWatchEndpoint {
  PlayNavigationEndpointWatchEndpoint({
    required this.videoId,
    required this.playlistId,
    required this.params,
    required this.loggingContext,
    required this.watchEndpointMusicSupportedConfigs,
    required this.playerParams,
  });

  final String? videoId;
  final String? playlistId;
  final String? params;
  final LoggingContext? loggingContext;
  final WatchEndpointMusicSupportedConfigs? watchEndpointMusicSupportedConfigs;
  final String? playerParams;

  factory PlayNavigationEndpointWatchEndpoint.fromJson(
      Map<String, dynamic> json) {
    return PlayNavigationEndpointWatchEndpoint(
      videoId: json["videoId"],
      playlistId: json["playlistId"],
      params: json["params"],
      loggingContext: json["loggingContext"] == null
          ? null
          : LoggingContext.fromJson(json["loggingContext"]),
      watchEndpointMusicSupportedConfigs:
          json["watchEndpointMusicSupportedConfigs"] == null
              ? null
              : WatchEndpointMusicSupportedConfigs.fromJson(
                  json["watchEndpointMusicSupportedConfigs"]),
      playerParams: json["playerParams"],
    );
  }
}

class LoggingContext {
  LoggingContext({
    required this.vssLoggingContext,
  });

  final VssLoggingContext? vssLoggingContext;

  factory LoggingContext.fromJson(Map<String, dynamic> json) {
    return LoggingContext(
      vssLoggingContext: json["vssLoggingContext"] == null
          ? null
          : VssLoggingContext.fromJson(json["vssLoggingContext"]),
    );
  }
}

class VssLoggingContext {
  VssLoggingContext({
    required this.serializedContextData,
  });

  final String? serializedContextData;

  factory VssLoggingContext.fromJson(Map<String, dynamic> json) {
    return VssLoggingContext(
      serializedContextData: json["serializedContextData"],
    );
  }
}

class WatchEndpointMusicSupportedConfigs {
  WatchEndpointMusicSupportedConfigs({
    required this.watchEndpointMusicConfig,
  });

  final WatchEndpointMusicConfig? watchEndpointMusicConfig;

  factory WatchEndpointMusicSupportedConfigs.fromJson(
      Map<String, dynamic> json) {
    return WatchEndpointMusicSupportedConfigs(
      watchEndpointMusicConfig: json["watchEndpointMusicConfig"] == null
          ? null
          : WatchEndpointMusicConfig.fromJson(json["watchEndpointMusicConfig"]),
    );
  }
}

class WatchEndpointMusicConfig {
  WatchEndpointMusicConfig({
    required this.musicVideoType,
  });

  final String? musicVideoType;

  factory WatchEndpointMusicConfig.fromJson(Map<String, dynamic> json) {
    return WatchEndpointMusicConfig(
      musicVideoType: json["musicVideoType"],
    );
  }
}

class MusicResponsiveListItemRendererMenu {
  MusicResponsiveListItemRendererMenu({
    required this.menuRenderer,
  });

  final PurpleMenuRenderer? menuRenderer;

  factory MusicResponsiveListItemRendererMenu.fromJson(
      Map<String, dynamic> json) {
    return MusicResponsiveListItemRendererMenu(
      menuRenderer: json["menuRenderer"] == null
          ? null
          : PurpleMenuRenderer.fromJson(json["menuRenderer"]),
    );
  }
}

class PurpleMenuRenderer {
  PurpleMenuRenderer({
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
      items: json["items"] == null
          ? []
          : List<PurpleItem>.from(
              json["items"]!.map((x) => PurpleItem.fromJson(x))),
      trackingParams: json["trackingParams"],
      topLevelButtons: json["topLevelButtons"] == null
          ? []
          : List<TopLevelButton>.from(
              json["topLevelButtons"]!.map((x) => TopLevelButton.fromJson(x))),
      accessibility: json["accessibility"] == null
          ? null
          : Accessibility.fromJson(json["accessibility"]),
    );
  }
}

class PurpleItem {
  PurpleItem({
    required this.menuNavigationItemRenderer,
    required this.menuServiceItemRenderer,
    required this.toggleMenuServiceItemRenderer,
  });

  final MenuItemRenderer? menuNavigationItemRenderer;
  final MenuItemRenderer? menuServiceItemRenderer;
  final PurpleToggleMenuServiceItemRenderer? toggleMenuServiceItemRenderer;

  factory PurpleItem.fromJson(Map<String, dynamic> json) {
    return PurpleItem(
      menuNavigationItemRenderer: json["menuNavigationItemRenderer"] == null
          ? null
          : MenuItemRenderer.fromJson(json["menuNavigationItemRenderer"]),
      menuServiceItemRenderer: json["menuServiceItemRenderer"] == null
          ? null
          : MenuItemRenderer.fromJson(json["menuServiceItemRenderer"]),
      toggleMenuServiceItemRenderer:
          json["toggleMenuServiceItemRenderer"] == null
              ? null
              : PurpleToggleMenuServiceItemRenderer.fromJson(
                  json["toggleMenuServiceItemRenderer"]),
    );
  }
}

class MenuItemRenderer {
  MenuItemRenderer({
    required this.text,
    required this.icon,
    required this.navigationEndpoint,
    required this.trackingParams,
    required this.serviceEndpoint,
  });

  final PrimaryText? text;
  final Icon? icon;
  final MenuNavigationItemRendererNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;
  final ServiceEndpoint? serviceEndpoint;

  factory MenuItemRenderer.fromJson(Map<String, dynamic> json) {
    return MenuItemRenderer(
      text: json["text"] == null ? null : PrimaryText.fromJson(json["text"]),
      icon: json["icon"] == null ? null : Icon.fromJson(json["icon"]),
      navigationEndpoint: json["navigationEndpoint"] == null
          ? null
          : MenuNavigationItemRendererNavigationEndpoint.fromJson(
              json["navigationEndpoint"]),
      trackingParams: json["trackingParams"],
      serviceEndpoint: json["serviceEndpoint"] == null
          ? null
          : ServiceEndpoint.fromJson(json["serviceEndpoint"]),
    );
  }
}

class MenuNavigationItemRendererNavigationEndpoint {
  MenuNavigationItemRendererNavigationEndpoint({
    required this.clickTrackingParams,
    required this.watchEndpoint,
    required this.modalEndpoint,
    required this.browseEndpoint,
    required this.shareEntityEndpoint,
    required this.watchPlaylistEndpoint,
  });

  final String? clickTrackingParams;
  final PlayNavigationEndpointWatchEndpoint? watchEndpoint;
  final ModalEndpoint? modalEndpoint;
  final PurpleBrowseEndpoint? browseEndpoint;
  final ShareEntityEndpoint? shareEntityEndpoint;
  final WatchPlaylistEndpoint? watchPlaylistEndpoint;

  factory MenuNavigationItemRendererNavigationEndpoint.fromJson(
      Map<String, dynamic> json) {
    return MenuNavigationItemRendererNavigationEndpoint(
      clickTrackingParams: json["clickTrackingParams"],
      watchEndpoint: json["watchEndpoint"] == null
          ? null
          : PlayNavigationEndpointWatchEndpoint.fromJson(json["watchEndpoint"]),
      modalEndpoint: json["modalEndpoint"] == null
          ? null
          : ModalEndpoint.fromJson(json["modalEndpoint"]),
      browseEndpoint: json["browseEndpoint"] == null
          ? null
          : PurpleBrowseEndpoint.fromJson(json["browseEndpoint"]),
      shareEntityEndpoint: json["shareEntityEndpoint"] == null
          ? null
          : ShareEntityEndpoint.fromJson(json["shareEntityEndpoint"]),
      watchPlaylistEndpoint: json["watchPlaylistEndpoint"] == null
          ? null
          : WatchPlaylistEndpoint.fromJson(json["watchPlaylistEndpoint"]),
    );
  }
}

class ModalEndpoint {
  ModalEndpoint({
    required this.modal,
  });

  final Modal? modal;

  factory ModalEndpoint.fromJson(Map<String, dynamic> json) {
    return ModalEndpoint(
      modal: json["modal"] == null ? null : Modal.fromJson(json["modal"]),
    );
  }
}

class Modal {
  Modal({
    required this.modalWithTitleAndButtonRenderer,
  });

  final ModalWithTitleAndButtonRenderer? modalWithTitleAndButtonRenderer;

  factory Modal.fromJson(Map<String, dynamic> json) {
    return Modal(
      modalWithTitleAndButtonRenderer:
          json["modalWithTitleAndButtonRenderer"] == null
              ? null
              : ModalWithTitleAndButtonRenderer.fromJson(
                  json["modalWithTitleAndButtonRenderer"]),
    );
  }
}

class ModalWithTitleAndButtonRenderer {
  ModalWithTitleAndButtonRenderer({
    required this.title,
    required this.content,
    required this.button,
  });

  final PrimaryText? title;
  final PrimaryText? content;
  final Button? button;

  factory ModalWithTitleAndButtonRenderer.fromJson(Map<String, dynamic> json) {
    return ModalWithTitleAndButtonRenderer(
      title: json["title"] == null ? null : PrimaryText.fromJson(json["title"]),
      content: json["content"] == null
          ? null
          : PrimaryText.fromJson(json["content"]),
      button: json["button"] == null ? null : Button.fromJson(json["button"]),
    );
  }
}

class Button {
  Button({
    required this.buttonRenderer,
  });

  final ButtonButtonRenderer? buttonRenderer;

  factory Button.fromJson(Map<String, dynamic> json) {
    return Button(
      buttonRenderer: json["buttonRenderer"] == null
          ? null
          : ButtonButtonRenderer.fromJson(json["buttonRenderer"]),
    );
  }
}

class ButtonButtonRenderer {
  ButtonButtonRenderer({
    required this.style,
    required this.isDisabled,
    required this.text,
    required this.navigationEndpoint,
    required this.trackingParams,
  });

  final String? style;
  final bool? isDisabled;
  final PrimaryText? text;
  final FluffyNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;

  factory ButtonButtonRenderer.fromJson(Map<String, dynamic> json) {
    return ButtonButtonRenderer(
      style: json["style"],
      isDisabled: json["isDisabled"],
      text: json["text"] == null ? null : PrimaryText.fromJson(json["text"]),
      navigationEndpoint: json["navigationEndpoint"] == null
          ? null
          : FluffyNavigationEndpoint.fromJson(json["navigationEndpoint"]),
      trackingParams: json["trackingParams"],
    );
  }
}

class FluffyNavigationEndpoint {
  FluffyNavigationEndpoint({
    required this.clickTrackingParams,
    required this.signInEndpoint,
  });

  final String? clickTrackingParams;
  final SignInEndpoint? signInEndpoint;

  factory FluffyNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return FluffyNavigationEndpoint(
      clickTrackingParams: json["clickTrackingParams"],
      signInEndpoint: json["signInEndpoint"] == null
          ? null
          : SignInEndpoint.fromJson(json["signInEndpoint"]),
    );
  }
}

class SignInEndpoint {
  SignInEndpoint({
    required this.hack,
  });

  final bool? hack;

  factory SignInEndpoint.fromJson(Map<String, dynamic> json) {
    return SignInEndpoint(
      hack: json["hack"],
    );
  }
}

class PrimaryText {
  PrimaryText({
    required this.runs,
  });

  final List<PrimaryTextRun> runs;

  factory PrimaryText.fromJson(Map<String, dynamic> json) {
    return PrimaryText(
      runs: json["runs"] == null
          ? []
          : List<PrimaryTextRun>.from(
              json["runs"]!.map((x) => PrimaryTextRun.fromJson(x))),
    );
  }
}

class PrimaryTextRun {
  PrimaryTextRun({
    required this.text,
  });

  final String? text;

  factory PrimaryTextRun.fromJson(Map<String, dynamic> json) {
    return PrimaryTextRun(
      text: json["text"],
    );
  }
}

class ShareEntityEndpoint {
  ShareEntityEndpoint({
    required this.serializedShareEntity,
    required this.sharePanelType,
  });

  final String? serializedShareEntity;
  final String? sharePanelType;

  factory ShareEntityEndpoint.fromJson(Map<String, dynamic> json) {
    return ShareEntityEndpoint(
      serializedShareEntity: json["serializedShareEntity"],
      sharePanelType: json["sharePanelType"],
    );
  }
}

class WatchPlaylistEndpoint {
  WatchPlaylistEndpoint({
    required this.playlistId,
    required this.params,
  });

  final String? playlistId;
  final String? params;

  factory WatchPlaylistEndpoint.fromJson(Map<String, dynamic> json) {
    return WatchPlaylistEndpoint(
      playlistId: json["playlistId"],
      params: json["params"],
    );
  }
}

class ServiceEndpoint {
  ServiceEndpoint({
    required this.clickTrackingParams,
    required this.queueAddEndpoint,
  });

  final String? clickTrackingParams;
  final QueueAddEndpoint? queueAddEndpoint;

  factory ServiceEndpoint.fromJson(Map<String, dynamic> json) {
    return ServiceEndpoint(
      clickTrackingParams: json["clickTrackingParams"],
      queueAddEndpoint: json["queueAddEndpoint"] == null
          ? null
          : QueueAddEndpoint.fromJson(json["queueAddEndpoint"]),
    );
  }
}

class QueueAddEndpoint {
  QueueAddEndpoint({
    required this.queueTarget,
    required this.queueInsertPosition,
    required this.commands,
  });

  final QueueTarget? queueTarget;
  final String? queueInsertPosition;
  final List<Command> commands;

  factory QueueAddEndpoint.fromJson(Map<String, dynamic> json) {
    return QueueAddEndpoint(
      queueTarget: json["queueTarget"] == null
          ? null
          : QueueTarget.fromJson(json["queueTarget"]),
      queueInsertPosition: json["queueInsertPosition"],
      commands: json["commands"] == null
          ? []
          : List<Command>.from(
              json["commands"]!.map((x) => Command.fromJson(x))),
    );
  }
}

class Command {
  Command({
    required this.clickTrackingParams,
    required this.addToToastAction,
  });

  final String? clickTrackingParams;
  final AddToToastAction? addToToastAction;

  factory Command.fromJson(Map<String, dynamic> json) {
    return Command(
      clickTrackingParams: json["clickTrackingParams"],
      addToToastAction: json["addToToastAction"] == null
          ? null
          : AddToToastAction.fromJson(json["addToToastAction"]),
    );
  }
}

class AddToToastAction {
  AddToToastAction({
    required this.item,
  });

  final AddToToastActionItem? item;

  factory AddToToastAction.fromJson(Map<String, dynamic> json) {
    return AddToToastAction(
      item: json["item"] == null
          ? null
          : AddToToastActionItem.fromJson(json["item"]),
    );
  }
}

class AddToToastActionItem {
  AddToToastActionItem({
    required this.notificationTextRenderer,
  });

  final NotificationTextRenderer? notificationTextRenderer;

  factory AddToToastActionItem.fromJson(Map<String, dynamic> json) {
    return AddToToastActionItem(
      notificationTextRenderer: json["notificationTextRenderer"] == null
          ? null
          : NotificationTextRenderer.fromJson(json["notificationTextRenderer"]),
    );
  }
}

class NotificationTextRenderer {
  NotificationTextRenderer({
    required this.successResponseText,
    required this.trackingParams,
  });

  final PrimaryText? successResponseText;
  final String? trackingParams;

  factory NotificationTextRenderer.fromJson(Map<String, dynamic> json) {
    return NotificationTextRenderer(
      successResponseText: json["successResponseText"] == null
          ? null
          : PrimaryText.fromJson(json["successResponseText"]),
      trackingParams: json["trackingParams"],
    );
  }
}

class QueueTarget {
  QueueTarget({
    required this.videoId,
    required this.onEmptyQueue,
    required this.playlistId,
  });

  final String? videoId;
  final OnEmptyQueue? onEmptyQueue;
  final String? playlistId;

  factory QueueTarget.fromJson(Map<String, dynamic> json) {
    return QueueTarget(
      videoId: json["videoId"],
      onEmptyQueue: json["onEmptyQueue"] == null
          ? null
          : OnEmptyQueue.fromJson(json["onEmptyQueue"]),
      playlistId: json["playlistId"],
    );
  }
}

class OnEmptyQueue {
  OnEmptyQueue({
    required this.clickTrackingParams,
    required this.watchEndpoint,
  });

  final String? clickTrackingParams;
  final OnEmptyQueueWatchEndpoint? watchEndpoint;

  factory OnEmptyQueue.fromJson(Map<String, dynamic> json) {
    return OnEmptyQueue(
      clickTrackingParams: json["clickTrackingParams"],
      watchEndpoint: json["watchEndpoint"] == null
          ? null
          : OnEmptyQueueWatchEndpoint.fromJson(json["watchEndpoint"]),
    );
  }
}

class OnEmptyQueueWatchEndpoint {
  OnEmptyQueueWatchEndpoint({
    required this.videoId,
    required this.playlistId,
  });

  final String? videoId;
  final String? playlistId;

  factory OnEmptyQueueWatchEndpoint.fromJson(Map<String, dynamic> json) {
    return OnEmptyQueueWatchEndpoint(
      videoId: json["videoId"],
      playlistId: json["playlistId"],
    );
  }
}

class PurpleToggleMenuServiceItemRenderer {
  PurpleToggleMenuServiceItemRenderer({
    required this.defaultText,
    required this.defaultIcon,
    required this.defaultServiceEndpoint,
    required this.toggledText,
    required this.toggledIcon,
    required this.toggledServiceEndpoint,
    required this.trackingParams,
  });

  final PrimaryText? defaultText;
  final Icon? defaultIcon;
  final DefaultServiceEndpointClass? defaultServiceEndpoint;
  final PrimaryText? toggledText;
  final Icon? toggledIcon;
  final PurpleToggledServiceEndpoint? toggledServiceEndpoint;
  final String? trackingParams;

  factory PurpleToggleMenuServiceItemRenderer.fromJson(
      Map<String, dynamic> json) {
    return PurpleToggleMenuServiceItemRenderer(
      defaultText: json["defaultText"] == null
          ? null
          : PrimaryText.fromJson(json["defaultText"]),
      defaultIcon: json["defaultIcon"] == null
          ? null
          : Icon.fromJson(json["defaultIcon"]),
      defaultServiceEndpoint: json["defaultServiceEndpoint"] == null
          ? null
          : DefaultServiceEndpointClass.fromJson(
              json["defaultServiceEndpoint"]),
      toggledText: json["toggledText"] == null
          ? null
          : PrimaryText.fromJson(json["toggledText"]),
      toggledIcon: json["toggledIcon"] == null
          ? null
          : Icon.fromJson(json["toggledIcon"]),
      toggledServiceEndpoint: json["toggledServiceEndpoint"] == null
          ? null
          : PurpleToggledServiceEndpoint.fromJson(
              json["toggledServiceEndpoint"]),
      trackingParams: json["trackingParams"],
    );
  }
}

class DefaultServiceEndpointClass {
  DefaultServiceEndpointClass({
    required this.clickTrackingParams,
    required this.modalEndpoint,
  });

  final String? clickTrackingParams;
  final ModalEndpoint? modalEndpoint;

  factory DefaultServiceEndpointClass.fromJson(Map<String, dynamic> json) {
    return DefaultServiceEndpointClass(
      clickTrackingParams: json["clickTrackingParams"],
      modalEndpoint: json["modalEndpoint"] == null
          ? null
          : ModalEndpoint.fromJson(json["modalEndpoint"]),
    );
  }
}

class PurpleToggledServiceEndpoint {
  PurpleToggledServiceEndpoint({
    required this.clickTrackingParams,
    required this.feedbackEndpoint,
  });

  final String? clickTrackingParams;
  final FeedbackEndpoint? feedbackEndpoint;

  factory PurpleToggledServiceEndpoint.fromJson(Map<String, dynamic> json) {
    return PurpleToggledServiceEndpoint(
      clickTrackingParams: json["clickTrackingParams"],
      feedbackEndpoint: json["feedbackEndpoint"] == null
          ? null
          : FeedbackEndpoint.fromJson(json["feedbackEndpoint"]),
    );
  }
}

class FeedbackEndpoint {
  FeedbackEndpoint({
    required this.feedbackToken,
  });

  final String? feedbackToken;

  factory FeedbackEndpoint.fromJson(Map<String, dynamic> json) {
    return FeedbackEndpoint(
      feedbackToken: json["feedbackToken"],
    );
  }
}

class TopLevelButton {
  TopLevelButton({
    required this.likeButtonRenderer,
  });

  final LikeButtonRenderer? likeButtonRenderer;

  factory TopLevelButton.fromJson(Map<String, dynamic> json) {
    return TopLevelButton(
      likeButtonRenderer: json["likeButtonRenderer"] == null
          ? null
          : LikeButtonRenderer.fromJson(json["likeButtonRenderer"]),
    );
  }
}

class LikeButtonRenderer {
  LikeButtonRenderer({
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
      target: json["target"] == null
          ? null
          : PlaylistItemData.fromJson(json["target"]),
      likeStatus: json["likeStatus"],
      trackingParams: json["trackingParams"],
      likesAllowed: json["likesAllowed"],
      dislikeNavigationEndpoint: json["dislikeNavigationEndpoint"] == null
          ? null
          : DefaultServiceEndpointClass.fromJson(
              json["dislikeNavigationEndpoint"]),
      likeCommand: json["likeCommand"] == null
          ? null
          : DefaultServiceEndpointClass.fromJson(json["likeCommand"]),
    );
  }
}

class PlaylistItemData {
  PlaylistItemData({
    required this.videoId,
  });

  final String? videoId;

  factory PlaylistItemData.fromJson(Map<String, dynamic> json) {
    return PlaylistItemData(
      videoId: json["videoId"],
    );
  }
}

class Overlay {
  Overlay({
    required this.musicItemThumbnailOverlayRenderer,
  });

  final OverlayMusicItemThumbnailOverlayRenderer?
      musicItemThumbnailOverlayRenderer;

  factory Overlay.fromJson(Map<String, dynamic> json) {
    return Overlay(
      musicItemThumbnailOverlayRenderer:
          json["musicItemThumbnailOverlayRenderer"] == null
              ? null
              : OverlayMusicItemThumbnailOverlayRenderer.fromJson(
                  json["musicItemThumbnailOverlayRenderer"]),
    );
  }
}

class OverlayMusicItemThumbnailOverlayRenderer {
  OverlayMusicItemThumbnailOverlayRenderer({
    required this.background,
    required this.content,
    required this.contentPosition,
    required this.displayStyle,
  });

  final MusicItemThumbnailOverlayRendererBackground? background;
  final PurpleContent? content;
  final String? contentPosition;
  final String? displayStyle;

  factory OverlayMusicItemThumbnailOverlayRenderer.fromJson(
      Map<String, dynamic> json) {
    return OverlayMusicItemThumbnailOverlayRenderer(
      background: json["background"] == null
          ? null
          : MusicItemThumbnailOverlayRendererBackground.fromJson(
              json["background"]),
      content: json["content"] == null
          ? null
          : PurpleContent.fromJson(json["content"]),
      contentPosition: json["contentPosition"],
      displayStyle: json["displayStyle"],
    );
  }
}

class MusicItemThumbnailOverlayRendererBackground {
  MusicItemThumbnailOverlayRendererBackground({
    required this.verticalGradient,
  });

  final VerticalGradient? verticalGradient;

  factory MusicItemThumbnailOverlayRendererBackground.fromJson(
      Map<String, dynamic> json) {
    return MusicItemThumbnailOverlayRendererBackground(
      verticalGradient: json["verticalGradient"] == null
          ? null
          : VerticalGradient.fromJson(json["verticalGradient"]),
    );
  }
}

class VerticalGradient {
  VerticalGradient({
    required this.gradientLayerColors,
  });

  final List<String> gradientLayerColors;

  factory VerticalGradient.fromJson(Map<String, dynamic> json) {
    return VerticalGradient(
      gradientLayerColors: json["gradientLayerColors"] == null
          ? []
          : List<String>.from(json["gradientLayerColors"]!.map((x) => x)),
    );
  }
}

class PurpleContent {
  PurpleContent({
    required this.musicPlayButtonRenderer,
  });

  final PurpleMusicPlayButtonRenderer? musicPlayButtonRenderer;

  factory PurpleContent.fromJson(Map<String, dynamic> json) {
    return PurpleContent(
      musicPlayButtonRenderer: json["musicPlayButtonRenderer"] == null
          ? null
          : PurpleMusicPlayButtonRenderer.fromJson(
              json["musicPlayButtonRenderer"]),
    );
  }
}

class PurpleMusicPlayButtonRenderer {
  PurpleMusicPlayButtonRenderer({
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
      playNavigationEndpoint: json["playNavigationEndpoint"] == null
          ? null
          : PurplePlayNavigationEndpoint.fromJson(
              json["playNavigationEndpoint"]),
      trackingParams: json["trackingParams"],
      playIcon:
          json["playIcon"] == null ? null : Icon.fromJson(json["playIcon"]),
      pauseIcon:
          json["pauseIcon"] == null ? null : Icon.fromJson(json["pauseIcon"]),
      iconColor: json["iconColor"],
      backgroundColor: json["backgroundColor"],
      activeBackgroundColor: json["activeBackgroundColor"],
      loadingIndicatorColor: json["loadingIndicatorColor"],
      playingIcon: json["playingIcon"] == null
          ? null
          : Icon.fromJson(json["playingIcon"]),
      iconLoadingColor: json["iconLoadingColor"],
      activeScaleFactor: json["activeScaleFactor"],
      buttonSize: json["buttonSize"],
      rippleTarget: json["rippleTarget"],
      accessibilityPlayData: json["accessibilityPlayData"] == null
          ? null
          : Accessibility.fromJson(json["accessibilityPlayData"]),
      accessibilityPauseData: json["accessibilityPauseData"] == null
          ? null
          : Accessibility.fromJson(json["accessibilityPauseData"]),
    );
  }
}

class PurplePlayNavigationEndpoint {
  PurplePlayNavigationEndpoint({
    required this.clickTrackingParams,
    required this.watchEndpoint,
  });

  final String? clickTrackingParams;
  final PlayNavigationEndpointWatchEndpoint? watchEndpoint;

  factory PurplePlayNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return PurplePlayNavigationEndpoint(
      clickTrackingParams: json["clickTrackingParams"],
      watchEndpoint: json["watchEndpoint"] == null
          ? null
          : PlayNavigationEndpointWatchEndpoint.fromJson(json["watchEndpoint"]),
    );
  }
}

class MusicTwoRowItemRenderer {
  MusicTwoRowItemRenderer({
    required this.thumbnailRenderer,
    required this.aspectRatio,
    required this.title,
    required this.subtitle,
    required this.navigationEndpoint,
    required this.trackingParams,
    required this.menu,
    required this.thumbnailOverlay,
  });

  final ThumbnailClass? thumbnailRenderer;
  final String? aspectRatio;
  final Title? title;
  final PrimaryText? subtitle;
  final MusicTwoRowItemRendererNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;
  final MusicTwoRowItemRendererMenu? menu;
  final ThumbnailOverlay? thumbnailOverlay;

  factory MusicTwoRowItemRenderer.fromJson(Map<String, dynamic> json) {
    return MusicTwoRowItemRenderer(
      thumbnailRenderer: json["thumbnailRenderer"] == null
          ? null
          : ThumbnailClass.fromJson(json["thumbnailRenderer"]),
      aspectRatio: json["aspectRatio"],
      title: json["title"] == null ? null : Title.fromJson(json["title"]),
      subtitle: json["subtitle"] == null
          ? null
          : PrimaryText.fromJson(json["subtitle"]),
      navigationEndpoint: json["navigationEndpoint"] == null
          ? null
          : MusicTwoRowItemRendererNavigationEndpoint.fromJson(
              json["navigationEndpoint"]),
      trackingParams: json["trackingParams"],
      menu: json["menu"] == null
          ? null
          : MusicTwoRowItemRendererMenu.fromJson(json["menu"]),
      thumbnailOverlay: json["thumbnailOverlay"] == null
          ? null
          : ThumbnailOverlay.fromJson(json["thumbnailOverlay"]),
    );
  }
}

class MusicTwoRowItemRendererMenu {
  MusicTwoRowItemRendererMenu({
    required this.menuRenderer,
  });

  final FluffyMenuRenderer? menuRenderer;

  factory MusicTwoRowItemRendererMenu.fromJson(Map<String, dynamic> json) {
    return MusicTwoRowItemRendererMenu(
      menuRenderer: json["menuRenderer"] == null
          ? null
          : FluffyMenuRenderer.fromJson(json["menuRenderer"]),
    );
  }
}

class FluffyMenuRenderer {
  FluffyMenuRenderer({
    required this.items,
    required this.trackingParams,
    required this.accessibility,
  });

  final List<FluffyItem> items;
  final String? trackingParams;
  final Accessibility? accessibility;

  factory FluffyMenuRenderer.fromJson(Map<String, dynamic> json) {
    return FluffyMenuRenderer(
      items: json["items"] == null
          ? []
          : List<FluffyItem>.from(
              json["items"]!.map((x) => FluffyItem.fromJson(x))),
      trackingParams: json["trackingParams"],
      accessibility: json["accessibility"] == null
          ? null
          : Accessibility.fromJson(json["accessibility"]),
    );
  }
}

class FluffyItem {
  FluffyItem({
    required this.menuNavigationItemRenderer,
    required this.menuServiceItemRenderer,
    required this.toggleMenuServiceItemRenderer,
  });

  final MenuItemRenderer? menuNavigationItemRenderer;
  final MenuItemRenderer? menuServiceItemRenderer;
  final FluffyToggleMenuServiceItemRenderer? toggleMenuServiceItemRenderer;

  factory FluffyItem.fromJson(Map<String, dynamic> json) {
    return FluffyItem(
      menuNavigationItemRenderer: json["menuNavigationItemRenderer"] == null
          ? null
          : MenuItemRenderer.fromJson(json["menuNavigationItemRenderer"]),
      menuServiceItemRenderer: json["menuServiceItemRenderer"] == null
          ? null
          : MenuItemRenderer.fromJson(json["menuServiceItemRenderer"]),
      toggleMenuServiceItemRenderer:
          json["toggleMenuServiceItemRenderer"] == null
              ? null
              : FluffyToggleMenuServiceItemRenderer.fromJson(
                  json["toggleMenuServiceItemRenderer"]),
    );
  }
}

class FluffyToggleMenuServiceItemRenderer {
  FluffyToggleMenuServiceItemRenderer({
    required this.defaultText,
    required this.defaultIcon,
    required this.defaultServiceEndpoint,
    required this.toggledText,
    required this.toggledIcon,
    required this.toggledServiceEndpoint,
    required this.trackingParams,
  });

  final PrimaryText? defaultText;
  final Icon? defaultIcon;
  final DefaultServiceEndpointClass? defaultServiceEndpoint;
  final PrimaryText? toggledText;
  final Icon? toggledIcon;
  final FluffyToggledServiceEndpoint? toggledServiceEndpoint;
  final String? trackingParams;

  factory FluffyToggleMenuServiceItemRenderer.fromJson(
      Map<String, dynamic> json) {
    return FluffyToggleMenuServiceItemRenderer(
      defaultText: json["defaultText"] == null
          ? null
          : PrimaryText.fromJson(json["defaultText"]),
      defaultIcon: json["defaultIcon"] == null
          ? null
          : Icon.fromJson(json["defaultIcon"]),
      defaultServiceEndpoint: json["defaultServiceEndpoint"] == null
          ? null
          : DefaultServiceEndpointClass.fromJson(
              json["defaultServiceEndpoint"]),
      toggledText: json["toggledText"] == null
          ? null
          : PrimaryText.fromJson(json["toggledText"]),
      toggledIcon: json["toggledIcon"] == null
          ? null
          : Icon.fromJson(json["toggledIcon"]),
      toggledServiceEndpoint: json["toggledServiceEndpoint"] == null
          ? null
          : FluffyToggledServiceEndpoint.fromJson(
              json["toggledServiceEndpoint"]),
      trackingParams: json["trackingParams"],
    );
  }
}

class FluffyToggledServiceEndpoint {
  FluffyToggledServiceEndpoint({
    required this.clickTrackingParams,
    required this.likeEndpoint,
  });

  final String? clickTrackingParams;
  final LikeEndpoint? likeEndpoint;

  factory FluffyToggledServiceEndpoint.fromJson(Map<String, dynamic> json) {
    return FluffyToggledServiceEndpoint(
      clickTrackingParams: json["clickTrackingParams"],
      likeEndpoint: json["likeEndpoint"] == null
          ? null
          : LikeEndpoint.fromJson(json["likeEndpoint"]),
    );
  }
}

class LikeEndpoint {
  LikeEndpoint({
    required this.status,
    required this.target,
  });

  final String? status;
  final Target? target;

  factory LikeEndpoint.fromJson(Map<String, dynamic> json) {
    return LikeEndpoint(
      status: json["status"],
      target: json["target"] == null ? null : Target.fromJson(json["target"]),
    );
  }
}

class Target {
  Target({
    required this.playlistId,
  });

  final String? playlistId;

  factory Target.fromJson(Map<String, dynamic> json) {
    return Target(
      playlistId: json["playlistId"],
    );
  }
}

class MusicTwoRowItemRendererNavigationEndpoint {
  MusicTwoRowItemRendererNavigationEndpoint({
    required this.clickTrackingParams,
    required this.browseEndpoint,
  });

  final String? clickTrackingParams;
  final PurpleBrowseEndpoint? browseEndpoint;

  factory MusicTwoRowItemRendererNavigationEndpoint.fromJson(
      Map<String, dynamic> json) {
    return MusicTwoRowItemRendererNavigationEndpoint(
      clickTrackingParams: json["clickTrackingParams"],
      browseEndpoint: json["browseEndpoint"] == null
          ? null
          : PurpleBrowseEndpoint.fromJson(json["browseEndpoint"]),
    );
  }
}

class ThumbnailOverlay {
  ThumbnailOverlay({
    required this.musicItemThumbnailOverlayRenderer,
  });

  final ThumbnailOverlayMusicItemThumbnailOverlayRenderer?
      musicItemThumbnailOverlayRenderer;

  factory ThumbnailOverlay.fromJson(Map<String, dynamic> json) {
    return ThumbnailOverlay(
      musicItemThumbnailOverlayRenderer:
          json["musicItemThumbnailOverlayRenderer"] == null
              ? null
              : ThumbnailOverlayMusicItemThumbnailOverlayRenderer.fromJson(
                  json["musicItemThumbnailOverlayRenderer"]),
    );
  }
}

class ThumbnailOverlayMusicItemThumbnailOverlayRenderer {
  ThumbnailOverlayMusicItemThumbnailOverlayRenderer({
    required this.background,
    required this.content,
    required this.contentPosition,
    required this.displayStyle,
  });

  final MusicItemThumbnailOverlayRendererBackground? background;
  final FluffyContent? content;
  final String? contentPosition;
  final String? displayStyle;

  factory ThumbnailOverlayMusicItemThumbnailOverlayRenderer.fromJson(
      Map<String, dynamic> json) {
    return ThumbnailOverlayMusicItemThumbnailOverlayRenderer(
      background: json["background"] == null
          ? null
          : MusicItemThumbnailOverlayRendererBackground.fromJson(
              json["background"]),
      content: json["content"] == null
          ? null
          : FluffyContent.fromJson(json["content"]),
      contentPosition: json["contentPosition"],
      displayStyle: json["displayStyle"],
    );
  }
}

class FluffyContent {
  FluffyContent({
    required this.musicPlayButtonRenderer,
  });

  final FluffyMusicPlayButtonRenderer? musicPlayButtonRenderer;

  factory FluffyContent.fromJson(Map<String, dynamic> json) {
    return FluffyContent(
      musicPlayButtonRenderer: json["musicPlayButtonRenderer"] == null
          ? null
          : FluffyMusicPlayButtonRenderer.fromJson(
              json["musicPlayButtonRenderer"]),
    );
  }
}

class FluffyMusicPlayButtonRenderer {
  FluffyMusicPlayButtonRenderer({
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
  final double? activeScaleFactor;
  final String? buttonSize;
  final String? rippleTarget;
  final Accessibility? accessibilityPlayData;
  final Accessibility? accessibilityPauseData;

  factory FluffyMusicPlayButtonRenderer.fromJson(Map<String, dynamic> json) {
    return FluffyMusicPlayButtonRenderer(
      playNavigationEndpoint: json["playNavigationEndpoint"] == null
          ? null
          : FluffyPlayNavigationEndpoint.fromJson(
              json["playNavigationEndpoint"]),
      trackingParams: json["trackingParams"],
      playIcon:
          json["playIcon"] == null ? null : Icon.fromJson(json["playIcon"]),
      pauseIcon:
          json["pauseIcon"] == null ? null : Icon.fromJson(json["pauseIcon"]),
      iconColor: json["iconColor"],
      backgroundColor: json["backgroundColor"],
      activeBackgroundColor: json["activeBackgroundColor"],
      loadingIndicatorColor: json["loadingIndicatorColor"],
      playingIcon: json["playingIcon"] == null
          ? null
          : Icon.fromJson(json["playingIcon"]),
      iconLoadingColor: json["iconLoadingColor"],
      activeScaleFactor: json["activeScaleFactor"],
      buttonSize: json["buttonSize"],
      rippleTarget: json["rippleTarget"],
      accessibilityPlayData: json["accessibilityPlayData"] == null
          ? null
          : Accessibility.fromJson(json["accessibilityPlayData"]),
      accessibilityPauseData: json["accessibilityPauseData"] == null
          ? null
          : Accessibility.fromJson(json["accessibilityPauseData"]),
    );
  }
}

class FluffyPlayNavigationEndpoint {
  FluffyPlayNavigationEndpoint({
    required this.clickTrackingParams,
    required this.watchPlaylistEndpoint,
  });

  final String? clickTrackingParams;
  final WatchPlaylistEndpoint? watchPlaylistEndpoint;

  factory FluffyPlayNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return FluffyPlayNavigationEndpoint(
      clickTrackingParams: json["clickTrackingParams"],
      watchPlaylistEndpoint: json["watchPlaylistEndpoint"] == null
          ? null
          : WatchPlaylistEndpoint.fromJson(json["watchPlaylistEndpoint"]),
    );
  }
}

class Title {
  Title({
    required this.runs,
  });

  final List<FluffyRun> runs;

  factory Title.fromJson(Map<String, dynamic> json) {
    return Title(
      runs: json["runs"] == null
          ? []
          : List<FluffyRun>.from(
              json["runs"]!.map((x) => FluffyRun.fromJson(x))),
    );
  }
}

class FluffyRun {
  FluffyRun({
    required this.text,
    required this.navigationEndpoint,
  });

  final String? text;
  final MusicTwoRowItemRendererNavigationEndpoint? navigationEndpoint;

  factory FluffyRun.fromJson(Map<String, dynamic> json) {
    return FluffyRun(
      text: json["text"],
      navigationEndpoint: json["navigationEndpoint"] == null
          ? null
          : MusicTwoRowItemRendererNavigationEndpoint.fromJson(
              json["navigationEndpoint"]),
    );
  }
}

class MusicCarouselShelfRendererHeader {
  MusicCarouselShelfRendererHeader({
    required this.musicCarouselShelfBasicHeaderRenderer,
  });

  final MusicCarouselShelfBasicHeaderRenderer?
      musicCarouselShelfBasicHeaderRenderer;

  factory MusicCarouselShelfRendererHeader.fromJson(Map<String, dynamic> json) {
    return MusicCarouselShelfRendererHeader(
      musicCarouselShelfBasicHeaderRenderer:
          json["musicCarouselShelfBasicHeaderRenderer"] == null
              ? null
              : MusicCarouselShelfBasicHeaderRenderer.fromJson(
                  json["musicCarouselShelfBasicHeaderRenderer"]),
    );
  }
}

class MusicCarouselShelfBasicHeaderRenderer {
  MusicCarouselShelfBasicHeaderRenderer({
    required this.title,
    required this.accessibilityData,
    required this.headerStyle,
    required this.moreContentButton,
    required this.trackingParams,
    required this.strapline,
  });

  final PrimaryText? title;
  final Accessibility? accessibilityData;
  final String? headerStyle;
  final MoreContentButton? moreContentButton;
  final String? trackingParams;
  final PrimaryText? strapline;

  factory MusicCarouselShelfBasicHeaderRenderer.fromJson(
      Map<String, dynamic> json) {
    return MusicCarouselShelfBasicHeaderRenderer(
      title: json["title"] == null ? null : PrimaryText.fromJson(json["title"]),
      accessibilityData: json["accessibilityData"] == null
          ? null
          : Accessibility.fromJson(json["accessibilityData"]),
      headerStyle: json["headerStyle"],
      moreContentButton: json["moreContentButton"] == null
          ? null
          : MoreContentButton.fromJson(json["moreContentButton"]),
      trackingParams: json["trackingParams"],
      strapline: json["strapline"] == null
          ? null
          : PrimaryText.fromJson(json["strapline"]),
    );
  }
}

class MoreContentButton {
  MoreContentButton({
    required this.buttonRenderer,
  });

  final MoreContentButtonButtonRenderer? buttonRenderer;

  factory MoreContentButton.fromJson(Map<String, dynamic> json) {
    return MoreContentButton(
      buttonRenderer: json["buttonRenderer"] == null
          ? null
          : MoreContentButtonButtonRenderer.fromJson(json["buttonRenderer"]),
    );
  }
}

class MoreContentButtonButtonRenderer {
  MoreContentButtonButtonRenderer({
    required this.style,
    required this.text,
    required this.navigationEndpoint,
    required this.trackingParams,
    required this.accessibilityData,
  });

  final String? style;
  final PrimaryText? text;
  final TentacledNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;
  final Accessibility? accessibilityData;

  factory MoreContentButtonButtonRenderer.fromJson(Map<String, dynamic> json) {
    return MoreContentButtonButtonRenderer(
      style: json["style"],
      text: json["text"] == null ? null : PrimaryText.fromJson(json["text"]),
      navigationEndpoint: json["navigationEndpoint"] == null
          ? null
          : TentacledNavigationEndpoint.fromJson(json["navigationEndpoint"]),
      trackingParams: json["trackingParams"],
      accessibilityData: json["accessibilityData"] == null
          ? null
          : Accessibility.fromJson(json["accessibilityData"]),
    );
  }
}

class TentacledNavigationEndpoint {
  TentacledNavigationEndpoint({
    required this.clickTrackingParams,
    required this.watchEndpoint,
  });

  final String? clickTrackingParams;
  final PurpleWatchEndpoint? watchEndpoint;

  factory TentacledNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return TentacledNavigationEndpoint(
      clickTrackingParams: json["clickTrackingParams"],
      watchEndpoint: json["watchEndpoint"] == null
          ? null
          : PurpleWatchEndpoint.fromJson(json["watchEndpoint"]),
    );
  }
}

class PurpleWatchEndpoint {
  PurpleWatchEndpoint({
    required this.videoId,
    required this.params,
  });

  final String? videoId;
  final String? params;

  factory PurpleWatchEndpoint.fromJson(Map<String, dynamic> json) {
    return PurpleWatchEndpoint(
      videoId: json["videoId"],
      params: json["params"],
    );
  }
}

class MusicTastebuilderShelfRenderer {
  MusicTastebuilderShelfRenderer({
    required this.thumbnail,
    required this.primaryText,
    required this.secondaryText,
    required this.actionButton,
    required this.isVisible,
    required this.trackingParams,
  });

  final MusicTastebuilderShelfRendererThumbnail? thumbnail;
  final PrimaryText? primaryText;
  final PrimaryText? secondaryText;
  final ActionButton? actionButton;
  final bool? isVisible;
  final String? trackingParams;

  factory MusicTastebuilderShelfRenderer.fromJson(Map<String, dynamic> json) {
    return MusicTastebuilderShelfRenderer(
      thumbnail: json["thumbnail"] == null
          ? null
          : MusicTastebuilderShelfRendererThumbnail.fromJson(json["thumbnail"]),
      primaryText: json["primaryText"] == null
          ? null
          : PrimaryText.fromJson(json["primaryText"]),
      secondaryText: json["secondaryText"] == null
          ? null
          : PrimaryText.fromJson(json["secondaryText"]),
      actionButton: json["actionButton"] == null
          ? null
          : ActionButton.fromJson(json["actionButton"]),
      isVisible: json["isVisible"],
      trackingParams: json["trackingParams"],
    );
  }
}

class ActionButton {
  ActionButton({
    required this.buttonRenderer,
  });

  final ActionButtonButtonRenderer? buttonRenderer;

  factory ActionButton.fromJson(Map<String, dynamic> json) {
    return ActionButton(
      buttonRenderer: json["buttonRenderer"] == null
          ? null
          : ActionButtonButtonRenderer.fromJson(json["buttonRenderer"]),
    );
  }
}

class ActionButtonButtonRenderer {
  ActionButtonButtonRenderer({
    required this.style,
    required this.text,
    required this.navigationEndpoint,
    required this.trackingParams,
  });

  final String? style;
  final PrimaryText? text;
  final DefaultServiceEndpointClass? navigationEndpoint;
  final String? trackingParams;

  factory ActionButtonButtonRenderer.fromJson(Map<String, dynamic> json) {
    return ActionButtonButtonRenderer(
      style: json["style"],
      text: json["text"] == null ? null : PrimaryText.fromJson(json["text"]),
      navigationEndpoint: json["navigationEndpoint"] == null
          ? null
          : DefaultServiceEndpointClass.fromJson(json["navigationEndpoint"]),
      trackingParams: json["trackingParams"],
    );
  }
}

class MusicTastebuilderShelfRendererThumbnail {
  MusicTastebuilderShelfRendererThumbnail({
    required this.musicTastebuilderShelfThumbnailRenderer,
  });

  final MusicTastebuilderShelfThumbnailRenderer?
      musicTastebuilderShelfThumbnailRenderer;

  factory MusicTastebuilderShelfRendererThumbnail.fromJson(
      Map<String, dynamic> json) {
    return MusicTastebuilderShelfRendererThumbnail(
      musicTastebuilderShelfThumbnailRenderer:
          json["musicTastebuilderShelfThumbnailRenderer"] == null
              ? null
              : MusicTastebuilderShelfThumbnailRenderer.fromJson(
                  json["musicTastebuilderShelfThumbnailRenderer"]),
    );
  }
}

class MusicTastebuilderShelfThumbnailRenderer {
  MusicTastebuilderShelfThumbnailRenderer({
    required this.thumbnail,
  });

  final MusicThumbnailRendererThumbnail? thumbnail;

  factory MusicTastebuilderShelfThumbnailRenderer.fromJson(
      Map<String, dynamic> json) {
    return MusicTastebuilderShelfThumbnailRenderer(
      thumbnail: json["thumbnail"] == null
          ? null
          : MusicThumbnailRendererThumbnail.fromJson(json["thumbnail"]),
    );
  }
}

class Continuation {
  Continuation({
    required this.nextContinuationData,
  });

  final NextContinuationData? nextContinuationData;

  factory Continuation.fromJson(Map<String, dynamic> json) {
    return Continuation(
      nextContinuationData: json["nextContinuationData"] == null
          ? null
          : NextContinuationData.fromJson(json["nextContinuationData"]),
    );
  }
}

class NextContinuationData {
  NextContinuationData({
    required this.continuation,
    required this.clickTrackingParams,
  });

  final String? continuation;
  final String? clickTrackingParams;

  factory NextContinuationData.fromJson(Map<String, dynamic> json) {
    return NextContinuationData(
      continuation: json["continuation"],
      clickTrackingParams: json["clickTrackingParams"],
    );
  }
}

class SectionListRendererHeader {
  SectionListRendererHeader({
    required this.chipCloudRenderer,
  });

  final ChipCloudRenderer? chipCloudRenderer;

  factory SectionListRendererHeader.fromJson(Map<String, dynamic> json) {
    return SectionListRendererHeader(
      chipCloudRenderer: json["chipCloudRenderer"] == null
          ? null
          : ChipCloudRenderer.fromJson(json["chipCloudRenderer"]),
    );
  }
}

class ChipCloudRenderer {
  ChipCloudRenderer({
    required this.chips,
    required this.trackingParams,
    required this.horizontalScrollable,
  });

  final List<Chip> chips;
  final String? trackingParams;
  final bool? horizontalScrollable;

  factory ChipCloudRenderer.fromJson(Map<String, dynamic> json) {
    return ChipCloudRenderer(
      chips: json["chips"] == null
          ? []
          : List<Chip>.from(json["chips"]!.map((x) => Chip.fromJson(x))),
      trackingParams: json["trackingParams"],
      horizontalScrollable: json["horizontalScrollable"],
    );
  }
}

class Chip {
  Chip({
    required this.chipCloudChipRenderer,
  });

  final ChipCloudChipRenderer? chipCloudChipRenderer;

  factory Chip.fromJson(Map<String, dynamic> json) {
    return Chip(
      chipCloudChipRenderer: json["chipCloudChipRenderer"] == null
          ? null
          : ChipCloudChipRenderer.fromJson(json["chipCloudChipRenderer"]),
    );
  }
}

class ChipCloudChipRenderer {
  ChipCloudChipRenderer({
    required this.style,
    required this.text,
    required this.navigationEndpoint,
    required this.trackingParams,
    required this.isSelected,
    required this.onDeselectedCommand,
  });

  final Style? style;
  final PrimaryText? text;
  final OnDeselectedCommandClass? navigationEndpoint;
  final String? trackingParams;
  final bool? isSelected;
  final OnDeselectedCommandClass? onDeselectedCommand;

  factory ChipCloudChipRenderer.fromJson(Map<String, dynamic> json) {
    return ChipCloudChipRenderer(
      style: json["style"] == null ? null : Style.fromJson(json["style"]),
      text: json["text"] == null ? null : PrimaryText.fromJson(json["text"]),
      navigationEndpoint: json["navigationEndpoint"] == null
          ? null
          : OnDeselectedCommandClass.fromJson(json["navigationEndpoint"]),
      trackingParams: json["trackingParams"],
      isSelected: json["isSelected"],
      onDeselectedCommand: json["onDeselectedCommand"] == null
          ? null
          : OnDeselectedCommandClass.fromJson(json["onDeselectedCommand"]),
    );
  }
}

class OnDeselectedCommandClass {
  OnDeselectedCommandClass({
    required this.clickTrackingParams,
    required this.browseEndpoint,
  });

  final String? clickTrackingParams;
  final OnDeselectedCommandBrowseEndpoint? browseEndpoint;

  factory OnDeselectedCommandClass.fromJson(Map<String, dynamic> json) {
    return OnDeselectedCommandClass(
      clickTrackingParams: json["clickTrackingParams"],
      browseEndpoint: json["browseEndpoint"] == null
          ? null
          : OnDeselectedCommandBrowseEndpoint.fromJson(json["browseEndpoint"]),
    );
  }
}

class OnDeselectedCommandBrowseEndpoint {
  OnDeselectedCommandBrowseEndpoint({
    required this.browseId,
    required this.params,
  });

  final String? browseId;
  final String? params;

  factory OnDeselectedCommandBrowseEndpoint.fromJson(
      Map<String, dynamic> json) {
    return OnDeselectedCommandBrowseEndpoint(
      browseId: json["browseId"],
      params: json["params"],
    );
  }
}

class Style {
  Style({
    required this.styleType,
  });

  final String? styleType;

  factory Style.fromJson(Map<String, dynamic> json) {
    return Style(
      styleType: json["styleType"],
    );
  }
}

class Endpoint {
  Endpoint({
    required this.clickTrackingParams,
    required this.browseEndpoint,
  });

  final String? clickTrackingParams;
  final EndpointBrowseEndpoint? browseEndpoint;

  factory Endpoint.fromJson(Map<String, dynamic> json) {
    return Endpoint(
      clickTrackingParams: json["clickTrackingParams"],
      browseEndpoint: json["browseEndpoint"] == null
          ? null
          : EndpointBrowseEndpoint.fromJson(json["browseEndpoint"]),
    );
  }
}

class EndpointBrowseEndpoint {
  EndpointBrowseEndpoint({
    required this.browseId,
  });

  final String? browseId;

  factory EndpointBrowseEndpoint.fromJson(Map<String, dynamic> json) {
    return EndpointBrowseEndpoint(
      browseId: json["browseId"],
    );
  }
}

class ResponseContext {
  ResponseContext({
    required this.visitorData,
    required this.serviceTrackingParams,
    required this.maxAgeSeconds,
  });

  final String? visitorData;
  final List<ServiceTrackingParam> serviceTrackingParams;
  final int? maxAgeSeconds;

  factory ResponseContext.fromJson(Map<String, dynamic> json) {
    return ResponseContext(
      visitorData: json["visitorData"],
      serviceTrackingParams: json["serviceTrackingParams"] == null
          ? []
          : List<ServiceTrackingParam>.from(json["serviceTrackingParams"]!
              .map((x) => ServiceTrackingParam.fromJson(x))),
      maxAgeSeconds: json["maxAgeSeconds"],
    );
  }
}

class ServiceTrackingParam {
  ServiceTrackingParam({
    required this.service,
    required this.params,
  });

  final String? service;
  final List<Param> params;

  factory ServiceTrackingParam.fromJson(Map<String, dynamic> json) {
    return ServiceTrackingParam(
      service: json["service"],
      params: json["params"] == null
          ? []
          : List<Param>.from(json["params"]!.map((x) => Param.fromJson(x))),
    );
  }
}

class Param {
  Param({
    required this.key,
    required this.value,
  });

  final String? key;
  final String? value;

  factory Param.fromJson(Map<String, dynamic> json) {
    return Param(
      key: json["key"],
      value: json["value"],
    );
  }
}
