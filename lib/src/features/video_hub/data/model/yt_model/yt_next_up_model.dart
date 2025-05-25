import 'package:equatable/equatable.dart';

class YtNextUpModel extends Equatable {
  const YtNextUpModel({
    required this.responseContext,
    required this.contents,
    required this.currentVideoEndpoint,
    required this.trackingParams,
    required this.playerOverlays,
    required this.videoReporting,
    required this.queueContextParams,
  });

  final ResponseContext? responseContext;
  final Contents? contents;
  final CurrentVideoEndpointClass? currentVideoEndpoint;
  final String? trackingParams;
  final PlayerOverlays? playerOverlays;
  final VideoReporting? videoReporting;
  final String? queueContextParams;

  factory YtNextUpModel.fromJson(Map<String, dynamic> json) {
    return YtNextUpModel(
      responseContext: json['responseContext'] == null
          ? null
          : ResponseContext.fromJson(json['responseContext']),
      contents:
          json['contents'] == null ? null : Contents.fromJson(json['contents']),
      currentVideoEndpoint: json['currentVideoEndpoint'] == null
          ? null
          : CurrentVideoEndpointClass.fromJson(json['currentVideoEndpoint']),
      trackingParams: json['trackingParams'],
      playerOverlays: json['playerOverlays'] == null
          ? null
          : PlayerOverlays.fromJson(json['playerOverlays']),
      videoReporting: json['videoReporting'] == null
          ? null
          : VideoReporting.fromJson(json['videoReporting']),
      queueContextParams: json['queueContextParams'],
    );
  }

  @override
  List<Object?> get props => [
        responseContext,
        contents,
        currentVideoEndpoint,
        trackingParams,
        playerOverlays,
        videoReporting,
        queueContextParams,
      ];
}

class Contents extends Equatable {
  const Contents({
    required this.singleColumnMusicWatchNextResultsRenderer,
  });

  final SingleColumnMusicWatchNextResultsRenderer?
      singleColumnMusicWatchNextResultsRenderer;

  factory Contents.fromJson(Map<String, dynamic> json) {
    return Contents(
      singleColumnMusicWatchNextResultsRenderer:
          json['singleColumnMusicWatchNextResultsRenderer'] == null
              ? null
              : SingleColumnMusicWatchNextResultsRenderer.fromJson(
                  json['singleColumnMusicWatchNextResultsRenderer']),
    );
  }

  @override
  List<Object?> get props => [
        singleColumnMusicWatchNextResultsRenderer,
      ];
}

class SingleColumnMusicWatchNextResultsRenderer extends Equatable {
  const SingleColumnMusicWatchNextResultsRenderer({
    required this.tabbedRenderer,
  });

  final TabbedRenderer? tabbedRenderer;

  factory SingleColumnMusicWatchNextResultsRenderer.fromJson(
      Map<String, dynamic> json) {
    return SingleColumnMusicWatchNextResultsRenderer(
      tabbedRenderer: json['tabbedRenderer'] == null
          ? null
          : TabbedRenderer.fromJson(json['tabbedRenderer']),
    );
  }

  @override
  List<Object?> get props => [
        tabbedRenderer,
      ];
}

class TabbedRenderer extends Equatable {
  const TabbedRenderer({
    required this.watchNextTabbedResultsRenderer,
  });

  final WatchNextTabbedResultsRenderer? watchNextTabbedResultsRenderer;

  factory TabbedRenderer.fromJson(Map<String, dynamic> json) {
    return TabbedRenderer(
      watchNextTabbedResultsRenderer:
          json['watchNextTabbedResultsRenderer'] == null
              ? null
              : WatchNextTabbedResultsRenderer.fromJson(
                  json['watchNextTabbedResultsRenderer']),
    );
  }

  @override
  List<Object?> get props => [
        watchNextTabbedResultsRenderer,
      ];
}

class WatchNextTabbedResultsRenderer extends Equatable {
  const WatchNextTabbedResultsRenderer({
    required this.tabs,
  });

  final List<Tab> tabs;

  factory WatchNextTabbedResultsRenderer.fromJson(Map<String, dynamic> json) {
    return WatchNextTabbedResultsRenderer(
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
    required this.endpoint,
  });

  final String? title;
  final TabRendererContent? content;
  final String? trackingParams;
  final Endpoint? endpoint;

  factory TabRenderer.fromJson(Map<String, dynamic> json) {
    return TabRenderer(
      title: json['title'],
      content: json['content'] == null
          ? null
          : TabRendererContent.fromJson(json['content']),
      trackingParams: json['trackingParams'],
      endpoint:
          json['endpoint'] == null ? null : Endpoint.fromJson(json['endpoint']),
    );
  }

  @override
  List<Object?> get props => [
        title,
        content,
        trackingParams,
        endpoint,
      ];
}

class TabRendererContent extends Equatable {
  const TabRendererContent({
    required this.musicQueueRenderer,
  });

  final MusicQueueRenderer? musicQueueRenderer;

  factory TabRendererContent.fromJson(Map<String, dynamic> json) {
    return TabRendererContent(
      musicQueueRenderer: json['musicQueueRenderer'] == null
          ? null
          : MusicQueueRenderer.fromJson(json['musicQueueRenderer']),
    );
  }

  @override
  List<Object?> get props => [
        musicQueueRenderer,
      ];
}

class MusicQueueRenderer extends Equatable {
  const MusicQueueRenderer({
    required this.content,
    required this.hack,
    required this.header,
    required this.subHeaderChipCloud,
  });

  final MusicQueueRendererContent? content;
  final bool? hack;
  final Header? header;
  final SubHeaderChipCloud? subHeaderChipCloud;

  factory MusicQueueRenderer.fromJson(Map<String, dynamic> json) {
    return MusicQueueRenderer(
      content: json['content'] == null
          ? null
          : MusicQueueRendererContent.fromJson(json['content']),
      hack: json['hack'],
      header: json['header'] == null ? null : Header.fromJson(json['header']),
      subHeaderChipCloud: json['subHeaderChipCloud'] == null
          ? null
          : SubHeaderChipCloud.fromJson(json['subHeaderChipCloud']),
    );
  }

  @override
  List<Object?> get props => [
        content,
        hack,
        header,
        subHeaderChipCloud,
      ];
}

class MusicQueueRendererContent extends Equatable {
  const MusicQueueRendererContent({
    required this.playlistPanelRenderer,
  });

  final PlaylistPanelRenderer? playlistPanelRenderer;

  factory MusicQueueRendererContent.fromJson(Map<String, dynamic> json) {
    return MusicQueueRendererContent(
      playlistPanelRenderer: json['playlistPanelRenderer'] == null
          ? null
          : PlaylistPanelRenderer.fromJson(json['playlistPanelRenderer']),
    );
  }

  @override
  List<Object?> get props => [
        playlistPanelRenderer,
      ];
}

class PlaylistPanelRenderer extends Equatable {
  const PlaylistPanelRenderer({
    required this.contents,
    required this.playlistId,
    required this.isInfinite,
    required this.continuations,
    required this.trackingParams,
    required this.numItemsToShow,
    required this.shuffleToggleButton,
  });

