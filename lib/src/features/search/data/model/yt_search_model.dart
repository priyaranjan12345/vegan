import 'package:equatable/equatable.dart';

class YtSearchModel extends Equatable {
  const YtSearchModel({
    required this.responseContext,
    required this.contents,
    required this.trackingParams,
  });

  final ResponseContext? responseContext;
  final List<YtSearchModelContent> contents;
  final String? trackingParams;

  factory YtSearchModel.fromJson(Map<String, dynamic> json) {
    return YtSearchModel(
      responseContext: json['responseContext'] == null
          ? null
          : ResponseContext.fromJson(json['responseContext']),
      contents: json['contents'] == null
          ? []
          : List<YtSearchModelContent>.from(
              json['contents']!.map((x) => YtSearchModelContent.fromJson(x)),
            ),
      trackingParams: json['trackingParams'],
    );
  }

  @override
  List<Object?> get props => [
    responseContext,
    contents,
    trackingParams,
  ];
}

class YtSearchModelContent extends Equatable {
  const YtSearchModelContent({
    required this.searchSuggestionsSectionRenderer,
  });

  final SearchSuggestionsSectionRenderer? searchSuggestionsSectionRenderer;

  factory YtSearchModelContent.fromJson(Map<String, dynamic> json) {
    return YtSearchModelContent(
      searchSuggestionsSectionRenderer:
          json['searchSuggestionsSectionRenderer'] == null
          ? null
          : SearchSuggestionsSectionRenderer.fromJson(
              json['searchSuggestionsSectionRenderer'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    searchSuggestionsSectionRenderer,
  ];
}

class SearchSuggestionsSectionRenderer extends Equatable {
  const SearchSuggestionsSectionRenderer({
    required this.contents,
  });

  final List<SearchSuggestionsSectionRendererContent> contents;

  factory SearchSuggestionsSectionRenderer.fromJson(Map<String, dynamic> json) {
    return SearchSuggestionsSectionRenderer(
      contents: json['contents'] == null
          ? []
          : List<SearchSuggestionsSectionRendererContent>.from(
              json['contents']!.map(
                (x) => SearchSuggestionsSectionRendererContent.fromJson(x),
              ),
            ),
    );
  }

  @override
  List<Object?> get props => [
    contents,
  ];
}

class SearchSuggestionsSectionRendererContent extends Equatable {
  const SearchSuggestionsSectionRendererContent({
    required this.searchSuggestionRenderer,
    required this.musicResponsiveListItemRenderer,
  });

  final SearchSuggestionRenderer? searchSuggestionRenderer;
  final MusicResponsiveListItemRenderer? musicResponsiveListItemRenderer;

  factory SearchSuggestionsSectionRendererContent.fromJson(
    Map<String, dynamic> json,
  ) {
    return SearchSuggestionsSectionRendererContent(
      searchSuggestionRenderer: json['searchSuggestionRenderer'] == null
          ? null
          : SearchSuggestionRenderer.fromJson(json['searchSuggestionRenderer']),
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
    searchSuggestionRenderer,
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
    required this.flexColumnDisplayStyle,
    required this.navigationEndpoint,
  });

  final String? trackingParams;
  final MusicResponsiveListItemRendererThumbnail? thumbnail;
  final Overlay? overlay;
  final List<FlexColumn> flexColumns;
  final Menu? menu;
  final PlaylistItemData? playlistItemData;
  final String? flexColumnDisplayStyle;
  final RunNavigationEndpoint? navigationEndpoint;

  factory MusicResponsiveListItemRenderer.fromJson(Map<String, dynamic> json) {
    return MusicResponsiveListItemRenderer(
      trackingParams: json['trackingParams'],
      thumbnail: json['thumbnail'] == null
          ? null
          : MusicResponsiveListItemRendererThumbnail.fromJson(
              json['thumbnail'],
            ),
      overlay: json['overlay'] == null
          ? null
          : Overlay.fromJson(json['overlay']),
      flexColumns: json['flexColumns'] == null
          ? []
          : List<FlexColumn>.from(
              json['flexColumns']!.map((x) => FlexColumn.fromJson(x)),
            ),
      menu: json['menu'] == null ? null : Menu.fromJson(json['menu']),
      playlistItemData: json['playlistItemData'] == null
          ? null
          : PlaylistItemData.fromJson(json['playlistItemData']),
      flexColumnDisplayStyle: json['flexColumnDisplayStyle'],
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : RunNavigationEndpoint.fromJson(json['navigationEndpoint']),
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
    navigationEndpoint,
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
  final RunNavigationEndpoint? navigationEndpoint;

  factory PurpleRun.fromJson(Map<String, dynamic> json) {
    return PurpleRun(
      text: json['text'],
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : RunNavigationEndpoint.fromJson(json['navigationEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    text,
    navigationEndpoint,
  ];
}

class RunNavigationEndpoint extends Equatable {
  const RunNavigationEndpoint({
    required this.clickTrackingParams,
    required this.watchEndpoint,
    required this.browseEndpoint,
  });

  final String? clickTrackingParams;
  final PlayNavigationEndpointWatchEndpoint? watchEndpoint;
  final BrowseEndpoint? browseEndpoint;

  factory RunNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return RunNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      watchEndpoint: json['watchEndpoint'] == null
          ? null
          : PlayNavigationEndpointWatchEndpoint.fromJson(json['watchEndpoint']),
      browseEndpoint: json['browseEndpoint'] == null
          ? null
          : BrowseEndpoint.fromJson(json['browseEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    watchEndpoint,
    browseEndpoint,
  ];
}

class BrowseEndpoint extends Equatable {
  const BrowseEndpoint({
    required this.browseId,
    required this.browseEndpointContextSupportedConfigs,
  });

  final String? browseId;
  final BrowseEndpointContextSupportedConfigs?
  browseEndpointContextSupportedConfigs;

  factory BrowseEndpoint.fromJson(Map<String, dynamic> json) {
    return BrowseEndpoint(
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

class PlayNavigationEndpointWatchEndpoint extends Equatable {
  const PlayNavigationEndpointWatchEndpoint({
    required this.videoId,
    required this.watchEndpointMusicSupportedConfigs,
  });

  final String? videoId;
  final WatchEndpointMusicSupportedConfigs? watchEndpointMusicSupportedConfigs;

  factory PlayNavigationEndpointWatchEndpoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return PlayNavigationEndpointWatchEndpoint(
      videoId: json['videoId'],
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
    watchEndpointMusicSupportedConfigs,
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

class Menu extends Equatable {
  const Menu({
    required this.menuRenderer,
  });

  final MenuRenderer? menuRenderer;

  factory Menu.fromJson(Map<String, dynamic> json) {
    return Menu(
      menuRenderer: json['menuRenderer'] == null
          ? null
          : MenuRenderer.fromJson(json['menuRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    menuRenderer,
  ];
}

class MenuRenderer extends Equatable {
  const MenuRenderer({
    required this.items,
    required this.trackingParams,
    required this.topLevelButtons,
    required this.accessibility,
  });

  final List<ItemElement> items;
  final String? trackingParams;
  final List<TopLevelButton> topLevelButtons;
  final Accessibility? accessibility;

  factory MenuRenderer.fromJson(Map<String, dynamic> json) {
    return MenuRenderer(
      items: json['items'] == null
          ? []
          : List<ItemElement>.from(
              json['items']!.map((x) => ItemElement.fromJson(x)),
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

class ItemElement extends Equatable {
  const ItemElement({
    required this.menuNavigationItemRenderer,
    required this.menuServiceItemRenderer,
    required this.toggleMenuServiceItemRenderer,
  });

  final MenuItemRenderer? menuNavigationItemRenderer;
  final MenuItemRenderer? menuServiceItemRenderer;
  final ToggleMenuServiceItemRenderer? toggleMenuServiceItemRenderer;

  factory ItemElement.fromJson(Map<String, dynamic> json) {
    return ItemElement(
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

  final Suggestion? text;
  final Icon? icon;
  final MenuNavigationItemRendererNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;
  final ServiceEndpoint? serviceEndpoint;

  factory MenuItemRenderer.fromJson(Map<String, dynamic> json) {
    return MenuItemRenderer(
      text: json['text'] == null ? null : Suggestion.fromJson(json['text']),
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
    required this.watchEndpoint,
    required this.modalEndpoint,
    required this.browseEndpoint,
    required this.shareEntityEndpoint,
    required this.watchPlaylistEndpoint,
  });

  final String? clickTrackingParams;
  final PurpleWatchEndpoint? watchEndpoint;
  final ModalEndpoint? modalEndpoint;
  final BrowseEndpoint? browseEndpoint;
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
          : BrowseEndpoint.fromJson(json['browseEndpoint']),
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

  final Suggestion? title;
  final Suggestion? content;
  final Button? button;

  factory ModalWithTitleAndButtonRenderer.fromJson(Map<String, dynamic> json) {
    return ModalWithTitleAndButtonRenderer(
      title: json['title'] == null ? null : Suggestion.fromJson(json['title']),
      content: json['content'] == null
          ? null
          : Suggestion.fromJson(json['content']),
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

  final ButtonRenderer? buttonRenderer;

  factory Button.fromJson(Map<String, dynamic> json) {
    return Button(
      buttonRenderer: json['buttonRenderer'] == null
          ? null
          : ButtonRenderer.fromJson(json['buttonRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    buttonRenderer,
  ];
}

class ButtonRenderer extends Equatable {
  const ButtonRenderer({
    required this.style,
    required this.isDisabled,
    required this.text,
    required this.navigationEndpoint,
    required this.trackingParams,
  });

  final String? style;
  final bool? isDisabled;
  final Suggestion? text;
  final ButtonRendererNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;

  factory ButtonRenderer.fromJson(Map<String, dynamic> json) {
    return ButtonRenderer(
      style: json['style'],
      isDisabled: json['isDisabled'],
      text: json['text'] == null ? null : Suggestion.fromJson(json['text']),
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : ButtonRendererNavigationEndpoint.fromJson(
              json['navigationEndpoint'],
            ),
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

class ButtonRendererNavigationEndpoint extends Equatable {
  const ButtonRendererNavigationEndpoint({
    required this.clickTrackingParams,
    required this.signInEndpoint,
  });

  final String? clickTrackingParams;
  final SignInEndpoint? signInEndpoint;

  factory ButtonRendererNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return ButtonRendererNavigationEndpoint(
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

class Suggestion extends Equatable {
  const Suggestion({
    required this.runs,
  });

  final List<SuggestionRun> runs;

  factory Suggestion.fromJson(Map<String, dynamic> json) {
    return Suggestion(
      runs: json['runs'] == null
          ? []
          : List<SuggestionRun>.from(
              json['runs']!.map((x) => SuggestionRun.fromJson(x)),
            ),
    );
  }

  @override
  List<Object?> get props => [
    runs,
  ];
}

class SuggestionRun extends Equatable {
  const SuggestionRun({
    required this.text,
  });

  final String? text;

  factory SuggestionRun.fromJson(Map<String, dynamic> json) {
    return SuggestionRun(
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

class PurpleWatchEndpoint extends Equatable {
  const PurpleWatchEndpoint({
    required this.videoId,
    required this.playlistId,
    required this.params,
    required this.loggingContext,
    required this.watchEndpointMusicSupportedConfigs,
  });

  final String? videoId;
  final String? playlistId;
  final String? params;
  final LoggingContext? loggingContext;
  final WatchEndpointMusicSupportedConfigs? watchEndpointMusicSupportedConfigs;

  factory PurpleWatchEndpoint.fromJson(Map<String, dynamic> json) {
    return PurpleWatchEndpoint(
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
    );
  }

  @override
  List<Object?> get props => [
    videoId,
    playlistId,
    params,
    loggingContext,
    watchEndpointMusicSupportedConfigs,
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

  final Suggestion? successResponseText;
  final String? trackingParams;

  factory NotificationTextRenderer.fromJson(Map<String, dynamic> json) {
    return NotificationTextRenderer(
      successResponseText: json['successResponseText'] == null
          ? null
          : Suggestion.fromJson(json['successResponseText']),
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

  final Suggestion? defaultText;
  final Icon? defaultIcon;
  final DefaultServiceEndpoint? defaultServiceEndpoint;
  final Suggestion? toggledText;
  final Icon? toggledIcon;
  final ToggledServiceEndpoint? toggledServiceEndpoint;
  final String? trackingParams;

  factory ToggleMenuServiceItemRenderer.fromJson(Map<String, dynamic> json) {
    return ToggleMenuServiceItemRenderer(
      defaultText: json['defaultText'] == null
          ? null
          : Suggestion.fromJson(json['defaultText']),
      defaultIcon: json['defaultIcon'] == null
          ? null
          : Icon.fromJson(json['defaultIcon']),
      defaultServiceEndpoint: json['defaultServiceEndpoint'] == null
          ? null
          : DefaultServiceEndpoint.fromJson(json['defaultServiceEndpoint']),
      toggledText: json['toggledText'] == null
          ? null
          : Suggestion.fromJson(json['toggledText']),
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

class DefaultServiceEndpoint extends Equatable {
  const DefaultServiceEndpoint({
    required this.clickTrackingParams,
    required this.modalEndpoint,
  });

  final String? clickTrackingParams;
  final ModalEndpoint? modalEndpoint;

  factory DefaultServiceEndpoint.fromJson(Map<String, dynamic> json) {
    return DefaultServiceEndpoint(
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
  final DefaultServiceEndpoint? dislikeNavigationEndpoint;
  final DefaultServiceEndpoint? likeCommand;

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
          : DefaultServiceEndpoint.fromJson(json['dislikeNavigationEndpoint']),
      likeCommand: json['likeCommand'] == null
          ? null
          : DefaultServiceEndpoint.fromJson(json['likeCommand']),
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

  final MusicItemThumbnailOverlayRenderer? musicItemThumbnailOverlayRenderer;

  factory Overlay.fromJson(Map<String, dynamic> json) {
    return Overlay(
      musicItemThumbnailOverlayRenderer:
          json['musicItemThumbnailOverlayRenderer'] == null
          ? null
          : MusicItemThumbnailOverlayRenderer.fromJson(
              json['musicItemThumbnailOverlayRenderer'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    musicItemThumbnailOverlayRenderer,
  ];
}

class MusicItemThumbnailOverlayRenderer extends Equatable {
  const MusicItemThumbnailOverlayRenderer({
    required this.background,
    required this.content,
    required this.contentPosition,
    required this.displayStyle,
  });

  final Background? background;
  final MusicItemThumbnailOverlayRendererContent? content;
  final String? contentPosition;
  final String? displayStyle;

  factory MusicItemThumbnailOverlayRenderer.fromJson(
    Map<String, dynamic> json,
  ) {
    return MusicItemThumbnailOverlayRenderer(
      background: json['background'] == null
          ? null
          : Background.fromJson(json['background']),
      content: json['content'] == null
          ? null
          : MusicItemThumbnailOverlayRendererContent.fromJson(json['content']),
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

class MusicItemThumbnailOverlayRendererContent extends Equatable {
  const MusicItemThumbnailOverlayRendererContent({
    required this.musicPlayButtonRenderer,
  });

  final MusicPlayButtonRenderer? musicPlayButtonRenderer;

  factory MusicItemThumbnailOverlayRendererContent.fromJson(
    Map<String, dynamic> json,
  ) {
    return MusicItemThumbnailOverlayRendererContent(
      musicPlayButtonRenderer: json['musicPlayButtonRenderer'] == null
          ? null
          : MusicPlayButtonRenderer.fromJson(json['musicPlayButtonRenderer']),
    );
  }

  @override
  List<Object?> get props => [
    musicPlayButtonRenderer,
  ];
}

class MusicPlayButtonRenderer extends Equatable {
  const MusicPlayButtonRenderer({
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
  final int? activeScaleFactor;
  final String? buttonSize;
  final String? rippleTarget;
  final Accessibility? accessibilityPlayData;
  final Accessibility? accessibilityPauseData;

  factory MusicPlayButtonRenderer.fromJson(Map<String, dynamic> json) {
    return MusicPlayButtonRenderer(
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

class PlayNavigationEndpoint extends Equatable {
  const PlayNavigationEndpoint({
    required this.clickTrackingParams,
    required this.watchEndpoint,
  });

  final String? clickTrackingParams;
  final PlayNavigationEndpointWatchEndpoint? watchEndpoint;

  factory PlayNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return PlayNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      watchEndpoint: json['watchEndpoint'] == null
          ? null
          : PlayNavigationEndpointWatchEndpoint.fromJson(json['watchEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    watchEndpoint,
  ];
}

class MusicResponsiveListItemRendererThumbnail extends Equatable {
  const MusicResponsiveListItemRendererThumbnail({
    required this.musicThumbnailRenderer,
  });

  final MusicThumbnailRenderer? musicThumbnailRenderer;

  factory MusicResponsiveListItemRendererThumbnail.fromJson(
    Map<String, dynamic> json,
  ) {
    return MusicResponsiveListItemRendererThumbnail(
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

class SearchSuggestionRenderer extends Equatable {
  const SearchSuggestionRenderer({
    required this.suggestion,
    required this.navigationEndpoint,
    required this.trackingParams,
    required this.icon,
  });

  final Suggestion? suggestion;
  final SearchSuggestionRendererNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;
  final Icon? icon;

  factory SearchSuggestionRenderer.fromJson(Map<String, dynamic> json) {
    return SearchSuggestionRenderer(
      suggestion: json['suggestion'] == null
          ? null
          : Suggestion.fromJson(json['suggestion']),
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : SearchSuggestionRendererNavigationEndpoint.fromJson(
              json['navigationEndpoint'],
            ),
      trackingParams: json['trackingParams'],
      icon: json['icon'] == null ? null : Icon.fromJson(json['icon']),
    );
  }

  @override
  List<Object?> get props => [
    suggestion,
    navigationEndpoint,
    trackingParams,
    icon,
  ];
}

class SearchSuggestionRendererNavigationEndpoint extends Equatable {
  const SearchSuggestionRendererNavigationEndpoint({
    required this.clickTrackingParams,
    required this.searchEndpoint,
  });

  final String? clickTrackingParams;
  final SearchEndpoint? searchEndpoint;

  factory SearchSuggestionRendererNavigationEndpoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return SearchSuggestionRendererNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      searchEndpoint: json['searchEndpoint'] == null
          ? null
          : SearchEndpoint.fromJson(json['searchEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
    clickTrackingParams,
    searchEndpoint,
  ];
}

class SearchEndpoint extends Equatable {
  const SearchEndpoint({
    required this.query,
  });

  final String? query;

  factory SearchEndpoint.fromJson(Map<String, dynamic> json) {
    return SearchEndpoint(
      query: json['query'],
    );
  }

  @override
  List<Object?> get props => [
    query,
  ];
}

class ResponseContext extends Equatable {
  const ResponseContext({
    required this.visitorData,
    required this.serviceTrackingParams,
  });

  final String? visitorData;
  final List<ServiceTrackingParam> serviceTrackingParams;

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
    );
  }

  @override
  List<Object?> get props => [
    visitorData,
    serviceTrackingParams,
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
