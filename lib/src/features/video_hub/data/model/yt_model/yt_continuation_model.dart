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
  });

  final Header? header;
  final List<MusicCarouselShelfRendererContent> contents;
  final String? trackingParams;
  final String? itemSize;

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

  final ThumbnailRenderer? thumbnailRenderer;
  final String? aspectRatio;
  final Title? title;
  final Subtitle? subtitle;
  final MusicTwoRowItemRendererNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;
  final Menu? menu;
  final ThumbnailOverlay? thumbnailOverlay;

  factory MusicTwoRowItemRenderer.fromJson(Map<String, dynamic> json) {
    return MusicTwoRowItemRenderer(
      thumbnailRenderer: json['thumbnailRenderer'] == null
          ? null
          : ThumbnailRenderer.fromJson(json['thumbnailRenderer']),
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
      menu: json['menu'] == null ? null : Menu.fromJson(json['menu']),
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

  final List<ItemElement> items;
  final String? trackingParams;
  final Accessibility? accessibility;

  factory MenuRenderer.fromJson(Map<String, dynamic> json) {
    return MenuRenderer(
      items: json['items'] == null
          ? []
          : List<ItemElement>.from(
              json['items']!.map((x) => ItemElement.fromJson(x)),
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
    required this.watchPlaylistEndpoint,
    required this.modalEndpoint,
    required this.shareEntityEndpoint,
    required this.browseEndpoint,
  });

  final String? clickTrackingParams;
  final WatchPlaylistEndpoint? watchPlaylistEndpoint;
  final ModalEndpoint? modalEndpoint;
  final ShareEntityEndpoint? shareEntityEndpoint;
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
  final Strapline? text;
  final ButtonRendererNavigationEndpoint? navigationEndpoint;
  final String? trackingParams;

  factory ButtonRenderer.fromJson(Map<String, dynamic> json) {
    return ButtonRenderer(
      style: json['style'],
      isDisabled: json['isDisabled'],
      text: json['text'] == null ? null : Strapline.fromJson(json['text']),
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
    required this.playlistId,
    required this.onEmptyQueue,
  });

  final String? playlistId;
  final OnEmptyQueue? onEmptyQueue;

  factory QueueTarget.fromJson(Map<String, dynamic> json) {
    return QueueTarget(
      playlistId: json['playlistId'],
      onEmptyQueue: json['onEmptyQueue'] == null
          ? null
          : OnEmptyQueue.fromJson(json['onEmptyQueue']),
    );
  }

  @override
  List<Object?> get props => [
    playlistId,
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
  final DefaultServiceEndpoint? defaultServiceEndpoint;
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
          : DefaultServiceEndpoint.fromJson(json['defaultServiceEndpoint']),
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

class MusicTwoRowItemRendererNavigationEndpoint extends Equatable {
  const MusicTwoRowItemRendererNavigationEndpoint({
    required this.clickTrackingParams,
    required this.browseEndpoint,
  });

  final String? clickTrackingParams;
  final FluffyBrowseEndpoint? browseEndpoint;

  factory MusicTwoRowItemRendererNavigationEndpoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return MusicTwoRowItemRendererNavigationEndpoint(
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

class FluffyBrowseEndpoint extends Equatable {
  const FluffyBrowseEndpoint({
    required this.browseId,
    required this.browseEndpointContextSupportedConfigs,
    required this.params,
  });

  final String? browseId;
  final BrowseEndpointContextSupportedConfigs?
  browseEndpointContextSupportedConfigs;
  final String? params;

  factory FluffyBrowseEndpoint.fromJson(Map<String, dynamic> json) {
    return FluffyBrowseEndpoint(
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

class Subtitle extends Equatable {
  const Subtitle({
    required this.runs,
  });

  final List<SubtitleRun> runs;

  factory Subtitle.fromJson(Map<String, dynamic> json) {
    return Subtitle(
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

class SubtitleRun extends Equatable {
  const SubtitleRun({
    required this.text,
    required this.navigationEndpoint,
  });

  final String? text;
  final PurpleNavigationEndpoint? navigationEndpoint;

  factory SubtitleRun.fromJson(Map<String, dynamic> json) {
    return SubtitleRun(
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
    required this.browseEndpoint,
  });

  final String? clickTrackingParams;
  final PurpleBrowseEndpoint? browseEndpoint;

  factory PurpleNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return PurpleNavigationEndpoint(
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

  final MusicItemThumbnailOverlayRenderer? musicItemThumbnailOverlayRenderer;

  factory ThumbnailOverlay.fromJson(Map<String, dynamic> json) {
    return ThumbnailOverlay(
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
  final double? activeScaleFactor;
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
    required this.watchPlaylistEndpoint,
  });

  final String? clickTrackingParams;
  final WatchPlaylistEndpoint? watchPlaylistEndpoint;

  factory PlayNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    return PlayNavigationEndpoint(
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

class ThumbnailRenderer extends Equatable {
  const ThumbnailRenderer({
    required this.musicThumbnailRenderer,
  });

  final MusicThumbnailRenderer? musicThumbnailRenderer;

  factory ThumbnailRenderer.fromJson(Map<String, dynamic> json) {
    return ThumbnailRenderer(
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
  final MusicTwoRowItemRendererNavigationEndpoint? navigationEndpoint;

  factory PurpleRun.fromJson(Map<String, dynamic> json) {
    return PurpleRun(
      text: json['text'],
      navigationEndpoint: json['navigationEndpoint'] == null
          ? null
          : MusicTwoRowItemRendererNavigationEndpoint.fromJson(
              json['navigationEndpoint'],
            ),
    );
  }

  @override
  List<Object?> get props => [
    text,
    navigationEndpoint,
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
    required this.strapline,
    required this.accessibilityData,
    required this.headerStyle,
    required this.trackingParams,
  });

  final Strapline? title;
  final Strapline? strapline;
  final Accessibility? accessibilityData;
  final String? headerStyle;
  final String? trackingParams;

  factory MusicCarouselShelfBasicHeaderRenderer.fromJson(
    Map<String, dynamic> json,
  ) {
    return MusicCarouselShelfBasicHeaderRenderer(
      title: json['title'] == null ? null : Strapline.fromJson(json['title']),
      strapline: json['strapline'] == null
          ? null
          : Strapline.fromJson(json['strapline']),
      accessibilityData: json['accessibilityData'] == null
          ? null
          : Accessibility.fromJson(json['accessibilityData']),
      headerStyle: json['headerStyle'],
      trackingParams: json['trackingParams'],
    );
  }

  @override
  List<Object?> get props => [
    title,
    strapline,
    accessibilityData,
    headerStyle,
    trackingParams,
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
    required this.serviceTrackingParams,
    required this.maxAgeSeconds,
  });

  final List<ServiceTrackingParam> serviceTrackingParams;
  final int? maxAgeSeconds;

  factory ResponseContext.fromJson(Map<String, dynamic> json) {
    return ResponseContext(
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