  final List<ContentElement> contents;
  final String? playlistId;
  final bool? isInfinite;
  final List<Continuation> continuations;
  final String? trackingParams;
  final int? numItemsToShow;
  final ShuffleToggleButton? shuffleToggleButton;

  factory PlaylistPanelRenderer.fromJson(Map<String, dynamic> json) {
    return PlaylistPanelRenderer(
      contents: json['contents'] == null
          ? []
          : List<ContentElement>.from(
              json['contents']!.map((x) => ContentElement.fromJson(x))),
      playlistId: json['playlistId'],
      isInfinite: json['isInfinite'],
      continuations: json['continuations'] == null
          ? []
          : List<Continuation>.from(
              json['continuations']!.map((x) => Continuation.fromJson(x))),
      trackingParams: json['trackingParams'],
      numItemsToShow: json['numItemsToShow'],
      shuffleToggleButton: json['shuffleToggleButton'] == null
          ? null
          : ShuffleToggleButton.fromJson(json['shuffleToggleButton']),
    );
  }

  @override
  List<Object?> get props => [
        contents,
        playlistId,
        isInfinite,
        continuations,
        trackingParams,
        numItemsToShow,
        shuffleToggleButton,
      ];
}

class ContentElement extends Equatable {
  const ContentElement({
    required this.playlistPanelVideoRenderer,
  });

  final PlaylistPanelVideoRenderer? playlistPanelVideoRenderer;

  factory ContentElement.fromJson(Map<String, dynamic> json) {
    return ContentElement(
      playlistPanelVideoRenderer: json['playlistPanelVideoRenderer'] == null
          ? null
          : PlaylistPanelVideoRenderer.fromJson(
              json['playlistPanelVideoRenderer']),
    );
  }

  @override
  List<Object?> get props => [
        playlistPanelVideoRenderer,
      ];
}

class PlaylistPanelVideoRenderer extends Equatable {
  const PlaylistPanelVideoRenderer({
    required this.title,
    required this.longBylineText,
    required this.thumbnail,
    required this.lengthText,
    required this.selected,
    required this.navigationEndpoint,
    required this.videoId,
    required this.shortBylineText,
    required this.trackingParams,
    required this.menu,
    required this.playlistSetVideoId,
    required this.canReorder,
    required this.queueNavigationEndpoint,
  });

  final Title? title;
  final LongBylineText? longBylineText;
  final ThumbnailDetailsClass? thumbnail;
  final LengthText? lengthText;
  final bool? selected;
  final CurrentVideoEndpointClass? navigationEndpoint;
  final String? videoId;
  final Title? shortBylineText;
  final String? trackingParams;
  final Menu? menu;
  final String? playlistSetVideoId;
  final bool? canReorder;
  final QueueNavigationEndpoint? queueNavigationEndpoint;

  factory PlaylistPanelVideoRenderer.fromJson(Map<String, dynamic> json) {
    return PlaylistPanelVideoRenderer(
      title: json['title'] == null ? null : Title.fromJson(json['title']),
      longBylineText: json['longBylineText'] == null
          ? null
          : LongBylineText.fromJson(json['longBylineText']),
      thumbnail: json['thumbnail'] == null
          ? null
          : ThumbnailDetailsClass.fromJson(json['thumbnail']),
      lengthText: json['lengthText'] == null
          ? null
          : LengthText.fromJson(json['lengthText']),
      selected: json['selected'],
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : CurrentVideoEndpointClass.fromJson(json['navigationEndpoint']),
      videoId: json['videoId'],
      shortBylineText: json['shortBylineText'] == null
          ? null
          : Title.fromJson(json['shortBylineText']),
      trackingParams: json['trackingParams'],
      menu: json['menu'] == null ? null : Menu.fromJson(json['menu']),
      playlistSetVideoId: json['playlistSetVideoId'],
      canReorder: json['canReorder'],
      queueNavigationEndpoint: json['queueNavigationEndpoint'] == null
          ? null
          : QueueNavigationEndpoint.fromJson(json['queueNavigationEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
        title,
        longBylineText,
        thumbnail,
        lengthText,
        selected,
        navigationEndpoint,
        videoId,
        shortBylineText,
        trackingParams,
        menu,
        playlistSetVideoId,
        canReorder,
        queueNavigationEndpoint,
      ];
}

class LengthText extends Equatable {
  const LengthText({
    required this.runs,
    required this.accessibility,
  });

  final List<LengthTextRun> runs;
  final Accessibility? accessibility;

  factory LengthText.fromJson(Map<String, dynamic> json) {
    return LengthText(
      runs: json['runs'] == null
          ? []
          : List<LengthTextRun>.from(
              json['runs']!.map((x) => LengthTextRun.fromJson(x))),
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

class LengthTextRun extends Equatable {
  const LengthTextRun({
    required this.text,
  });

  final String? text;

  factory LengthTextRun.fromJson(Map<String, dynamic> json) {
    return LengthTextRun(
      text: json['text'],
    );
  }

  @override
  List<Object?> get props => [
        text,
      ];
}

class LongBylineText extends Equatable {
  const LongBylineText({
    required this.runs,
  });

  final List<LongBylineTextRun> runs;

  factory LongBylineText.fromJson(Map<String, dynamic> json) {
    return LongBylineText(
      runs: json['runs'] == null
          ? []
          : List<LongBylineTextRun>.from(
              json['runs']!.map((x) => LongBylineTextRun.fromJson(x))),
    );
  }

  @override
  List<Object?> get props => [
        runs,
      ];
}

class LongBylineTextRun extends Equatable {
  const LongBylineTextRun({
    required this.text,
    required this.navigationEndpoint,
  });

  final String? text;
  final Endpoint? navigationEndpoint;

  factory LongBylineTextRun.fromJson(Map<String, dynamic> json) {
    return LongBylineTextRun(
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
  final BrowseEndpoint? browseEndpoint;

  factory Endpoint.fromJson(Map<String, dynamic> json) {
    return Endpoint(
      clickTrackingParams: json['clickTrackingParams'],
      browseEndpoint: json['browseEndpoint'] == null
          ? null
          : BrowseEndpoint.fromJson(json['browseEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
        clickTrackingParams,
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
                  json['browseEndpointContextSupportedConfigs']),
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
      Map<String, dynamic> json) {
    return BrowseEndpointContextSupportedConfigs(
      browseEndpointContextMusicConfig:
          json['browseEndpointContextMusicConfig'] == null
              ? null
              : BrowseEndpointContextMusicConfig.fromJson(
                  json['browseEndpointContextMusicConfig']),
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
    required this.accessibility,
  });

  final List<MenuRendererItem> items;
  final String? trackingParams;
  final Accessibility? accessibility;

  factory MenuRenderer.fromJson(Map<String, dynamic> json) {
    return MenuRenderer(
      items: json['items'] == null
          ? []
          : List<MenuRendererItem>.from(
              json['items']!.map((x) => MenuRendererItem.fromJson(x))),
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

class MenuRendererItem extends Equatable {
  const MenuRendererItem({
    required this.menuNavigationItemRenderer,
    required this.menuServiceItemRenderer,
    required this.toggleMenuServiceItemRenderer,
  });

  final MenuItemRenderer? menuNavigationItemRenderer;
  final MenuItemRenderer? menuServiceItemRenderer;
  final ToggleMenuServiceItemRenderer? toggleMenuServiceItemRenderer;

  factory MenuRendererItem.fromJson(Map<String, dynamic> json) {
    return MenuRendererItem(
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
                  json['toggleMenuServiceItemRenderer']),
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

  final Title? text;
  final Icon? icon;
  final MenuNavigationItemRendererNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;
  final ServiceEndpoint? serviceEndpoint;

  factory MenuItemRenderer.fromJson(Map<String, dynamic> json) {
    return MenuItemRenderer(
      text: json['text'] == null ? null : Title.fromJson(json['text']),
      icon: json['icon'] == null ? null : Icon.fromJson(json['icon']),
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : MenuNavigationItemRendererNavigationEndpoint.fromJson(
              json['navigationEndpoint']),
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
  });

  final String? clickTrackingParams;
  final PurpleWatchEndpoint? watchEndpoint;
  final ModalEndpoint? modalEndpoint;
  final BrowseEndpoint? browseEndpoint;
  final ShareEntityEndpoint? shareEntityEndpoint;

  factory MenuNavigationItemRendererNavigationEndpoint.fromJson(
      Map<String, dynamic> json) {
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
    );
  }

  @override
  List<Object?> get props => [
        clickTrackingParams,
        watchEndpoint,
        modalEndpoint,
        browseEndpoint,
        shareEntityEndpoint,
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
                  json['modalWithTitleAndButtonRenderer']),
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

  final Title? title;
  final Title? content;
  final CancelButtonClass? button;

  factory ModalWithTitleAndButtonRenderer.fromJson(Map<String, dynamic> json) {
    return ModalWithTitleAndButtonRenderer(
      title: json['title'] == null ? null : Title.fromJson(json['title']),
      content: json['content'] == null ? null : Title.fromJson(json['content']),
      button: json['button'] == null
          ? null
          : CancelButtonClass.fromJson(json['button']),
    );
  }

  @override
  List<Object?> get props => [
        title,
        content,
        button,
      ];
}

class CancelButtonClass extends Equatable {
  const CancelButtonClass({
    required this.buttonRenderer,
  });

  final ButtonRenderer? buttonRenderer;

  factory CancelButtonClass.fromJson(Map<String, dynamic> json) {
    return CancelButtonClass(
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
  final Title? text;
  final ButtonRendererNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;

  factory ButtonRenderer.fromJson(Map<String, dynamic> json) {
    return ButtonRenderer(
      style: json['style'],
      isDisabled: json['isDisabled'],
      text: json['text'] == null ? null : Title.fromJson(json['text']),
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : ButtonRendererNavigationEndpoint.fromJson(
              json['navigationEndpoint']),
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

class Title extends Equatable {
  const Title({
    required this.runs,
  });

  final List<LengthTextRun> runs;

  factory Title.fromJson(Map<String, dynamic> json) {
    return Title(
      runs: json['runs'] == null
          ? []
          : List<LengthTextRun>.from(
              json['runs']!.map((x) => LengthTextRun.fromJson(x))),
    );
  }

  @override
  List<Object?> get props => [
        runs,
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
    required this.playerParams,
  });

  final String? videoId;
  final String? playlistId;
  final String? params;
  final LoggingContext? loggingContext;
  final PurpleWatchEndpointMusicSupportedConfigs?
      watchEndpointMusicSupportedConfigs;
  final String? playerParams;

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
              : PurpleWatchEndpointMusicSupportedConfigs.fromJson(
                  json['watchEndpointMusicSupportedConfigs']),
      playerParams: json['playerParams'],
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

class PurpleWatchEndpointMusicSupportedConfigs extends Equatable {
  const PurpleWatchEndpointMusicSupportedConfigs({
    required this.watchEndpointMusicConfig,
  });

  final PurpleWatchEndpointMusicConfig? watchEndpointMusicConfig;

  factory PurpleWatchEndpointMusicSupportedConfigs.fromJson(
      Map<String, dynamic> json) {
    return PurpleWatchEndpointMusicSupportedConfigs(
      watchEndpointMusicConfig: json['watchEndpointMusicConfig'] == null
          ? null
          : PurpleWatchEndpointMusicConfig.fromJson(
              json['watchEndpointMusicConfig']),
    );
  }

  @override
  List<Object?> get props => [
        watchEndpointMusicConfig,
      ];
}

class PurpleWatchEndpointMusicConfig extends Equatable {
  const PurpleWatchEndpointMusicConfig({
    required this.musicVideoType,
  });

  final String? musicVideoType;

  factory PurpleWatchEndpointMusicConfig.fromJson(Map<String, dynamic> json) {
    return PurpleWatchEndpointMusicConfig(
      musicVideoType: json['musicVideoType'],
    );
  }

  @override
  List<Object?> get props => [
        musicVideoType,
      ];
}

class ServiceEndpoint extends Equatable {
  const ServiceEndpoint({
    required this.clickTrackingParams,
    required this.queueAddEndpoint,
    required this.playlistEditEndpoint,
    required this.removeFromQueueEndpoint,
    required this.modalEndpoint,
  });

  final String? clickTrackingParams;
  final ServiceEndpointQueueAddEndpoint? queueAddEndpoint;
  final PlaylistEditEndpoint? playlistEditEndpoint;
  final RemoveFromQueueEndpoint? removeFromQueueEndpoint;
  final ModalEndpoint? modalEndpoint;

  factory ServiceEndpoint.fromJson(Map<String, dynamic> json) {
    return ServiceEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      queueAddEndpoint: json['queueAddEndpoint'] == null
          ? null
          : ServiceEndpointQueueAddEndpoint.fromJson(json['queueAddEndpoint']),
      playlistEditEndpoint: json['playlistEditEndpoint'] == null
          ? null
          : PlaylistEditEndpoint.fromJson(json['playlistEditEndpoint']),
      removeFromQueueEndpoint: json['removeFromQueueEndpoint'] == null
          ? null
          : RemoveFromQueueEndpoint.fromJson(json['removeFromQueueEndpoint']),
      modalEndpoint: json['modalEndpoint'] == null
          ? null
          : ModalEndpoint.fromJson(json['modalEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
        clickTrackingParams,
        queueAddEndpoint,
        playlistEditEndpoint,
        removeFromQueueEndpoint,
        modalEndpoint,
      ];
}

class PlaylistEditEndpoint extends Equatable {
  const PlaylistEditEndpoint({
    required this.playlistId,
    required this.actions,
  });

  final String? playlistId;
  final List<PlaylistEditEndpointAction> actions;

  factory PlaylistEditEndpoint.fromJson(Map<String, dynamic> json) {
    return PlaylistEditEndpoint(
      playlistId: json['playlistId'],
      actions: json['actions'] == null
          ? []
          : List<PlaylistEditEndpointAction>.from(json['actions']!
              .map((x) => PlaylistEditEndpointAction.fromJson(x))),
    );
  }

  @override
  List<Object?> get props => [
        playlistId,
        actions,
      ];
}

class PlaylistEditEndpointAction extends Equatable {
  const PlaylistEditEndpointAction({
    required this.setVideoId,
    required this.action,
    required this.removedVideoId,
  });

  final String? setVideoId;
  final String? action;
  final String? removedVideoId;

  factory PlaylistEditEndpointAction.fromJson(Map<String, dynamic> json) {
    return PlaylistEditEndpointAction(
      setVideoId: json['setVideoId'],
      action: json['action'],
      removedVideoId: json['removedVideoId'],
    );
  }

  @override
  List<Object?> get props => [
        setVideoId,
        action,
        removedVideoId,
      ];
}

class ServiceEndpointQueueAddEndpoint extends Equatable {
  const ServiceEndpointQueueAddEndpoint({
    required this.queueTarget,
    required this.queueInsertPosition,
    required this.commands,
  });

  final QueueTarget? queueTarget;
  final String? queueInsertPosition;
  final List<Command> commands;

  factory ServiceEndpointQueueAddEndpoint.fromJson(Map<String, dynamic> json) {
    return ServiceEndpointQueueAddEndpoint(
      queueTarget: json['queueTarget'] == null
          ? null
          : QueueTarget.fromJson(json['queueTarget']),
      queueInsertPosition: json['queueInsertPosition'],
      commands: json['commands'] == null
          ? []
          : List<Command>.from(
              json['commands']!.map((x) => Command.fromJson(x))),
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

  final Title? successResponseText;
  final String? trackingParams;

  factory NotificationTextRenderer.fromJson(Map<String, dynamic> json) {
    return NotificationTextRenderer(
      successResponseText: json['successResponseText'] == null
          ? null
          : Title.fromJson(json['successResponseText']),
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
  });

  final String? videoId;
  final OnEmptyQueue? onEmptyQueue;

  factory QueueTarget.fromJson(Map<String, dynamic> json) {
    return QueueTarget(
      videoId: json['videoId'],
      onEmptyQueue: json['onEmptyQueue'] == null
          ? null
          : OnEmptyQueue.fromJson(json['onEmptyQueue']),
    );
  }

  @override
  List<Object?> get props => [
        videoId,
        onEmptyQueue,
      ];
}

class OnEmptyQueue extends Equatable {
  const OnEmptyQueue({
    required this.clickTrackingParams,
    required this.watchEndpoint,
  });

  final String? clickTrackingParams;
  final Target? watchEndpoint;

  factory OnEmptyQueue.fromJson(Map<String, dynamic> json) {
    return OnEmptyQueue(
      clickTrackingParams: json['clickTrackingParams'],
      watchEndpoint: json['watchEndpoint'] == null
          ? null
          : Target.fromJson(json['watchEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
        clickTrackingParams,
        watchEndpoint,
      ];
}

class Target extends Equatable {
  const Target({
    required this.videoId,
  });

  final String? videoId;

  factory Target.fromJson(Map<String, dynamic> json) {
    return Target(
      videoId: json['videoId'],
    );
  }

  @override
  List<Object?> get props => [
        videoId,
      ];
}

class RemoveFromQueueEndpoint extends Equatable {
  const RemoveFromQueueEndpoint({
    required this.videoId,
    required this.commands,
  });

  final String? videoId;
  final List<Command> commands;

  factory RemoveFromQueueEndpoint.fromJson(Map<String, dynamic> json) {
    return RemoveFromQueueEndpoint(
      videoId: json['videoId'],
      commands: json['commands'] == null
          ? []
          : List<Command>.from(
              json['commands']!.map((x) => Command.fromJson(x))),
    );
  }

  @override
  List<Object?> get props => [
        videoId,
        commands,
      ];
}

class ToggleMenuServiceItemRenderer extends Equatable {
  const ToggleMenuServiceItemRenderer({
    required this.defaultText,
    required this.defaultIcon,
    required this.defaultServiceEndpoint,
    required this.toggledText,
    required this.toggledIcon,
    required this.trackingParams,
  });

  final Title? defaultText;
  final Icon? defaultIcon;
  final DislikeNavigationEndpoint? defaultServiceEndpoint;
  final Title? toggledText;
  final Icon? toggledIcon;
  final String? trackingParams;

  factory ToggleMenuServiceItemRenderer.fromJson(Map<String, dynamic> json) {
    return ToggleMenuServiceItemRenderer(
      defaultText: json['defaultText'] == null
          ? null
          : Title.fromJson(json['defaultText']),
      defaultIcon: json['defaultIcon'] == null
          ? null
          : Icon.fromJson(json['defaultIcon']),
      defaultServiceEndpoint: json['defaultServiceEndpoint'] == null
          ? null
          : DislikeNavigationEndpoint.fromJson(json['defaultServiceEndpoint']),
      toggledText: json['toggledText'] == null
          ? null
          : Title.fromJson(json['toggledText']),
      toggledIcon: json['toggledIcon'] == null
          ? null
          : Icon.fromJson(json['toggledIcon']),
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
        trackingParams,
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

class CurrentVideoEndpointClass extends Equatable {
  const CurrentVideoEndpointClass({
    required this.clickTrackingParams,
    required this.watchEndpoint,
  });

  final String? clickTrackingParams;
  final CurrentVideoEndpointWatchEndpoint? watchEndpoint;

  factory CurrentVideoEndpointClass.fromJson(Map<String, dynamic> json) {
    return CurrentVideoEndpointClass(
      clickTrackingParams: json['clickTrackingParams'],
      watchEndpoint: json['watchEndpoint'] == null
          ? null
          : CurrentVideoEndpointWatchEndpoint.fromJson(json['watchEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
        clickTrackingParams,
        watchEndpoint,
      ];
}

class CurrentVideoEndpointWatchEndpoint extends Equatable {
  const CurrentVideoEndpointWatchEndpoint({
    required this.videoId,
    required this.playlistId,
    required this.index,
    required this.params,
    required this.playerParams,
    required this.playlistSetVideoId,
    required this.loggingContext,
    required this.watchEndpointMusicSupportedConfigs,
  });

  final String? videoId;
  final String? playlistId;
  final int? index;
  final String? params;
  final String? playerParams;
  final String? playlistSetVideoId;
  final LoggingContext? loggingContext;
  final FluffyWatchEndpointMusicSupportedConfigs?
      watchEndpointMusicSupportedConfigs;

  factory CurrentVideoEndpointWatchEndpoint.fromJson(
      Map<String, dynamic> json) {
    return CurrentVideoEndpointWatchEndpoint(
      videoId: json['videoId'],
      playlistId: json['playlistId'],
      index: json['index'],
      params: json['params'],
      playerParams: json['playerParams'],
      playlistSetVideoId: json['playlistSetVideoId'],
      loggingContext: json['loggingContext'] == null
          ? null
          : LoggingContext.fromJson(json['loggingContext']),
      watchEndpointMusicSupportedConfigs:
          json['watchEndpointMusicSupportedConfigs'] == null
              ? null
              : FluffyWatchEndpointMusicSupportedConfigs.fromJson(
                  json['watchEndpointMusicSupportedConfigs']),
    );
  }

  @override
  List<Object?> get props => [
        videoId,
        playlistId,
        index,
        params,
        playerParams,
        playlistSetVideoId,
        loggingContext,
        watchEndpointMusicSupportedConfigs,
      ];
}

class FluffyWatchEndpointMusicSupportedConfigs extends Equatable {
  const FluffyWatchEndpointMusicSupportedConfigs({
    required this.watchEndpointMusicConfig,
  });

  final FluffyWatchEndpointMusicConfig? watchEndpointMusicConfig;

  factory FluffyWatchEndpointMusicSupportedConfigs.fromJson(
      Map<String, dynamic> json) {
    return FluffyWatchEndpointMusicSupportedConfigs(
      watchEndpointMusicConfig: json['watchEndpointMusicConfig'] == null
          ? null
          : FluffyWatchEndpointMusicConfig.fromJson(
              json['watchEndpointMusicConfig']),
    );
  }

  @override
  List<Object?> get props => [
        watchEndpointMusicConfig,
      ];
}

class FluffyWatchEndpointMusicConfig extends Equatable {
  const FluffyWatchEndpointMusicConfig({
    required this.hasPersistentPlaylistPanel,
    required this.musicVideoType,
  });

  final bool? hasPersistentPlaylistPanel;
  final String? musicVideoType;

  factory FluffyWatchEndpointMusicConfig.fromJson(Map<String, dynamic> json) {
    return FluffyWatchEndpointMusicConfig(
      hasPersistentPlaylistPanel: json['hasPersistentPlaylistPanel'],
      musicVideoType: json['musicVideoType'],
    );
  }

  @override
  List<Object?> get props => [
        hasPersistentPlaylistPanel,
        musicVideoType,
      ];
}

class QueueNavigationEndpoint extends Equatable {
  const QueueNavigationEndpoint({
    required this.clickTrackingParams,
    required this.queueAddEndpoint,
  });

  final String? clickTrackingParams;
  final QueueNavigationEndpointQueueAddEndpoint? queueAddEndpoint;

  factory QueueNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return QueueNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      queueAddEndpoint: json['queueAddEndpoint'] == null
          ? null
          : QueueNavigationEndpointQueueAddEndpoint.fromJson(
              json['queueAddEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
        clickTrackingParams,
        queueAddEndpoint,
      ];
}

class QueueNavigationEndpointQueueAddEndpoint extends Equatable {
  const QueueNavigationEndpointQueueAddEndpoint({
    required this.queueTarget,
    required this.queueInsertPosition,
  });

  final Target? queueTarget;
  final String? queueInsertPosition;

  factory QueueNavigationEndpointQueueAddEndpoint.fromJson(
      Map<String, dynamic> json) {
    return QueueNavigationEndpointQueueAddEndpoint(
      queueTarget: json['queueTarget'] == null
          ? null
          : Target.fromJson(json['queueTarget']),
      queueInsertPosition: json['queueInsertPosition'],
    );
  }

  @override
  List<Object?> get props => [
        queueTarget,
        queueInsertPosition,
      ];
}

class ThumbnailDetailsClass extends Equatable {
  const ThumbnailDetailsClass({
    required this.thumbnails,
  });

  final List<ThumbnailElement> thumbnails;

  factory ThumbnailDetailsClass.fromJson(Map<String, dynamic> json) {
    return ThumbnailDetailsClass(
      thumbnails: json['thumbnails'] == null
          ? []
          : List<ThumbnailElement>.from(
              json['thumbnails']!.map((x) => ThumbnailElement.fromJson(x))),
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

class Continuation extends Equatable {
  const Continuation({
    required this.nextRadioContinuationData,
  });

  final NextRadioContinuationData? nextRadioContinuationData;

  factory Continuation.fromJson(Map<String, dynamic> json) {
    return Continuation(
      nextRadioContinuationData: json['nextRadioContinuationData'] == null
          ? null
          : NextRadioContinuationData.fromJson(
              json['nextRadioContinuationData']),
    );
  }

  @override
  List<Object?> get props => [
        nextRadioContinuationData,
      ];
}

class NextRadioContinuationData extends Equatable {
  const NextRadioContinuationData({
    required this.continuation,
    required this.clickTrackingParams,
  });

  final String? continuation;
  final String? clickTrackingParams;

  factory NextRadioContinuationData.fromJson(Map<String, dynamic> json) {
    return NextRadioContinuationData(
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

class ShuffleToggleButton extends Equatable {
  const ShuffleToggleButton({
    required this.toggleButtonRenderer,
  });

  final ToggleButtonRenderer? toggleButtonRenderer;

  factory ShuffleToggleButton.fromJson(Map<String, dynamic> json) {
    return ShuffleToggleButton(
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
    required this.defaultIcon,
    required this.defaultServiceEndpoint,
    required this.toggledIcon,
    required this.toggledServiceEndpoint,
    required this.trackingParams,
  });

  final Icon? defaultIcon;
  final DefaultServiceEndpointClass? defaultServiceEndpoint;
  final Icon? toggledIcon;
  final DefaultServiceEndpointClass? toggledServiceEndpoint;
  final String? trackingParams;

  factory ToggleButtonRenderer.fromJson(Map<String, dynamic> json) {
    return ToggleButtonRenderer(
      defaultIcon: json['defaultIcon'] == null
          ? null
          : Icon.fromJson(json['defaultIcon']),
      defaultServiceEndpoint: json['defaultServiceEndpoint'] == null
          ? null
          : DefaultServiceEndpointClass.fromJson(
              json['defaultServiceEndpoint']),
      toggledIcon: json['toggledIcon'] == null
          ? null
          : Icon.fromJson(json['toggledIcon']),
      toggledServiceEndpoint: json['toggledServiceEndpoint'] == null
          ? null
          : DefaultServiceEndpointClass.fromJson(
              json['toggledServiceEndpoint']),
      trackingParams: json['trackingParams'],
    );
  }

  @override
  List<Object?> get props => [
        defaultIcon,
        defaultServiceEndpoint,
        toggledIcon,
        toggledServiceEndpoint,
        trackingParams,
      ];
}

class DefaultServiceEndpointClass extends Equatable {
  const DefaultServiceEndpointClass({
    required this.clickTrackingParams,
    required this.watchPlaylistEndpoint,
  });

  final String? clickTrackingParams;
  final WatchPlaylistEndpoint? watchPlaylistEndpoint;

  factory DefaultServiceEndpointClass.fromJson(Map<String, dynamic> json) {
    return DefaultServiceEndpointClass(
      clickTrackingParams: json['clickTrackingParams'],
      watchPlaylistEndpoint: json['watchPlaylistEndpoint'] == null
          ? null
          : WatchPlaylistEndpoint.fromJson(json['watchPlaylistEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
        clickTrackingParams,
        watchPlaylistEndpoint,
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

class Header extends Equatable {
  const Header({
    required this.musicQueueHeaderRenderer,
  });

  final MusicQueueHeaderRenderer? musicQueueHeaderRenderer;

  factory Header.fromJson(Map<String, dynamic> json) {
    return Header(
      musicQueueHeaderRenderer: json['musicQueueHeaderRenderer'] == null
          ? null
          : MusicQueueHeaderRenderer.fromJson(json['musicQueueHeaderRenderer']),
    );
  }

  @override
  List<Object?> get props => [
        musicQueueHeaderRenderer,
      ];
}

class MusicQueueHeaderRenderer extends Equatable {
  const MusicQueueHeaderRenderer({
    required this.title,
    required this.subtitle,
    required this.buttons,
    required this.trackingParams,
  });

  final Title? title;
  final Title? subtitle;
  final List<ButtonElement> buttons;
  final String? trackingParams;

  factory MusicQueueHeaderRenderer.fromJson(Map<String, dynamic> json) {
    return MusicQueueHeaderRenderer(
      title: json['title'] == null ? null : Title.fromJson(json['title']),
      subtitle:
          json['subtitle'] == null ? null : Title.fromJson(json['subtitle']),
      buttons: json['buttons'] == null
          ? []
          : List<ButtonElement>.from(
              json['buttons']!.map((x) => ButtonElement.fromJson(x))),
      trackingParams: json['trackingParams'],
    );
  }

  @override
  List<Object?> get props => [
        title,
        subtitle,
        buttons,
        trackingParams,
      ];
}

class ButtonElement extends Equatable {
  const ButtonElement({
    required this.chipCloudChipRenderer,
  });

  final ButtonChipCloudChipRenderer? chipCloudChipRenderer;

  factory ButtonElement.fromJson(Map<String, dynamic> json) {
    return ButtonElement(
      chipCloudChipRenderer: json['chipCloudChipRenderer'] == null
          ? null
          : ButtonChipCloudChipRenderer.fromJson(json['chipCloudChipRenderer']),
    );
  }

  @override
  List<Object?> get props => [
        chipCloudChipRenderer,
      ];
}

class ButtonChipCloudChipRenderer extends Equatable {
  const ButtonChipCloudChipRenderer({
    required this.style,
    required this.text,
    required this.navigationEndpoint,
    required this.trackingParams,
    required this.icon,
    required this.accessibilityData,
    required this.isSelected,
    required this.uniqueId,
  });

  final Style? style;
  final Title? text;
  final PurpleNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;
  final Icon? icon;
  final Accessibility? accessibilityData;
  final bool? isSelected;
  final String? uniqueId;

  factory ButtonChipCloudChipRenderer.fromJson(Map<String, dynamic> json) {
    return ButtonChipCloudChipRenderer(
      style: json['style'] == null ? null : Style.fromJson(json['style']),
      text: json['text'] == null ? null : Title.fromJson(json['text']),
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : PurpleNavigationEndpoint.fromJson(json['navigationEndpoint']),
      trackingParams: json['trackingParams'],
      icon: json['icon'] == null ? null : Icon.fromJson(json['icon']),
      accessibilityData: json['accessibilityData'] == null
          ? null
          : Accessibility.fromJson(json['accessibilityData']),
      isSelected: json['isSelected'],
      uniqueId: json['uniqueId'],
    );
  }

  @override
  List<Object?> get props => [
        style,
        text,
        navigationEndpoint,
        trackingParams,
        icon,
        accessibilityData,
        isSelected,
        uniqueId,
      ];
}

class PurpleNavigationEndpoint extends Equatable {
  const PurpleNavigationEndpoint({
    required this.clickTrackingParams,
    required this.modalEndpoint,
    required this.saveQueueToPlaylistCommand,
  });

  final String? clickTrackingParams;
  final ModalEndpoint? modalEndpoint;
  final SaveQueueToPlaylistCommand? saveQueueToPlaylistCommand;

  factory PurpleNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return PurpleNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      modalEndpoint: json['modalEndpoint'] == null
          ? null
          : ModalEndpoint.fromJson(json['modalEndpoint']),
      saveQueueToPlaylistCommand: json['saveQueueToPlaylistCommand'] == null
          ? null
          : SaveQueueToPlaylistCommand.fromJson(
              json['saveQueueToPlaylistCommand']),
    );
  }

  @override
  List<Object?> get props => [
        clickTrackingParams,
        modalEndpoint,
        saveQueueToPlaylistCommand,
      ];
}

class SaveQueueToPlaylistCommand extends Equatable {
  const SaveQueueToPlaylistCommand({required this.json});
  final Map<String, dynamic> json;

  factory SaveQueueToPlaylistCommand.fromJson(Map<String, dynamic> json) {
    return SaveQueueToPlaylistCommand(json: json);
  }

  @override
  List<Object?> get props => [];
}

class Style extends Equatable {
  const Style({
    required this.styleType,
  });

  final String? styleType;

  factory Style.fromJson(Map<String, dynamic> json) {
    return Style(
      styleType: json['styleType'],
    );
  }

  @override
  List<Object?> get props => [
        styleType,
      ];
}

class SubHeaderChipCloud extends Equatable {
  const SubHeaderChipCloud({
    required this.chipCloudRenderer,
  });

  final ChipCloudRenderer? chipCloudRenderer;

  factory SubHeaderChipCloud.fromJson(Map<String, dynamic> json) {
    return SubHeaderChipCloud(
      chipCloudRenderer: json['chipCloudRenderer'] == null
          ? null
          : ChipCloudRenderer.fromJson(json['chipCloudRenderer']),
    );
  }

  @override
  List<Object?> get props => [
        chipCloudRenderer,
      ];
}

class ChipCloudRenderer extends Equatable {
  const ChipCloudRenderer({
    required this.chips,
    required this.trackingParams,
    required this.selectionBehavior,
  });

  final List<Chip> chips;
  final String? trackingParams;
  final String? selectionBehavior;

  factory ChipCloudRenderer.fromJson(Map<String, dynamic> json) {
    return ChipCloudRenderer(
      chips: json['chips'] == null
          ? []
          : List<Chip>.from(json['chips']!.map((x) => Chip.fromJson(x))),
      trackingParams: json['trackingParams'],
      selectionBehavior: json['selectionBehavior'],
    );
  }

  @override
  List<Object?> get props => [
        chips,
        trackingParams,
        selectionBehavior,
      ];
}

class Chip extends Equatable {
  const Chip({
    required this.chipCloudChipRenderer,
  });

  final ChipChipCloudChipRenderer? chipCloudChipRenderer;

  factory Chip.fromJson(Map<String, dynamic> json) {
    return Chip(
      chipCloudChipRenderer: json['chipCloudChipRenderer'] == null
          ? null
          : ChipChipCloudChipRenderer.fromJson(json['chipCloudChipRenderer']),
    );
  }

  @override
  List<Object?> get props => [
        chipCloudChipRenderer,
      ];
}

class ChipChipCloudChipRenderer extends Equatable {
  const ChipChipCloudChipRenderer({
    required this.text,
    required this.navigationEndpoint,
    required this.trackingParams,
    required this.accessibilityData,
    required this.isSelected,
    required this.uniqueId,
  });

  final Title? text;
  final FluffyNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;
  final Accessibility? accessibilityData;
  final bool? isSelected;
  final String? uniqueId;

  factory ChipChipCloudChipRenderer.fromJson(Map<String, dynamic> json) {
    return ChipChipCloudChipRenderer(
      text: json['text'] == null ? null : Title.fromJson(json['text']),
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : FluffyNavigationEndpoint.fromJson(json['navigationEndpoint']),
      trackingParams: json['trackingParams'],
      accessibilityData: json['accessibilityData'] == null
          ? null
          : Accessibility.fromJson(json['accessibilityData']),
      isSelected: json['isSelected'],
      uniqueId: json['uniqueId'],
    );
  }

  @override
  List<Object?> get props => [
        text,
        navigationEndpoint,
        trackingParams,
        accessibilityData,
        isSelected,
        uniqueId,
      ];
}

class FluffyNavigationEndpoint extends Equatable {
  const FluffyNavigationEndpoint({
    required this.clickTrackingParams,
    required this.queueUpdateCommand,
  });

  final String? clickTrackingParams;
  final QueueUpdateCommand? queueUpdateCommand;

  factory FluffyNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return FluffyNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      queueUpdateCommand: json['queueUpdateCommand'] == null
          ? null
          : QueueUpdateCommand.fromJson(json['queueUpdateCommand']),
    );
  }

  @override
  List<Object?> get props => [
        clickTrackingParams,
        queueUpdateCommand,
      ];
}

class QueueUpdateCommand extends Equatable {
  const QueueUpdateCommand({
    required this.queueUpdateSection,
    required this.fetchContentsCommand,
    required this.dedupeAgainstLocalQueue,
  });

  final String? queueUpdateSection;
  final FetchContentsCommand? fetchContentsCommand;
  final bool? dedupeAgainstLocalQueue;

  factory QueueUpdateCommand.fromJson(Map<String, dynamic> json) {
    return QueueUpdateCommand(
      queueUpdateSection: json['queueUpdateSection'],
      fetchContentsCommand: json['fetchContentsCommand'] == null
          ? null
          : FetchContentsCommand.fromJson(json['fetchContentsCommand']),
      dedupeAgainstLocalQueue: json['dedupeAgainstLocalQueue'],
    );
  }

  @override
  List<Object?> get props => [
        queueUpdateSection,
        fetchContentsCommand,
        dedupeAgainstLocalQueue,
      ];
}

class FetchContentsCommand extends Equatable {
  const FetchContentsCommand({
    required this.clickTrackingParams,
    required this.watchEndpoint,
  });

  final String? clickTrackingParams;
  final FetchContentsCommandWatchEndpoint? watchEndpoint;

  factory FetchContentsCommand.fromJson(Map<String, dynamic> json) {
    return FetchContentsCommand(
      clickTrackingParams: json['clickTrackingParams'],
      watchEndpoint: json['watchEndpoint'] == null
          ? null
          : FetchContentsCommandWatchEndpoint.fromJson(json['watchEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
        clickTrackingParams,
        watchEndpoint,
      ];
}

class FetchContentsCommandWatchEndpoint extends Equatable {
  const FetchContentsCommandWatchEndpoint({
    required this.playlistId,
    required this.params,
    required this.playerParams,
    required this.loggingContext,
  });

  final String? playlistId;
  final String? params;
  final String? playerParams;
  final LoggingContext? loggingContext;

  factory FetchContentsCommandWatchEndpoint.fromJson(
      Map<String, dynamic> json) {
    return FetchContentsCommandWatchEndpoint(
      playlistId: json['playlistId'],
      params: json['params'],
      playerParams: json['playerParams'],
      loggingContext: json['loggingContext'] == null
          ? null
          : LoggingContext.fromJson(json['loggingContext']),
    );
  }

  @override
  List<Object?> get props => [
        playlistId,
        params,
        playerParams,
        loggingContext,
      ];
}

class PlayerOverlays extends Equatable {
  const PlayerOverlays({
    required this.playerOverlayRenderer,
  });

  final PlayerOverlayRenderer? playerOverlayRenderer;

  factory PlayerOverlays.fromJson(Map<String, dynamic> json) {
    return PlayerOverlays(
      playerOverlayRenderer: json['playerOverlayRenderer'] == null
          ? null
          : PlayerOverlayRenderer.fromJson(json['playerOverlayRenderer']),
    );
  }

  @override
  List<Object?> get props => [
        playerOverlayRenderer,
      ];
}

class PlayerOverlayRenderer extends Equatable {
  const PlayerOverlayRenderer({
    required this.actions,
    required this.browserMediaSession,
  });

  final List<PlayerOverlayRendererAction> actions;
  final BrowserMediaSession? browserMediaSession;

  factory PlayerOverlayRenderer.fromJson(Map<String, dynamic> json) {
    return PlayerOverlayRenderer(
      actions: json['actions'] == null
          ? []
          : List<PlayerOverlayRendererAction>.from(json['actions']!
              .map((x) => PlayerOverlayRendererAction.fromJson(x))),
      browserMediaSession: json['browserMediaSession'] == null
          ? null
          : BrowserMediaSession.fromJson(json['browserMediaSession']),
    );
  }

  @override
  List<Object?> get props => [
        actions,
        browserMediaSession,
      ];
}

class PlayerOverlayRendererAction extends Equatable {
  const PlayerOverlayRendererAction({
    required this.likeButtonRenderer,
  });

  final LikeButtonRenderer? likeButtonRenderer;

  factory PlayerOverlayRendererAction.fromJson(Map<String, dynamic> json) {
    return PlayerOverlayRendererAction(
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

  final Target? target;
  final String? likeStatus;
  final String? trackingParams;
  final bool? likesAllowed;
  final DislikeNavigationEndpoint? dislikeNavigationEndpoint;
  final DislikeNavigationEndpoint? likeCommand;

  factory LikeButtonRenderer.fromJson(Map<String, dynamic> json) {
    return LikeButtonRenderer(
      target: json['target'] == null ? null : Target.fromJson(json['target']),
      likeStatus: json['likeStatus'],
      trackingParams: json['trackingParams'],
      likesAllowed: json['likesAllowed'],
      dislikeNavigationEndpoint: json['dislikeNavigationEndpoint'] == null
          ? null
          : DislikeNavigationEndpoint.fromJson(
              json['dislikeNavigationEndpoint']),
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

class BrowserMediaSession extends Equatable {
  const BrowserMediaSession({
    required this.browserMediaSessionRenderer,
  });

  final BrowserMediaSessionRenderer? browserMediaSessionRenderer;

  factory BrowserMediaSession.fromJson(Map<String, dynamic> json) {
    return BrowserMediaSession(
      browserMediaSessionRenderer: json['browserMediaSessionRenderer'] == null
          ? null
          : BrowserMediaSessionRenderer.fromJson(
              json['browserMediaSessionRenderer']),
    );
  }

  @override
  List<Object?> get props => [
        browserMediaSessionRenderer,
      ];
}

class BrowserMediaSessionRenderer extends Equatable {
  const BrowserMediaSessionRenderer({
    required this.album,
    required this.thumbnailDetails,
  });

  final Title? album;
  final ThumbnailDetailsClass? thumbnailDetails;

  factory BrowserMediaSessionRenderer.fromJson(Map<String, dynamic> json) {
    return BrowserMediaSessionRenderer(
      album: json['album'] == null ? null : Title.fromJson(json['album']),
      thumbnailDetails: json['thumbnailDetails'] == null
          ? null
          : ThumbnailDetailsClass.fromJson(json['thumbnailDetails']),
    );
  }

  @override
  List<Object?> get props => [
        album,
        thumbnailDetails,
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
          : List<ServiceTrackingParam>.from(json['serviceTrackingParams']!
              .map((x) => ServiceTrackingParam.fromJson(x))),
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

class VideoReporting extends Equatable {
  const VideoReporting({
    required this.reportFormModalRenderer,
  });

  final ReportFormModalRenderer? reportFormModalRenderer;

  factory VideoReporting.fromJson(Map<String, dynamic> json) {
    return VideoReporting(
      reportFormModalRenderer: json['reportFormModalRenderer'] == null
          ? null
          : ReportFormModalRenderer.fromJson(json['reportFormModalRenderer']),
    );
  }

  @override
  List<Object?> get props => [
        reportFormModalRenderer,
      ];
}

class ReportFormModalRenderer extends Equatable {
  const ReportFormModalRenderer({
    required this.optionsSupportedRenderers,
    required this.trackingParams,
    required this.title,
    required this.submitButton,
    required this.cancelButton,
    required this.footer,
  });

  final OptionsSupportedRenderers? optionsSupportedRenderers;
  final String? trackingParams;
  final Title? title;
  final CancelButtonClass? submitButton;
  final CancelButtonClass? cancelButton;
  final Footer? footer;

  factory ReportFormModalRenderer.fromJson(Map<String, dynamic> json) {
    return ReportFormModalRenderer(
      optionsSupportedRenderers: json['optionsSupportedRenderers'] == null
          ? null
          : OptionsSupportedRenderers.fromJson(
              json['optionsSupportedRenderers']),
      trackingParams: json['trackingParams'],
      title: json['title'] == null ? null : Title.fromJson(json['title']),
      submitButton: json['submitButton'] == null
          ? null
          : CancelButtonClass.fromJson(json['submitButton']),
      cancelButton: json['cancelButton'] == null
          ? null
          : CancelButtonClass.fromJson(json['cancelButton']),
      footer: json['footer'] == null ? null : Footer.fromJson(json['footer']),
    );
  }

  @override
  List<Object?> get props => [
        optionsSupportedRenderers,
        trackingParams,
        title,
        submitButton,
        cancelButton,
        footer,
      ];
}

class Footer extends Equatable {
  const Footer({
    required this.runs,
  });

  final List<FooterRun> runs;

  factory Footer.fromJson(Map<String, dynamic> json) {
    return Footer(
      runs: json['runs'] == null
          ? []
          : List<FooterRun>.from(
              json['runs']!.map((x) => FooterRun.fromJson(x))),
    );
  }

  @override
  List<Object?> get props => [
        runs,
      ];
}

class FooterRun extends Equatable {
  const FooterRun({
    required this.text,
    required this.navigationEndpoint,
  });

  final String? text;
  final RunNavigationEndpoint? navigationEndpoint;

  factory FooterRun.fromJson(Map<String, dynamic> json) {
    return FooterRun(
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
    required this.urlEndpoint,
  });

  final String? clickTrackingParams;
  final UrlEndpoint? urlEndpoint;

  factory RunNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return RunNavigationEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      urlEndpoint: json['urlEndpoint'] == null
          ? null
          : UrlEndpoint.fromJson(json['urlEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
        clickTrackingParams,
        urlEndpoint,
      ];
}

class UrlEndpoint extends Equatable {
  const UrlEndpoint({
    required this.url,
  });

  final String? url;

  factory UrlEndpoint.fromJson(Map<String, dynamic> json) {
    return UrlEndpoint(
      url: json['url'],
    );
  }

  @override
  List<Object?> get props => [
        url,
      ];
}

class OptionsSupportedRenderers extends Equatable {
  const OptionsSupportedRenderers({
    required this.optionsRenderer,
  });

  final OptionsRenderer? optionsRenderer;

  factory OptionsSupportedRenderers.fromJson(Map<String, dynamic> json) {
    return OptionsSupportedRenderers(
      optionsRenderer: json['optionsRenderer'] == null
          ? null
          : OptionsRenderer.fromJson(json['optionsRenderer']),
    );
  }

  @override
  List<Object?> get props => [
        optionsRenderer,
      ];
}

class OptionsRenderer extends Equatable {
  const OptionsRenderer({
    required this.items,
    required this.trackingParams,
  });

  final List<OptionsRendererItem> items;
  final String? trackingParams;

  factory OptionsRenderer.fromJson(Map<String, dynamic> json) {
    return OptionsRenderer(
      items: json['items'] == null
          ? []
          : List<OptionsRendererItem>.from(
              json['items']!.map((x) => OptionsRendererItem.fromJson(x))),
      trackingParams: json['trackingParams'],
    );
  }

  @override
  List<Object?> get props => [
        items,
        trackingParams,
      ];
}

class OptionsRendererItem extends Equatable {
  const OptionsRendererItem({
    required this.optionSelectableItemRenderer,
  });

  final OptionSelectableItemRenderer? optionSelectableItemRenderer;

  factory OptionsRendererItem.fromJson(Map<String, dynamic> json) {
    return OptionsRendererItem(
      optionSelectableItemRenderer: json['optionSelectableItemRenderer'] == null
          ? null
          : OptionSelectableItemRenderer.fromJson(
              json['optionSelectableItemRenderer']),
    );
  }

  @override
  List<Object?> get props => [
        optionSelectableItemRenderer,
      ];
}

class OptionSelectableItemRenderer extends Equatable {
  const OptionSelectableItemRenderer({
    required this.text,
    required this.trackingParams,
    required this.submitEndpoint,
  });

  final Title? text;
  final String? trackingParams;
  final SubmitEndpoint? submitEndpoint;

  factory OptionSelectableItemRenderer.fromJson(Map<String, dynamic> json) {
    return OptionSelectableItemRenderer(
      text: json['text'] == null ? null : Title.fromJson(json['text']),
      trackingParams: json['trackingParams'],
      submitEndpoint: json['submitEndpoint'] == null
          ? null
          : SubmitEndpoint.fromJson(json['submitEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
        text,
        trackingParams,
        submitEndpoint,
      ];
}

class SubmitEndpoint extends Equatable {
  const SubmitEndpoint({
    required this.clickTrackingParams,
    required this.flagEndpoint,
  });

  final String? clickTrackingParams;
  final FlagEndpoint? flagEndpoint;

  factory SubmitEndpoint.fromJson(Map<String, dynamic> json) {
    return SubmitEndpoint(
      clickTrackingParams: json['clickTrackingParams'],
      flagEndpoint: json['flagEndpoint'] == null
          ? null
          : FlagEndpoint.fromJson(json['flagEndpoint']),
    );
  }

  @override
  List<Object?> get props => [
        clickTrackingParams,
        flagEndpoint,
      ];
}

class FlagEndpoint extends Equatable {
  const FlagEndpoint({
    required this.flagAction,
  });

  final String? flagAction;

  factory FlagEndpoint.fromJson(Map<String, dynamic> json) {
    return FlagEndpoint(
      flagAction: json['flagAction'],
    );
  }

  @override
  List<Object?> get props => [
        flagAction,
      ];
}
