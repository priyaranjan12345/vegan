import 'package:equatable/equatable.dart';

class YtAlbumsModel extends Equatable {
    const YtAlbumsModel({
        required this.responseContext,
        required this.contents,
        required this.trackingParams,
        required this.microformat,
        required this.background,
    });

    final ResponseContext? responseContext;
    final Contents? contents;
    final String? trackingParams;
    final Microformat? microformat;
    final ThumbnailRendererClass? background;

    factory YtAlbumsModel.fromJson(Map<String, dynamic> json){ 
        return YtAlbumsModel(
            responseContext: json['responseContext'] == null ? null : ResponseContext.fromJson(json['responseContext']),
            contents: json['contents'] == null ? null : Contents.fromJson(json['contents']),
            trackingParams: json['trackingParams'],
            microformat: json['microformat'] == null ? null : Microformat.fromJson(json['microformat']),
            background: json['background'] == null ? null : ThumbnailRendererClass.fromJson(json['background']),
        );
    }

    @override
    List<Object?> get props => [
    responseContext, contents, trackingParams, microformat, background, ];
}

class ThumbnailRendererClass extends Equatable {
    const ThumbnailRendererClass({
        required this.musicThumbnailRenderer,
    });

    final MusicThumbnailRenderer? musicThumbnailRenderer;

    factory ThumbnailRendererClass.fromJson(Map<String, dynamic> json){ 
        return ThumbnailRendererClass(
            musicThumbnailRenderer: json['musicThumbnailRenderer'] == null ? null : MusicThumbnailRenderer.fromJson(json['musicThumbnailRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    musicThumbnailRenderer, ];
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

    factory MusicThumbnailRenderer.fromJson(Map<String, dynamic> json){ 
        return MusicThumbnailRenderer(
            thumbnail: json['thumbnail'] == null ? null : MusicThumbnailRendererThumbnail.fromJson(json['thumbnail']),
            thumbnailCrop: json['thumbnailCrop'],
            thumbnailScale: json['thumbnailScale'],
            trackingParams: json['trackingParams'],
        );
    }

    @override
    List<Object?> get props => [
    thumbnail, thumbnailCrop, thumbnailScale, trackingParams, ];
}

class MusicThumbnailRendererThumbnail extends Equatable {
    const MusicThumbnailRendererThumbnail({
        required this.thumbnails,
    });

    final List<ThumbnailElement> thumbnails;

    factory MusicThumbnailRendererThumbnail.fromJson(Map<String, dynamic> json){ 
        return MusicThumbnailRendererThumbnail(
            thumbnails: json['thumbnails'] == null ? [] : List<ThumbnailElement>.from(json['thumbnails']!.map((x) => ThumbnailElement.fromJson(x))),
        );
    }

    @override
    List<Object?> get props => [
    thumbnails, ];
}

class ThumbnailElement extends Equatable {
    const ThumbnailElement({
        required this.url,
        required this.width,
        required this.height,
    });

    final String? url;
    final num? width;
    final num? height;

    factory ThumbnailElement.fromJson(Map<String, dynamic> json){ 
        return ThumbnailElement(
            url: json['url'],
            width: json['width'],
            height: json['height'],
        );
    }

    @override
    List<Object?> get props => [
    url, width, height, ];
}

class Contents extends Equatable {
    const Contents({
        required this.twoColumnBrowseResultsRenderer,
    });

    final TwoColumnBrowseResultsRenderer? twoColumnBrowseResultsRenderer;

    factory Contents.fromJson(Map<String, dynamic> json){ 
        return Contents(
            twoColumnBrowseResultsRenderer: json['twoColumnBrowseResultsRenderer'] == null ? null : TwoColumnBrowseResultsRenderer.fromJson(json['twoColumnBrowseResultsRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    twoColumnBrowseResultsRenderer, ];
}

class TwoColumnBrowseResultsRenderer extends Equatable {
    const TwoColumnBrowseResultsRenderer({
        required this.secondaryContents,
        required this.tabs,
    });

    final SecondaryContents? secondaryContents;
    final List<Tab> tabs;

    factory TwoColumnBrowseResultsRenderer.fromJson(Map<String, dynamic> json){ 
        return TwoColumnBrowseResultsRenderer(
            secondaryContents: json['secondaryContents'] == null ? null : SecondaryContents.fromJson(json['secondaryContents']),
            tabs: json['tabs'] == null ? [] : List<Tab>.from(json['tabs']!.map((x) => Tab.fromJson(x))),
        );
    }

    @override
    List<Object?> get props => [
    secondaryContents, tabs, ];
}

class SecondaryContents extends Equatable {
    const SecondaryContents({
        required this.sectionListRenderer,
    });

    final SecondaryContentsSectionListRenderer? sectionListRenderer;

    factory SecondaryContents.fromJson(Map<String, dynamic> json){ 
        return SecondaryContents(
            sectionListRenderer: json['sectionListRenderer'] == null ? null : SecondaryContentsSectionListRenderer.fromJson(json['sectionListRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    sectionListRenderer, ];
}

class SecondaryContentsSectionListRenderer extends Equatable {
    const SecondaryContentsSectionListRenderer({
        required this.contents,
        required this.trackingParams,
    });

    final List<PurpleContent> contents;
    final String? trackingParams;

    factory SecondaryContentsSectionListRenderer.fromJson(Map<String, dynamic> json){ 
        return SecondaryContentsSectionListRenderer(
            contents: json['contents'] == null ? [] : List<PurpleContent>.from(json['contents']!.map((x) => PurpleContent.fromJson(x))),
            trackingParams: json['trackingParams'],
        );
    }

    @override
    List<Object?> get props => [
    contents, trackingParams, ];
}

class PurpleContent extends Equatable {
    const PurpleContent({
        required this.musicShelfRenderer,
        required this.musicCarouselShelfRenderer,
    });

    final MusicShelfRenderer? musicShelfRenderer;
    final MusicCarouselShelfRenderer? musicCarouselShelfRenderer;

    factory PurpleContent.fromJson(Map<String, dynamic> json){ 
        return PurpleContent(
            musicShelfRenderer: json['musicShelfRenderer'] == null ? null : MusicShelfRenderer.fromJson(json['musicShelfRenderer']),
            musicCarouselShelfRenderer: json['musicCarouselShelfRenderer'] == null ? null : MusicCarouselShelfRenderer.fromJson(json['musicCarouselShelfRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    musicShelfRenderer, musicCarouselShelfRenderer, ];
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

    factory MusicCarouselShelfRenderer.fromJson(Map<String, dynamic> json){ 
        return MusicCarouselShelfRenderer(
            header: json['header'] == null ? null : Header.fromJson(json['header']),
            contents: json['contents'] == null ? [] : List<MusicCarouselShelfRendererContent>.from(json['contents']!.map((x) => MusicCarouselShelfRendererContent.fromJson(x))),
            trackingParams: json['trackingParams'],
            itemSize: json['itemSize'],
        );
    }

    @override
    List<Object?> get props => [
    header, contents, trackingParams, itemSize, ];
}

class MusicCarouselShelfRendererContent extends Equatable {
    const MusicCarouselShelfRendererContent({
        required this.musicTwoRowItemRenderer,
    });

    final MusicTwoRowItemRenderer? musicTwoRowItemRenderer;

    factory MusicCarouselShelfRendererContent.fromJson(Map<String, dynamic> json){ 
        return MusicCarouselShelfRendererContent(
            musicTwoRowItemRenderer: json['musicTwoRowItemRenderer'] == null ? null : MusicTwoRowItemRenderer.fromJson(json['musicTwoRowItemRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    musicTwoRowItemRenderer, ];
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
    final MusicTwoRowItemRendererTitle? title;
    final Subtitle? subtitle;
    final MusicTwoRowItemRendererNavigationEndpoint? navigationEndpoint;
    final String? trackingParams;
    final MusicTwoRowItemRendererMenu? menu;
    final ThumbnailOverlay? thumbnailOverlay;

    factory MusicTwoRowItemRenderer.fromJson(Map<String, dynamic> json){ 
        return MusicTwoRowItemRenderer(
            thumbnailRenderer: json['thumbnailRenderer'] == null ? null : ThumbnailRendererClass.fromJson(json['thumbnailRenderer']),
            aspectRatio: json['aspectRatio'],
            title: json['title'] == null ? null : MusicTwoRowItemRendererTitle.fromJson(json['title']),
            subtitle: json['subtitle'] == null ? null : Subtitle.fromJson(json['subtitle']),
            navigationEndpoint: json['navigationEndpoint'] == null ? null : MusicTwoRowItemRendererNavigationEndpoint.fromJson(json['navigationEndpoint']),
            trackingParams: json['trackingParams'],
            menu: json['menu'] == null ? null : MusicTwoRowItemRendererMenu.fromJson(json['menu']),
            thumbnailOverlay: json['thumbnailOverlay'] == null ? null : ThumbnailOverlay.fromJson(json['thumbnailOverlay']),
        );
    }

    @override
    List<Object?> get props => [
    thumbnailRenderer, aspectRatio, title, subtitle, navigationEndpoint, trackingParams, menu, thumbnailOverlay, ];
}

class MusicTwoRowItemRendererMenu extends Equatable {
    const MusicTwoRowItemRendererMenu({
        required this.menuRenderer,
    });

    final ButtonMenuRenderer? menuRenderer;

    factory MusicTwoRowItemRendererMenu.fromJson(Map<String, dynamic> json){ 
        return MusicTwoRowItemRendererMenu(
            menuRenderer: json['menuRenderer'] == null ? null : ButtonMenuRenderer.fromJson(json['menuRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    menuRenderer, ];
}

class ButtonMenuRenderer extends Equatable {
    const ButtonMenuRenderer({
        required this.items,
        required this.trackingParams,
        required this.accessibility,
    });

    final List<PurpleItem> items;
    final String? trackingParams;
    final AccessibilityData? accessibility;

    factory ButtonMenuRenderer.fromJson(Map<String, dynamic> json){ 
        return ButtonMenuRenderer(
            items: json['items'] == null ? [] : List<PurpleItem>.from(json['items']!.map((x) => PurpleItem.fromJson(x))),
            trackingParams: json['trackingParams'],
            accessibility: json['accessibility'] == null ? null : AccessibilityData.fromJson(json['accessibility']),
        );
    }

    @override
    List<Object?> get props => [
    items, trackingParams, accessibility, ];
}

class AccessibilityData extends Equatable {
    const AccessibilityData({
        required this.accessibilityData,
    });

    final AccessibilityDataAccessibilityData? accessibilityData;

    factory AccessibilityData.fromJson(Map<String, dynamic> json){ 
        return AccessibilityData(
            accessibilityData: json['accessibilityData'] == null ? null : AccessibilityDataAccessibilityData.fromJson(json['accessibilityData']),
        );
    }

    @override
    List<Object?> get props => [
    accessibilityData, ];
}

class AccessibilityDataAccessibilityData extends Equatable {
    const AccessibilityDataAccessibilityData({
        required this.label,
    });

    final String? label;

    factory AccessibilityDataAccessibilityData.fromJson(Map<String, dynamic> json){ 
        return AccessibilityDataAccessibilityData(
            label: json['label'],
        );
    }

    @override
    List<Object?> get props => [
    label, ];
}

class PurpleItem extends Equatable {
    const PurpleItem({
        required this.menuNavigationItemRenderer,
        required this.menuServiceItemRenderer,
        required this.toggleMenuServiceItemRenderer,
    });

    final MenuItemRenderer? menuNavigationItemRenderer;
    final MenuItemRenderer? menuServiceItemRenderer;
    final PurpleToggleMenuServiceItemRenderer? toggleMenuServiceItemRenderer;

    factory PurpleItem.fromJson(Map<String, dynamic> json){ 
        return PurpleItem(
            menuNavigationItemRenderer: json['menuNavigationItemRenderer'] == null ? null : MenuItemRenderer.fromJson(json['menuNavigationItemRenderer']),
            menuServiceItemRenderer: json['menuServiceItemRenderer'] == null ? null : MenuItemRenderer.fromJson(json['menuServiceItemRenderer']),
            toggleMenuServiceItemRenderer: json['toggleMenuServiceItemRenderer'] == null ? null : PurpleToggleMenuServiceItemRenderer.fromJson(json['toggleMenuServiceItemRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    menuNavigationItemRenderer, menuServiceItemRenderer, toggleMenuServiceItemRenderer, ];
}

class MenuItemRenderer extends Equatable {
    const MenuItemRenderer({
        required this.text,
        required this.icon,
        required this.navigationEndpoint,
        required this.trackingParams,
        required this.serviceEndpoint,
    });

    final IndexClass? text;
    final Icon? icon;
    final MenuNavigationItemRendererNavigationEndpoint? navigationEndpoint;
    final String? trackingParams;
    final ServiceEndpoint? serviceEndpoint;

    factory MenuItemRenderer.fromJson(Map<String, dynamic> json){ 
        return MenuItemRenderer(
            text: json['text'] == null ? null : IndexClass.fromJson(json['text']),
            icon: json['icon'] == null ? null : Icon.fromJson(json['icon']),
            navigationEndpoint: json['navigationEndpoint'] == null ? null : MenuNavigationItemRendererNavigationEndpoint.fromJson(json['navigationEndpoint']),
            trackingParams: json['trackingParams'],
            serviceEndpoint: json['serviceEndpoint'] == null ? null : ServiceEndpoint.fromJson(json['serviceEndpoint']),
        );
    }

    @override
    List<Object?> get props => [
    text, icon, navigationEndpoint, trackingParams, serviceEndpoint, ];
}

class Icon extends Equatable {
    const Icon({
        required this.iconType,
    });

    final String? iconType;

    factory Icon.fromJson(Map<String, dynamic> json){ 
        return Icon(
            iconType: json['iconType'],
        );
    }

    @override
    List<Object?> get props => [
    iconType, ];
}

class MenuNavigationItemRendererNavigationEndpoint extends Equatable {
    const MenuNavigationItemRendererNavigationEndpoint({
        required this.clickTrackingParams,
        required this.watchPlaylistEndpoint,
        required this.modalEndpoint,
        required this.browseEndpoint,
        required this.shareEntityEndpoint,
        required this.watchEndpoint,
    });

    final String? clickTrackingParams;
    final WatchPlaylistEndpoint? watchPlaylistEndpoint;
    final ModalEndpoint? modalEndpoint;
    final PurpleBrowseEndpoint? browseEndpoint;
    final ShareEntityEndpoint? shareEntityEndpoint;
    final NavigationEndpointWatchEndpoint? watchEndpoint;

    factory MenuNavigationItemRendererNavigationEndpoint.fromJson(Map<String, dynamic> json){ 
        return MenuNavigationItemRendererNavigationEndpoint(
            clickTrackingParams: json['clickTrackingParams'],
            watchPlaylistEndpoint: json['watchPlaylistEndpoint'] == null ? null : WatchPlaylistEndpoint.fromJson(json['watchPlaylistEndpoint']),
            modalEndpoint: json['modalEndpoint'] == null ? null : ModalEndpoint.fromJson(json['modalEndpoint']),
            browseEndpoint: json['browseEndpoint'] == null ? null : PurpleBrowseEndpoint.fromJson(json['browseEndpoint']),
            shareEntityEndpoint: json['shareEntityEndpoint'] == null ? null : ShareEntityEndpoint.fromJson(json['shareEntityEndpoint']),
            watchEndpoint: json['watchEndpoint'] == null ? null : NavigationEndpointWatchEndpoint.fromJson(json['watchEndpoint']),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, watchPlaylistEndpoint, modalEndpoint, browseEndpoint, shareEntityEndpoint, watchEndpoint, ];
}

class PurpleBrowseEndpoint extends Equatable {
    const PurpleBrowseEndpoint({
        required this.browseId,
        required this.browseEndpointContextSupportedConfigs,
    });

    final String? browseId;
    final BrowseEndpointContextSupportedConfigs? browseEndpointContextSupportedConfigs;

    factory PurpleBrowseEndpoint.fromJson(Map<String, dynamic> json){ 
        return PurpleBrowseEndpoint(
            browseId: json['browseId'],
            browseEndpointContextSupportedConfigs: json['browseEndpointContextSupportedConfigs'] == null ? null : BrowseEndpointContextSupportedConfigs.fromJson(json['browseEndpointContextSupportedConfigs']),
        );
    }

    @override
    List<Object?> get props => [
    browseId, browseEndpointContextSupportedConfigs, ];
}

class BrowseEndpointContextSupportedConfigs extends Equatable {
    const BrowseEndpointContextSupportedConfigs({
        required this.browseEndpointContextMusicConfig,
    });

    final BrowseEndpointContextMusicConfig? browseEndpointContextMusicConfig;

    factory BrowseEndpointContextSupportedConfigs.fromJson(Map<String, dynamic> json){ 
        return BrowseEndpointContextSupportedConfigs(
            browseEndpointContextMusicConfig: json['browseEndpointContextMusicConfig'] == null ? null : BrowseEndpointContextMusicConfig.fromJson(json['browseEndpointContextMusicConfig']),
        );
    }

    @override
    List<Object?> get props => [
    browseEndpointContextMusicConfig, ];
}

class BrowseEndpointContextMusicConfig extends Equatable {
    const BrowseEndpointContextMusicConfig({
        required this.pageType,
    });

    final String? pageType;

    factory BrowseEndpointContextMusicConfig.fromJson(Map<String, dynamic> json){ 
        return BrowseEndpointContextMusicConfig(
            pageType: json['pageType'],
        );
    }

    @override
    List<Object?> get props => [
    pageType, ];
}

class ModalEndpoint extends Equatable {
    const ModalEndpoint({
        required this.modal,
    });

    final Modal? modal;

    factory ModalEndpoint.fromJson(Map<String, dynamic> json){ 
        return ModalEndpoint(
            modal: json['modal'] == null ? null : Modal.fromJson(json['modal']),
        );
    }

    @override
    List<Object?> get props => [
    modal, ];
}

class Modal extends Equatable {
    const Modal({
        required this.modalWithTitleAndButtonRenderer,
    });

    final ModalWithTitleAndButtonRenderer? modalWithTitleAndButtonRenderer;

    factory Modal.fromJson(Map<String, dynamic> json){ 
        return Modal(
            modalWithTitleAndButtonRenderer: json['modalWithTitleAndButtonRenderer'] == null ? null : ModalWithTitleAndButtonRenderer.fromJson(json['modalWithTitleAndButtonRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    modalWithTitleAndButtonRenderer, ];
}

class ModalWithTitleAndButtonRenderer extends Equatable {
    const ModalWithTitleAndButtonRenderer({
        required this.title,
        required this.content,
        required this.button,
    });

    final IndexClass? title;
    final IndexClass? content;
    final ModalWithTitleAndButtonRendererButton? button;

    factory ModalWithTitleAndButtonRenderer.fromJson(Map<String, dynamic> json){ 
        return ModalWithTitleAndButtonRenderer(
            title: json['title'] == null ? null : IndexClass.fromJson(json['title']),
            content: json['content'] == null ? null : IndexClass.fromJson(json['content']),
            button: json['button'] == null ? null : ModalWithTitleAndButtonRendererButton.fromJson(json['button']),
        );
    }

    @override
    List<Object?> get props => [
    title, content, button, ];
}

class ModalWithTitleAndButtonRendererButton extends Equatable {
    const ModalWithTitleAndButtonRendererButton({
        required this.buttonRenderer,
    });

    final ButtonRenderer? buttonRenderer;

    factory ModalWithTitleAndButtonRendererButton.fromJson(Map<String, dynamic> json){ 
        return ModalWithTitleAndButtonRendererButton(
            buttonRenderer: json['buttonRenderer'] == null ? null : ButtonRenderer.fromJson(json['buttonRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    buttonRenderer, ];
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
    final IndexClass? text;
    final ButtonRendererNavigationEndpoint? navigationEndpoint;
    final String? trackingParams;

    factory ButtonRenderer.fromJson(Map<String, dynamic> json){ 
        return ButtonRenderer(
            style: json['style'],
            isDisabled: json['isDisabled'],
            text: json['text'] == null ? null : IndexClass.fromJson(json['text']),
            navigationEndpoint: json['navigationEndpoint'] == null ? null : ButtonRendererNavigationEndpoint.fromJson(json['navigationEndpoint']),
            trackingParams: json['trackingParams'],
        );
    }

    @override
    List<Object?> get props => [
    style, isDisabled, text, navigationEndpoint, trackingParams, ];
}

class ButtonRendererNavigationEndpoint extends Equatable {
    const ButtonRendererNavigationEndpoint({
        required this.clickTrackingParams,
        required this.signInEndpoint,
    });

    final String? clickTrackingParams;
    final SignInEndpoint? signInEndpoint;

    factory ButtonRendererNavigationEndpoint.fromJson(Map<String, dynamic> json){ 
        return ButtonRendererNavigationEndpoint(
            clickTrackingParams: json['clickTrackingParams'],
            signInEndpoint: json['signInEndpoint'] == null ? null : SignInEndpoint.fromJson(json['signInEndpoint']),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, signInEndpoint, ];
}

class SignInEndpoint extends Equatable {
    const SignInEndpoint({
        required this.hack,
    });

    final bool? hack;

    factory SignInEndpoint.fromJson(Map<String, dynamic> json){ 
        return SignInEndpoint(
            hack: json['hack'],
        );
    }

    @override
    List<Object?> get props => [
    hack, ];
}

class IndexClass extends Equatable {
    const IndexClass({
        required this.runs,
    });

    final List<IndexRun> runs;

    factory IndexClass.fromJson(Map<String, dynamic> json){ 
        return IndexClass(
            runs: json['runs'] == null ? [] : List<IndexRun>.from(json['runs']!.map((x) => IndexRun.fromJson(x))),
        );
    }

    @override
    List<Object?> get props => [
    runs, ];
}

class IndexRun extends Equatable {
    const IndexRun({
        required this.text,
    });

    final String? text;

    factory IndexRun.fromJson(Map<String, dynamic> json){ 
        return IndexRun(
            text: json['text'],
        );
    }

    @override
    List<Object?> get props => [
    text, ];
}

class ShareEntityEndpoint extends Equatable {
    const ShareEntityEndpoint({
        required this.serializedShareEntity,
        required this.sharePanelType,
    });

    final String? serializedShareEntity;
    final String? sharePanelType;

    factory ShareEntityEndpoint.fromJson(Map<String, dynamic> json){ 
        return ShareEntityEndpoint(
            serializedShareEntity: json['serializedShareEntity'],
            sharePanelType: json['sharePanelType'],
        );
    }

    @override
    List<Object?> get props => [
    serializedShareEntity, sharePanelType, ];
}

class NavigationEndpointWatchEndpoint extends Equatable {
    const NavigationEndpointWatchEndpoint({
        required this.videoId,
        required this.playlistId,
        required this.loggingContext,
        required this.watchEndpointMusicSupportedConfigs,
        required this.playerParams,
        required this.params,
    });

    final String? videoId;
    final String? playlistId;
    final LoggingContext? loggingContext;
    final WatchEndpointMusicSupportedConfigs? watchEndpointMusicSupportedConfigs;
    final String? playerParams;
    final String? params;

    factory NavigationEndpointWatchEndpoint.fromJson(Map<String, dynamic> json){ 
        return NavigationEndpointWatchEndpoint(
            videoId: json['videoId'],
            playlistId: json['playlistId'],
            loggingContext: json['loggingContext'] == null ? null : LoggingContext.fromJson(json['loggingContext']),
            watchEndpointMusicSupportedConfigs: json['watchEndpointMusicSupportedConfigs'] == null ? null : WatchEndpointMusicSupportedConfigs.fromJson(json['watchEndpointMusicSupportedConfigs']),
            playerParams: json['playerParams'],
            params: json['params'],
        );
    }

    @override
    List<Object?> get props => [
    videoId, playlistId, loggingContext, watchEndpointMusicSupportedConfigs, playerParams, params, ];
}

class LoggingContext extends Equatable {
    const LoggingContext({
        required this.vssLoggingContext,
    });

    final VssLoggingContext? vssLoggingContext;

    factory LoggingContext.fromJson(Map<String, dynamic> json){ 
        return LoggingContext(
            vssLoggingContext: json['vssLoggingContext'] == null ? null : VssLoggingContext.fromJson(json['vssLoggingContext']),
        );
    }

    @override
    List<Object?> get props => [
    vssLoggingContext, ];
}

class VssLoggingContext extends Equatable {
    const VssLoggingContext({
        required this.serializedContextData,
    });

    final String? serializedContextData;

    factory VssLoggingContext.fromJson(Map<String, dynamic> json){ 
        return VssLoggingContext(
            serializedContextData: json['serializedContextData'],
        );
    }

    @override
    List<Object?> get props => [
    serializedContextData, ];
}

class WatchEndpointMusicSupportedConfigs extends Equatable {
    const WatchEndpointMusicSupportedConfigs({
        required this.watchEndpointMusicConfig,
    });

    final WatchEndpointMusicConfig? watchEndpointMusicConfig;

    factory WatchEndpointMusicSupportedConfigs.fromJson(Map<String, dynamic> json){ 
        return WatchEndpointMusicSupportedConfigs(
            watchEndpointMusicConfig: json['watchEndpointMusicConfig'] == null ? null : WatchEndpointMusicConfig.fromJson(json['watchEndpointMusicConfig']),
        );
    }

    @override
    List<Object?> get props => [
    watchEndpointMusicConfig, ];
}

class WatchEndpointMusicConfig extends Equatable {
    const WatchEndpointMusicConfig({
        required this.musicVideoType,
    });

    final String? musicVideoType;

    factory WatchEndpointMusicConfig.fromJson(Map<String, dynamic> json){ 
        return WatchEndpointMusicConfig(
            musicVideoType: json['musicVideoType'],
        );
    }

    @override
    List<Object?> get props => [
    musicVideoType, ];
}

class WatchPlaylistEndpoint extends Equatable {
    const WatchPlaylistEndpoint({
        required this.playlistId,
        required this.params,
    });

    final String? playlistId;
    final String? params;

    factory WatchPlaylistEndpoint.fromJson(Map<String, dynamic> json){ 
        return WatchPlaylistEndpoint(
            playlistId: json['playlistId'],
            params: json['params'],
        );
    }

    @override
    List<Object?> get props => [
    playlistId, params, ];
}

class ServiceEndpoint extends Equatable {
    const ServiceEndpoint({
        required this.clickTrackingParams,
        required this.queueAddEndpoint,
    });

    final String? clickTrackingParams;
    final QueueAddEndpoint? queueAddEndpoint;

    factory ServiceEndpoint.fromJson(Map<String, dynamic> json){ 
        return ServiceEndpoint(
            clickTrackingParams: json['clickTrackingParams'],
            queueAddEndpoint: json['queueAddEndpoint'] == null ? null : QueueAddEndpoint.fromJson(json['queueAddEndpoint']),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, queueAddEndpoint, ];
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

    factory QueueAddEndpoint.fromJson(Map<String, dynamic> json){ 
        return QueueAddEndpoint(
            queueTarget: json['queueTarget'] == null ? null : QueueTarget.fromJson(json['queueTarget']),
            queueInsertPosition: json['queueInsertPosition'],
            commands: json['commands'] == null ? [] : List<Command>.from(json['commands']!.map((x) => Command.fromJson(x))),
        );
    }

    @override
    List<Object?> get props => [
    queueTarget, queueInsertPosition, commands, ];
}

class Command extends Equatable {
    const Command({
        required this.clickTrackingParams,
        required this.addToToastAction,
    });

    final String? clickTrackingParams;
    final AddToToastAction? addToToastAction;

    factory Command.fromJson(Map<String, dynamic> json){ 
        return Command(
            clickTrackingParams: json['clickTrackingParams'],
            addToToastAction: json['addToToastAction'] == null ? null : AddToToastAction.fromJson(json['addToToastAction']),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, addToToastAction, ];
}

class AddToToastAction extends Equatable {
    const AddToToastAction({
        required this.item,
    });

    final AddToToastActionItem? item;

    factory AddToToastAction.fromJson(Map<String, dynamic> json){ 
        return AddToToastAction(
            item: json['item'] == null ? null : AddToToastActionItem.fromJson(json['item']),
        );
    }

    @override
    List<Object?> get props => [
    item, ];
}

class AddToToastActionItem extends Equatable {
    const AddToToastActionItem({
        required this.notificationTextRenderer,
    });

    final NotificationTextRenderer? notificationTextRenderer;

    factory AddToToastActionItem.fromJson(Map<String, dynamic> json){ 
        return AddToToastActionItem(
            notificationTextRenderer: json['notificationTextRenderer'] == null ? null : NotificationTextRenderer.fromJson(json['notificationTextRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    notificationTextRenderer, ];
}

class NotificationTextRenderer extends Equatable {
    const NotificationTextRenderer({
        required this.successResponseText,
        required this.trackingParams,
    });

    final IndexClass? successResponseText;
    final String? trackingParams;

    factory NotificationTextRenderer.fromJson(Map<String, dynamic> json){ 
        return NotificationTextRenderer(
            successResponseText: json['successResponseText'] == null ? null : IndexClass.fromJson(json['successResponseText']),
            trackingParams: json['trackingParams'],
        );
    }

    @override
    List<Object?> get props => [
    successResponseText, trackingParams, ];
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

    factory QueueTarget.fromJson(Map<String, dynamic> json){ 
        return QueueTarget(
            playlistId: json['playlistId'],
            onEmptyQueue: json['onEmptyQueue'] == null ? null : OnEmptyQueue.fromJson(json['onEmptyQueue']),
            videoId: json['videoId'],
        );
    }

    @override
    List<Object?> get props => [
    playlistId, onEmptyQueue, videoId, ];
}

class OnEmptyQueue extends Equatable {
    const OnEmptyQueue({
        required this.clickTrackingParams,
        required this.watchEndpoint,
    });

    final String? clickTrackingParams;
    final OnEmptyQueueWatchEndpoint? watchEndpoint;

    factory OnEmptyQueue.fromJson(Map<String, dynamic> json){ 
        return OnEmptyQueue(
            clickTrackingParams: json['clickTrackingParams'],
            watchEndpoint: json['watchEndpoint'] == null ? null : OnEmptyQueueWatchEndpoint.fromJson(json['watchEndpoint']),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, watchEndpoint, ];
}

class OnEmptyQueueWatchEndpoint extends Equatable {
    const OnEmptyQueueWatchEndpoint({
        required this.playlistId,
        required this.videoId,
    });

    final String? playlistId;
    final String? videoId;

    factory OnEmptyQueueWatchEndpoint.fromJson(Map<String, dynamic> json){ 
        return OnEmptyQueueWatchEndpoint(
            playlistId: json['playlistId'],
            videoId: json['videoId'],
        );
    }

    @override
    List<Object?> get props => [
    playlistId, videoId, ];
}

class PurpleToggleMenuServiceItemRenderer extends Equatable {
    const PurpleToggleMenuServiceItemRenderer({
        required this.defaultText,
        required this.defaultIcon,
        required this.defaultServiceEndpoint,
        required this.toggledText,
        required this.toggledIcon,
        required this.toggledServiceEndpoint,
        required this.trackingParams,
    });

    final IndexClass? defaultText;
    final Icon? defaultIcon;
    final DefaultNavigationEndpoint? defaultServiceEndpoint;
    final IndexClass? toggledText;
    final Icon? toggledIcon;
    final PurpleToggledServiceEndpoint? toggledServiceEndpoint;
    final String? trackingParams;

    factory PurpleToggleMenuServiceItemRenderer.fromJson(Map<String, dynamic> json){ 
        return PurpleToggleMenuServiceItemRenderer(
            defaultText: json['defaultText'] == null ? null : IndexClass.fromJson(json['defaultText']),
            defaultIcon: json['defaultIcon'] == null ? null : Icon.fromJson(json['defaultIcon']),
            defaultServiceEndpoint: json['defaultServiceEndpoint'] == null ? null : DefaultNavigationEndpoint.fromJson(json['defaultServiceEndpoint']),
            toggledText: json['toggledText'] == null ? null : IndexClass.fromJson(json['toggledText']),
            toggledIcon: json['toggledIcon'] == null ? null : Icon.fromJson(json['toggledIcon']),
            toggledServiceEndpoint: json['toggledServiceEndpoint'] == null ? null : PurpleToggledServiceEndpoint.fromJson(json['toggledServiceEndpoint']),
            trackingParams: json['trackingParams'],
        );
    }

    @override
    List<Object?> get props => [
    defaultText, defaultIcon, defaultServiceEndpoint, toggledText, toggledIcon, toggledServiceEndpoint, trackingParams, ];
}

class DefaultNavigationEndpoint extends Equatable {
    const DefaultNavigationEndpoint({
        required this.clickTrackingParams,
        required this.modalEndpoint,
    });

    final String? clickTrackingParams;
    final ModalEndpoint? modalEndpoint;

    factory DefaultNavigationEndpoint.fromJson(Map<String, dynamic> json){ 
        return DefaultNavigationEndpoint(
            clickTrackingParams: json['clickTrackingParams'],
            modalEndpoint: json['modalEndpoint'] == null ? null : ModalEndpoint.fromJson(json['modalEndpoint']),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, modalEndpoint, ];
}

class PurpleToggledServiceEndpoint extends Equatable {
    const PurpleToggledServiceEndpoint({
        required this.clickTrackingParams,
        required this.likeEndpoint,
    });

    final String? clickTrackingParams;
    final LikeEndpoint? likeEndpoint;

    factory PurpleToggledServiceEndpoint.fromJson(Map<String, dynamic> json){ 
        return PurpleToggledServiceEndpoint(
            clickTrackingParams: json['clickTrackingParams'],
            likeEndpoint: json['likeEndpoint'] == null ? null : LikeEndpoint.fromJson(json['likeEndpoint']),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, likeEndpoint, ];
}

class LikeEndpoint extends Equatable {
    const LikeEndpoint({
        required this.status,
        required this.target,
    });

    final String? status;
    final TargetClass? target;

    factory LikeEndpoint.fromJson(Map<String, dynamic> json){ 
        return LikeEndpoint(
            status: json['status'],
            target: json['target'] == null ? null : TargetClass.fromJson(json['target']),
        );
    }

    @override
    List<Object?> get props => [
    status, target, ];
}

class TargetClass extends Equatable {
    const TargetClass({
        required this.playlistId,
    });

    final String? playlistId;

    factory TargetClass.fromJson(Map<String, dynamic> json){ 
        return TargetClass(
            playlistId: json['playlistId'],
        );
    }

    @override
    List<Object?> get props => [
    playlistId, ];
}

class MusicTwoRowItemRendererNavigationEndpoint extends Equatable {
    const MusicTwoRowItemRendererNavigationEndpoint({
        required this.clickTrackingParams,
        required this.browseEndpoint,
    });

    final String? clickTrackingParams;
    final FluffyBrowseEndpoint? browseEndpoint;

    factory MusicTwoRowItemRendererNavigationEndpoint.fromJson(Map<String, dynamic> json){ 
        return MusicTwoRowItemRendererNavigationEndpoint(
            clickTrackingParams: json['clickTrackingParams'],
            browseEndpoint: json['browseEndpoint'] == null ? null : FluffyBrowseEndpoint.fromJson(json['browseEndpoint']),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, browseEndpoint, ];
}

class FluffyBrowseEndpoint extends Equatable {
    const FluffyBrowseEndpoint({
        required this.browseId,
        required this.params,
        required this.browseEndpointContextSupportedConfigs,
    });

    final String? browseId;
    final String? params;
    final BrowseEndpointContextSupportedConfigs? browseEndpointContextSupportedConfigs;

    factory FluffyBrowseEndpoint.fromJson(Map<String, dynamic> json){ 
        return FluffyBrowseEndpoint(
            browseId: json['browseId'],
            params: json['params'],
            browseEndpointContextSupportedConfigs: json['browseEndpointContextSupportedConfigs'] == null ? null : BrowseEndpointContextSupportedConfigs.fromJson(json['browseEndpointContextSupportedConfigs']),
        );
    }

    @override
    List<Object?> get props => [
    browseId, params, browseEndpointContextSupportedConfigs, ];
}

class Subtitle extends Equatable {
    const Subtitle({
        required this.runs,
    });

    final List<StraplineTextOneRun> runs;

    factory Subtitle.fromJson(Map<String, dynamic> json){ 
        return Subtitle(
            runs: json['runs'] == null ? [] : List<StraplineTextOneRun>.from(json['runs']!.map((x) => StraplineTextOneRun.fromJson(x))),
        );
    }

    @override
    List<Object?> get props => [
    runs, ];
}

class StraplineTextOneRun extends Equatable {
    const StraplineTextOneRun({
        required this.text,
        required this.navigationEndpoint,
    });

    final String? text;
    final PurpleNavigationEndpoint? navigationEndpoint;

    factory StraplineTextOneRun.fromJson(Map<String, dynamic> json){ 
        return StraplineTextOneRun(
            text: json['text'],
            navigationEndpoint: json['navigationEndpoint'] == null ? null : PurpleNavigationEndpoint.fromJson(json['navigationEndpoint']),
        );
    }

    @override
    List<Object?> get props => [
    text, navigationEndpoint, ];
}

class PurpleNavigationEndpoint extends Equatable {
    const PurpleNavigationEndpoint({
        required this.clickTrackingParams,
        required this.browseEndpoint,
    });

    final String? clickTrackingParams;
    final PurpleBrowseEndpoint? browseEndpoint;

    factory PurpleNavigationEndpoint.fromJson(Map<String, dynamic> json){ 
        return PurpleNavigationEndpoint(
            clickTrackingParams: json['clickTrackingParams'],
            browseEndpoint: json['browseEndpoint'] == null ? null : PurpleBrowseEndpoint.fromJson(json['browseEndpoint']),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, browseEndpoint, ];
}

class ThumbnailOverlay extends Equatable {
    const ThumbnailOverlay({
        required this.musicItemThumbnailOverlayRenderer,
    });

    final ThumbnailOverlayMusicItemThumbnailOverlayRenderer? musicItemThumbnailOverlayRenderer;

    factory ThumbnailOverlay.fromJson(Map<String, dynamic> json){ 
        return ThumbnailOverlay(
            musicItemThumbnailOverlayRenderer: json['musicItemThumbnailOverlayRenderer'] == null ? null : ThumbnailOverlayMusicItemThumbnailOverlayRenderer.fromJson(json['musicItemThumbnailOverlayRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    musicItemThumbnailOverlayRenderer, ];
}

class ThumbnailOverlayMusicItemThumbnailOverlayRenderer extends Equatable {
    const ThumbnailOverlayMusicItemThumbnailOverlayRenderer({
        required this.background,
        required this.content,
        required this.contentPosition,
        required this.displayStyle,
    });

    final MusicItemThumbnailOverlayRendererBackground? background;
    final FluffyContent? content;
    final String? contentPosition;
    final String? displayStyle;

    factory ThumbnailOverlayMusicItemThumbnailOverlayRenderer.fromJson(Map<String, dynamic> json){ 
        return ThumbnailOverlayMusicItemThumbnailOverlayRenderer(
            background: json['background'] == null ? null : MusicItemThumbnailOverlayRendererBackground.fromJson(json['background']),
            content: json['content'] == null ? null : FluffyContent.fromJson(json['content']),
            contentPosition: json['contentPosition'],
            displayStyle: json['displayStyle'],
        );
    }

    @override
    List<Object?> get props => [
    background, content, contentPosition, displayStyle, ];
}

class MusicItemThumbnailOverlayRendererBackground extends Equatable {
    const MusicItemThumbnailOverlayRendererBackground({
        required this.verticalGradient,
    });

    final VerticalGradient? verticalGradient;

    factory MusicItemThumbnailOverlayRendererBackground.fromJson(Map<String, dynamic> json){ 
        return MusicItemThumbnailOverlayRendererBackground(
            verticalGradient: json['verticalGradient'] == null ? null : VerticalGradient.fromJson(json['verticalGradient']),
        );
    }

    @override
    List<Object?> get props => [
    verticalGradient, ];
}

class VerticalGradient extends Equatable {
    const VerticalGradient({
        required this.gradientLayerColors,
    });

    final List<String> gradientLayerColors;

    factory VerticalGradient.fromJson(Map<String, dynamic> json){ 
        return VerticalGradient(
            gradientLayerColors: json['gradientLayerColors'] == null ? [] : List<String>.from(json['gradientLayerColors']!.map((x) => x)),
        );
    }

    @override
    List<Object?> get props => [
    gradientLayerColors, ];
}

class FluffyContent extends Equatable {
    const FluffyContent({
        required this.musicPlayButtonRenderer,
    });

    final ButtonMusicPlayButtonRenderer? musicPlayButtonRenderer;

    factory FluffyContent.fromJson(Map<String, dynamic> json){ 
        return FluffyContent(
            musicPlayButtonRenderer: json['musicPlayButtonRenderer'] == null ? null : ButtonMusicPlayButtonRenderer.fromJson(json['musicPlayButtonRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    musicPlayButtonRenderer, ];
}

class ButtonMusicPlayButtonRenderer extends Equatable {
    const ButtonMusicPlayButtonRenderer({
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
    final num? iconColor;
    final num? backgroundColor;
    final num? activeBackgroundColor;
    final num? loadingIndicatorColor;
    final Icon? playingIcon;
    final num? iconLoadingColor;
    final num? activeScaleFactor;
    final String? buttonSize;
    final String? rippleTarget;
    final AccessibilityData? accessibilityPlayData;
    final AccessibilityData? accessibilityPauseData;

    factory ButtonMusicPlayButtonRenderer.fromJson(Map<String, dynamic> json){ 
        return ButtonMusicPlayButtonRenderer(
            playNavigationEndpoint: json['playNavigationEndpoint'] == null ? null : PurplePlayNavigationEndpoint.fromJson(json['playNavigationEndpoint']),
            trackingParams: json['trackingParams'],
            playIcon: json['playIcon'] == null ? null : Icon.fromJson(json['playIcon']),
            pauseIcon: json['pauseIcon'] == null ? null : Icon.fromJson(json['pauseIcon']),
            iconColor: json['iconColor'],
            backgroundColor: json['backgroundColor'],
            activeBackgroundColor: json['activeBackgroundColor'],
            loadingIndicatorColor: json['loadingIndicatorColor'],
            playingIcon: json['playingIcon'] == null ? null : Icon.fromJson(json['playingIcon']),
            iconLoadingColor: json['iconLoadingColor'],
            activeScaleFactor: json['activeScaleFactor'],
            buttonSize: json['buttonSize'],
            rippleTarget: json['rippleTarget'],
            accessibilityPlayData: json['accessibilityPlayData'] == null ? null : AccessibilityData.fromJson(json['accessibilityPlayData']),
            accessibilityPauseData: json['accessibilityPauseData'] == null ? null : AccessibilityData.fromJson(json['accessibilityPauseData']),
        );
    }

    @override
    List<Object?> get props => [
    playNavigationEndpoint, trackingParams, playIcon, pauseIcon, iconColor, backgroundColor, activeBackgroundColor, loadingIndicatorColor, playingIcon, iconLoadingColor, activeScaleFactor, buttonSize, rippleTarget, accessibilityPlayData, accessibilityPauseData, ];
}

class PurplePlayNavigationEndpoint extends Equatable {
    const PurplePlayNavigationEndpoint({
        required this.clickTrackingParams,
        required this.watchPlaylistEndpoint,
    });

    final String? clickTrackingParams;
    final TargetClass? watchPlaylistEndpoint;

    factory PurplePlayNavigationEndpoint.fromJson(Map<String, dynamic> json){ 
        return PurplePlayNavigationEndpoint(
            clickTrackingParams: json['clickTrackingParams'],
            watchPlaylistEndpoint: json['watchPlaylistEndpoint'] == null ? null : TargetClass.fromJson(json['watchPlaylistEndpoint']),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, watchPlaylistEndpoint, ];
}

class MusicTwoRowItemRendererTitle extends Equatable {
    const MusicTwoRowItemRendererTitle({
        required this.runs,
    });

    final List<PurpleRun> runs;

    factory MusicTwoRowItemRendererTitle.fromJson(Map<String, dynamic> json){ 
        return MusicTwoRowItemRendererTitle(
            runs: json['runs'] == null ? [] : List<PurpleRun>.from(json['runs']!.map((x) => PurpleRun.fromJson(x))),
        );
    }

    @override
    List<Object?> get props => [
    runs, ];
}

class PurpleRun extends Equatable {
    const PurpleRun({
        required this.text,
        required this.navigationEndpoint,
    });

    final String? text;
    final MusicTwoRowItemRendererNavigationEndpoint? navigationEndpoint;

    factory PurpleRun.fromJson(Map<String, dynamic> json){ 
        return PurpleRun(
            text: json['text'],
            navigationEndpoint: json['navigationEndpoint'] == null ? null : MusicTwoRowItemRendererNavigationEndpoint.fromJson(json['navigationEndpoint']),
        );
    }

    @override
    List<Object?> get props => [
    text, navigationEndpoint, ];
}

class Header extends Equatable {
    const Header({
        required this.musicCarouselShelfBasicHeaderRenderer,
    });

    final MusicCarouselShelfBasicHeaderRenderer? musicCarouselShelfBasicHeaderRenderer;

    factory Header.fromJson(Map<String, dynamic> json){ 
        return Header(
            musicCarouselShelfBasicHeaderRenderer: json['musicCarouselShelfBasicHeaderRenderer'] == null ? null : MusicCarouselShelfBasicHeaderRenderer.fromJson(json['musicCarouselShelfBasicHeaderRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    musicCarouselShelfBasicHeaderRenderer, ];
}

class MusicCarouselShelfBasicHeaderRenderer extends Equatable {
    const MusicCarouselShelfBasicHeaderRenderer({
        required this.title,
        required this.accessibilityData,
        required this.headerStyle,
        required this.trackingParams,
    });

    final IndexClass? title;
    final AccessibilityData? accessibilityData;
    final String? headerStyle;
    final String? trackingParams;

    factory MusicCarouselShelfBasicHeaderRenderer.fromJson(Map<String, dynamic> json){ 
        return MusicCarouselShelfBasicHeaderRenderer(
            title: json['title'] == null ? null : IndexClass.fromJson(json['title']),
            accessibilityData: json['accessibilityData'] == null ? null : AccessibilityData.fromJson(json['accessibilityData']),
            headerStyle: json['headerStyle'],
            trackingParams: json['trackingParams'],
        );
    }

    @override
    List<Object?> get props => [
    title, accessibilityData, headerStyle, trackingParams, ];
}

class MusicShelfRenderer extends Equatable {
    const MusicShelfRenderer({
        required this.contents,
        required this.trackingParams,
        required this.shelfDivider,
        required this.contentsMultiSelectable,
    });

    final List<MusicShelfRendererContent> contents;
    final String? trackingParams;
    final ShelfDivider? shelfDivider;
    final bool? contentsMultiSelectable;

    factory MusicShelfRenderer.fromJson(Map<String, dynamic> json){ 
        return MusicShelfRenderer(
            contents: json['contents'] == null ? [] : List<MusicShelfRendererContent>.from(json['contents']!.map((x) => MusicShelfRendererContent.fromJson(x))),
            trackingParams: json['trackingParams'],
            shelfDivider: json['shelfDivider'] == null ? null : ShelfDivider.fromJson(json['shelfDivider']),
            contentsMultiSelectable: json['contentsMultiSelectable'],
        );
    }

    @override
    List<Object?> get props => [
    contents, trackingParams, shelfDivider, contentsMultiSelectable, ];
}

class MusicShelfRendererContent extends Equatable {
    const MusicShelfRendererContent({
        required this.musicResponsiveListItemRenderer,
    });

    final MusicResponsiveListItemRenderer? musicResponsiveListItemRenderer;

    factory MusicShelfRendererContent.fromJson(Map<String, dynamic> json){ 
        return MusicShelfRendererContent(
            musicResponsiveListItemRenderer: json['musicResponsiveListItemRenderer'] == null ? null : MusicResponsiveListItemRenderer.fromJson(json['musicResponsiveListItemRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    musicResponsiveListItemRenderer, ];
}

class MusicResponsiveListItemRenderer extends Equatable {
    const MusicResponsiveListItemRenderer({
        required this.trackingParams,
        required this.overlay,
        required this.flexColumns,
        required this.fixedColumns,
        required this.menu,
        required this.playlistItemData,
        required this.itemHeight,
        required this.index,
        required this.multiSelectCheckbox,
    });

    final String? trackingParams;
    final Overlay? overlay;
    final List<FlexColumn> flexColumns;
    final List<FixedColumn> fixedColumns;
    final MusicResponsiveListItemRendererMenu? menu;
    final PlaylistItemData? playlistItemData;
    final String? itemHeight;
    final IndexClass? index;
    final MultiSelectCheckbox? multiSelectCheckbox;

    factory MusicResponsiveListItemRenderer.fromJson(Map<String, dynamic> json){ 
        return MusicResponsiveListItemRenderer(
            trackingParams: json['trackingParams'],
            overlay: json['overlay'] == null ? null : Overlay.fromJson(json['overlay']),
            flexColumns: json['flexColumns'] == null ? [] : List<FlexColumn>.from(json['flexColumns']!.map((x) => FlexColumn.fromJson(x))),
            fixedColumns: json['fixedColumns'] == null ? [] : List<FixedColumn>.from(json['fixedColumns']!.map((x) => FixedColumn.fromJson(x))),
            menu: json['menu'] == null ? null : MusicResponsiveListItemRendererMenu.fromJson(json['menu']),
            playlistItemData: json['playlistItemData'] == null ? null : PlaylistItemData.fromJson(json['playlistItemData']),
            itemHeight: json['itemHeight'],
            index: json['index'] == null ? null : IndexClass.fromJson(json['index']),
            multiSelectCheckbox: json['multiSelectCheckbox'] == null ? null : MultiSelectCheckbox.fromJson(json['multiSelectCheckbox']),
        );
    }

    @override
    List<Object?> get props => [
    trackingParams, overlay, flexColumns, fixedColumns, menu, playlistItemData, itemHeight, index, multiSelectCheckbox, ];
}

class FixedColumn extends Equatable {
    const FixedColumn({
        required this.musicResponsiveListItemFixedColumnRenderer,
    });

    final MusicResponsiveListItemFixedColumnRenderer? musicResponsiveListItemFixedColumnRenderer;

    factory FixedColumn.fromJson(Map<String, dynamic> json){ 
        return FixedColumn(
            musicResponsiveListItemFixedColumnRenderer: json['musicResponsiveListItemFixedColumnRenderer'] == null ? null : MusicResponsiveListItemFixedColumnRenderer.fromJson(json['musicResponsiveListItemFixedColumnRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    musicResponsiveListItemFixedColumnRenderer, ];
}

class MusicResponsiveListItemFixedColumnRenderer extends Equatable {
    const MusicResponsiveListItemFixedColumnRenderer({
        required this.text,
        required this.displayPriority,
        required this.size,
    });

    final MusicResponsiveListItemFixedColumnRendererText? text;
    final String? displayPriority;
    final String? size;

    factory MusicResponsiveListItemFixedColumnRenderer.fromJson(Map<String, dynamic> json){ 
        return MusicResponsiveListItemFixedColumnRenderer(
            text: json['text'] == null ? null : MusicResponsiveListItemFixedColumnRendererText.fromJson(json['text']),
            displayPriority: json['displayPriority'],
            size: json['size'],
        );
    }

    @override
    List<Object?> get props => [
    text, displayPriority, size, ];
}

class MusicResponsiveListItemFixedColumnRendererText extends Equatable {
    const MusicResponsiveListItemFixedColumnRendererText({
        required this.runs,
        required this.accessibility,
    });

    final List<IndexRun> runs;
    final AccessibilityData? accessibility;

    factory MusicResponsiveListItemFixedColumnRendererText.fromJson(Map<String, dynamic> json){ 
        return MusicResponsiveListItemFixedColumnRendererText(
            runs: json['runs'] == null ? [] : List<IndexRun>.from(json['runs']!.map((x) => IndexRun.fromJson(x))),
            accessibility: json['accessibility'] == null ? null : AccessibilityData.fromJson(json['accessibility']),
        );
    }

    @override
    List<Object?> get props => [
    runs, accessibility, ];
}

class FlexColumn extends Equatable {
    const FlexColumn({
        required this.musicResponsiveListItemFlexColumnRenderer,
    });

    final MusicResponsiveListItemFlexColumnRenderer? musicResponsiveListItemFlexColumnRenderer;

    factory FlexColumn.fromJson(Map<String, dynamic> json){ 
        return FlexColumn(
            musicResponsiveListItemFlexColumnRenderer: json['musicResponsiveListItemFlexColumnRenderer'] == null ? null : MusicResponsiveListItemFlexColumnRenderer.fromJson(json['musicResponsiveListItemFlexColumnRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    musicResponsiveListItemFlexColumnRenderer, ];
}

class MusicResponsiveListItemFlexColumnRenderer extends Equatable {
    const MusicResponsiveListItemFlexColumnRenderer({
        required this.text,
        required this.displayPriority,
    });

    final MusicResponsiveListItemFlexColumnRendererText? text;
    final String? displayPriority;

    factory MusicResponsiveListItemFlexColumnRenderer.fromJson(Map<String, dynamic> json){ 
        return MusicResponsiveListItemFlexColumnRenderer(
            text: json['text'] == null ? null : MusicResponsiveListItemFlexColumnRendererText.fromJson(json['text']),
            displayPriority: json['displayPriority'],
        );
    }

    @override
    List<Object?> get props => [
    text, displayPriority, ];
}

class MusicResponsiveListItemFlexColumnRendererText extends Equatable {
    const MusicResponsiveListItemFlexColumnRendererText({
        required this.runs,
        required this.accessibility,
    });

    final List<FluffyRun> runs;
    final AccessibilityData? accessibility;

    factory MusicResponsiveListItemFlexColumnRendererText.fromJson(Map<String, dynamic> json){ 
        return MusicResponsiveListItemFlexColumnRendererText(
            runs: json['runs'] == null ? [] : List<FluffyRun>.from(json['runs']!.map((x) => FluffyRun.fromJson(x))),
            accessibility: json['accessibility'] == null ? null : AccessibilityData.fromJson(json['accessibility']),
        );
    }

    @override
    List<Object?> get props => [
    runs, accessibility, ];
}

class FluffyRun extends Equatable {
    const FluffyRun({
        required this.text,
        required this.navigationEndpoint,
    });

    final String? text;
    final FluffyNavigationEndpoint? navigationEndpoint;

    factory FluffyRun.fromJson(Map<String, dynamic> json){ 
        return FluffyRun(
            text: json['text'],
            navigationEndpoint: json['navigationEndpoint'] == null ? null : FluffyNavigationEndpoint.fromJson(json['navigationEndpoint']),
        );
    }

    @override
    List<Object?> get props => [
    text, navigationEndpoint, ];
}

class FluffyNavigationEndpoint extends Equatable {
    const FluffyNavigationEndpoint({
        required this.clickTrackingParams,
        required this.watchEndpoint,
        required this.browseEndpoint,
    });

    final String? clickTrackingParams;
    final NavigationEndpointWatchEndpoint? watchEndpoint;
    final PurpleBrowseEndpoint? browseEndpoint;

    factory FluffyNavigationEndpoint.fromJson(Map<String, dynamic> json){ 
        return FluffyNavigationEndpoint(
            clickTrackingParams: json['clickTrackingParams'],
            watchEndpoint: json['watchEndpoint'] == null ? null : NavigationEndpointWatchEndpoint.fromJson(json['watchEndpoint']),
            browseEndpoint: json['browseEndpoint'] == null ? null : PurpleBrowseEndpoint.fromJson(json['browseEndpoint']),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, watchEndpoint, browseEndpoint, ];
}

class MusicResponsiveListItemRendererMenu extends Equatable {
    const MusicResponsiveListItemRendererMenu({
        required this.menuRenderer,
    });

    final PurpleMenuRenderer? menuRenderer;

    factory MusicResponsiveListItemRendererMenu.fromJson(Map<String, dynamic> json){ 
        return MusicResponsiveListItemRendererMenu(
            menuRenderer: json['menuRenderer'] == null ? null : PurpleMenuRenderer.fromJson(json['menuRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    menuRenderer, ];
}

class PurpleMenuRenderer extends Equatable {
    const PurpleMenuRenderer({
        required this.items,
        required this.trackingParams,
        required this.topLevelButtons,
        required this.accessibility,
    });

    final List<FluffyItem> items;
    final String? trackingParams;
    final List<TopLevelButton> topLevelButtons;
    final AccessibilityData? accessibility;

    factory PurpleMenuRenderer.fromJson(Map<String, dynamic> json){ 
        return PurpleMenuRenderer(
            items: json['items'] == null ? [] : List<FluffyItem>.from(json['items']!.map((x) => FluffyItem.fromJson(x))),
            trackingParams: json['trackingParams'],
            topLevelButtons: json['topLevelButtons'] == null ? [] : List<TopLevelButton>.from(json['topLevelButtons']!.map((x) => TopLevelButton.fromJson(x))),
            accessibility: json['accessibility'] == null ? null : AccessibilityData.fromJson(json['accessibility']),
        );
    }

    @override
    List<Object?> get props => [
    items, trackingParams, topLevelButtons, accessibility, ];
}

class FluffyItem extends Equatable {
    const FluffyItem({
        required this.menuNavigationItemRenderer,
        required this.menuServiceItemRenderer,
        required this.toggleMenuServiceItemRenderer,
    });

    final MenuItemRenderer? menuNavigationItemRenderer;
    final MenuItemRenderer? menuServiceItemRenderer;
    final FluffyToggleMenuServiceItemRenderer? toggleMenuServiceItemRenderer;

    factory FluffyItem.fromJson(Map<String, dynamic> json){ 
        return FluffyItem(
            menuNavigationItemRenderer: json['menuNavigationItemRenderer'] == null ? null : MenuItemRenderer.fromJson(json['menuNavigationItemRenderer']),
            menuServiceItemRenderer: json['menuServiceItemRenderer'] == null ? null : MenuItemRenderer.fromJson(json['menuServiceItemRenderer']),
            toggleMenuServiceItemRenderer: json['toggleMenuServiceItemRenderer'] == null ? null : FluffyToggleMenuServiceItemRenderer.fromJson(json['toggleMenuServiceItemRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    menuNavigationItemRenderer, menuServiceItemRenderer, toggleMenuServiceItemRenderer, ];
}

class FluffyToggleMenuServiceItemRenderer extends Equatable {
    const FluffyToggleMenuServiceItemRenderer({
        required this.defaultText,
        required this.defaultIcon,
        required this.defaultServiceEndpoint,
        required this.toggledText,
        required this.toggledIcon,
        required this.toggledServiceEndpoint,
        required this.trackingParams,
    });

    final IndexClass? defaultText;
    final Icon? defaultIcon;
    final DefaultNavigationEndpoint? defaultServiceEndpoint;
    final IndexClass? toggledText;
    final Icon? toggledIcon;
    final FluffyToggledServiceEndpoint? toggledServiceEndpoint;
    final String? trackingParams;

    factory FluffyToggleMenuServiceItemRenderer.fromJson(Map<String, dynamic> json){ 
        return FluffyToggleMenuServiceItemRenderer(
            defaultText: json['defaultText'] == null ? null : IndexClass.fromJson(json['defaultText']),
            defaultIcon: json['defaultIcon'] == null ? null : Icon.fromJson(json['defaultIcon']),
            defaultServiceEndpoint: json['defaultServiceEndpoint'] == null ? null : DefaultNavigationEndpoint.fromJson(json['defaultServiceEndpoint']),
            toggledText: json['toggledText'] == null ? null : IndexClass.fromJson(json['toggledText']),
            toggledIcon: json['toggledIcon'] == null ? null : Icon.fromJson(json['toggledIcon']),
            toggledServiceEndpoint: json['toggledServiceEndpoint'] == null ? null : FluffyToggledServiceEndpoint.fromJson(json['toggledServiceEndpoint']),
            trackingParams: json['trackingParams'],
        );
    }

    @override
    List<Object?> get props => [
    defaultText, defaultIcon, defaultServiceEndpoint, toggledText, toggledIcon, toggledServiceEndpoint, trackingParams, ];
}

class FluffyToggledServiceEndpoint extends Equatable {
    const FluffyToggledServiceEndpoint({
        required this.clickTrackingParams,
        required this.feedbackEndpoint,
    });

    final String? clickTrackingParams;
    final FeedbackEndpoint? feedbackEndpoint;

    factory FluffyToggledServiceEndpoint.fromJson(Map<String, dynamic> json){ 
        return FluffyToggledServiceEndpoint(
            clickTrackingParams: json['clickTrackingParams'],
            feedbackEndpoint: json['feedbackEndpoint'] == null ? null : FeedbackEndpoint.fromJson(json['feedbackEndpoint']),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, feedbackEndpoint, ];
}

class FeedbackEndpoint extends Equatable {
    const FeedbackEndpoint({
        required this.feedbackToken,
    });

    final String? feedbackToken;

    factory FeedbackEndpoint.fromJson(Map<String, dynamic> json){ 
        return FeedbackEndpoint(
            feedbackToken: json['feedbackToken'],
        );
    }

    @override
    List<Object?> get props => [
    feedbackToken, ];
}

class TopLevelButton extends Equatable {
    const TopLevelButton({
        required this.likeButtonRenderer,
    });

    final LikeButtonRenderer? likeButtonRenderer;

    factory TopLevelButton.fromJson(Map<String, dynamic> json){ 
        return TopLevelButton(
            likeButtonRenderer: json['likeButtonRenderer'] == null ? null : LikeButtonRenderer.fromJson(json['likeButtonRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    likeButtonRenderer, ];
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
    final DefaultNavigationEndpoint? dislikeNavigationEndpoint;
    final DefaultNavigationEndpoint? likeCommand;

    factory LikeButtonRenderer.fromJson(Map<String, dynamic> json){ 
        return LikeButtonRenderer(
            target: json['target'] == null ? null : Target.fromJson(json['target']),
            likeStatus: json['likeStatus'],
            trackingParams: json['trackingParams'],
            likesAllowed: json['likesAllowed'],
            dislikeNavigationEndpoint: json['dislikeNavigationEndpoint'] == null ? null : DefaultNavigationEndpoint.fromJson(json['dislikeNavigationEndpoint']),
            likeCommand: json['likeCommand'] == null ? null : DefaultNavigationEndpoint.fromJson(json['likeCommand']),
        );
    }

    @override
    List<Object?> get props => [
    target, likeStatus, trackingParams, likesAllowed, dislikeNavigationEndpoint, likeCommand, ];
}

class Target extends Equatable {
    const Target({
        required this.videoId,
    });

    final String? videoId;

    factory Target.fromJson(Map<String, dynamic> json){ 
        return Target(
            videoId: json['videoId'],
        );
    }

    @override
    List<Object?> get props => [
    videoId, ];
}

class MultiSelectCheckbox extends Equatable {
    const MultiSelectCheckbox({
        required this.checkboxRenderer,
    });

    final CheckboxRenderer? checkboxRenderer;

    factory MultiSelectCheckbox.fromJson(Map<String, dynamic> json){ 
        return MultiSelectCheckbox(
            checkboxRenderer: json['checkboxRenderer'] == null ? null : CheckboxRenderer.fromJson(json['checkboxRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    checkboxRenderer, ];
}

class CheckboxRenderer extends Equatable {
    const CheckboxRenderer({
        required this.onSelectionChangeCommand,
        required this.checkedState,
        required this.trackingParams,
    });

    final OnSelectionChangeCommand? onSelectionChangeCommand;
    final String? checkedState;
    final String? trackingParams;

    factory CheckboxRenderer.fromJson(Map<String, dynamic> json){ 
        return CheckboxRenderer(
            onSelectionChangeCommand: json['onSelectionChangeCommand'] == null ? null : OnSelectionChangeCommand.fromJson(json['onSelectionChangeCommand']),
            checkedState: json['checkedState'],
            trackingParams: json['trackingParams'],
        );
    }

    @override
    List<Object?> get props => [
    onSelectionChangeCommand, checkedState, trackingParams, ];
}

class OnSelectionChangeCommand extends Equatable {
    const OnSelectionChangeCommand({
        required this.clickTrackingParams,
        required this.updateMultiSelectStateCommand,
    });

    final String? clickTrackingParams;
    final UpdateMultiSelectStateCommand? updateMultiSelectStateCommand;

    factory OnSelectionChangeCommand.fromJson(Map<String, dynamic> json){ 
        return OnSelectionChangeCommand(
            clickTrackingParams: json['clickTrackingParams'],
            updateMultiSelectStateCommand: json['updateMultiSelectStateCommand'] == null ? null : UpdateMultiSelectStateCommand.fromJson(json['updateMultiSelectStateCommand']),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, updateMultiSelectStateCommand, ];
}

class UpdateMultiSelectStateCommand extends Equatable {
    const UpdateMultiSelectStateCommand({
        required this.multiSelectParams,
        required this.multiSelectItem,
    });

    final String? multiSelectParams;
    final String? multiSelectItem;

    factory UpdateMultiSelectStateCommand.fromJson(Map<String, dynamic> json){ 
        return UpdateMultiSelectStateCommand(
            multiSelectParams: json['multiSelectParams'],
            multiSelectItem: json['multiSelectItem'],
        );
    }

    @override
    List<Object?> get props => [
    multiSelectParams, multiSelectItem, ];
}

class Overlay extends Equatable {
    const Overlay({
        required this.musicItemThumbnailOverlayRenderer,
    });

    final OverlayMusicItemThumbnailOverlayRenderer? musicItemThumbnailOverlayRenderer;

    factory Overlay.fromJson(Map<String, dynamic> json){ 
        return Overlay(
            musicItemThumbnailOverlayRenderer: json['musicItemThumbnailOverlayRenderer'] == null ? null : OverlayMusicItemThumbnailOverlayRenderer.fromJson(json['musicItemThumbnailOverlayRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    musicItemThumbnailOverlayRenderer, ];
}

class OverlayMusicItemThumbnailOverlayRenderer extends Equatable {
    const OverlayMusicItemThumbnailOverlayRenderer({
        required this.background,
        required this.content,
        required this.contentPosition,
        required this.displayStyle,
    });

    final MusicItemThumbnailOverlayRendererBackground? background;
    final TentacledContent? content;
    final String? contentPosition;
    final String? displayStyle;

    factory OverlayMusicItemThumbnailOverlayRenderer.fromJson(Map<String, dynamic> json){ 
        return OverlayMusicItemThumbnailOverlayRenderer(
            background: json['background'] == null ? null : MusicItemThumbnailOverlayRendererBackground.fromJson(json['background']),
            content: json['content'] == null ? null : TentacledContent.fromJson(json['content']),
            contentPosition: json['contentPosition'],
            displayStyle: json['displayStyle'],
        );
    }

    @override
    List<Object?> get props => [
    background, content, contentPosition, displayStyle, ];
}

class TentacledContent extends Equatable {
    const TentacledContent({
        required this.musicPlayButtonRenderer,
    });

    final PurpleMusicPlayButtonRenderer? musicPlayButtonRenderer;

    factory TentacledContent.fromJson(Map<String, dynamic> json){ 
        return TentacledContent(
            musicPlayButtonRenderer: json['musicPlayButtonRenderer'] == null ? null : PurpleMusicPlayButtonRenderer.fromJson(json['musicPlayButtonRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    musicPlayButtonRenderer, ];
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

    final FluffyPlayNavigationEndpoint? playNavigationEndpoint;
    final String? trackingParams;
    final Icon? playIcon;
    final Icon? pauseIcon;
    final num? iconColor;
    final num? backgroundColor;
    final num? activeBackgroundColor;
    final num? loadingIndicatorColor;
    final Icon? playingIcon;
    final num? iconLoadingColor;
    final num? activeScaleFactor;
    final String? buttonSize;
    final String? rippleTarget;
    final AccessibilityData? accessibilityPlayData;
    final AccessibilityData? accessibilityPauseData;

    factory PurpleMusicPlayButtonRenderer.fromJson(Map<String, dynamic> json){ 
        return PurpleMusicPlayButtonRenderer(
            playNavigationEndpoint: json['playNavigationEndpoint'] == null ? null : FluffyPlayNavigationEndpoint.fromJson(json['playNavigationEndpoint']),
            trackingParams: json['trackingParams'],
            playIcon: json['playIcon'] == null ? null : Icon.fromJson(json['playIcon']),
            pauseIcon: json['pauseIcon'] == null ? null : Icon.fromJson(json['pauseIcon']),
            iconColor: json['iconColor'],
            backgroundColor: json['backgroundColor'],
            activeBackgroundColor: json['activeBackgroundColor'],
            loadingIndicatorColor: json['loadingIndicatorColor'],
            playingIcon: json['playingIcon'] == null ? null : Icon.fromJson(json['playingIcon']),
            iconLoadingColor: json['iconLoadingColor'],
            activeScaleFactor: json['activeScaleFactor'],
            buttonSize: json['buttonSize'],
            rippleTarget: json['rippleTarget'],
            accessibilityPlayData: json['accessibilityPlayData'] == null ? null : AccessibilityData.fromJson(json['accessibilityPlayData']),
            accessibilityPauseData: json['accessibilityPauseData'] == null ? null : AccessibilityData.fromJson(json['accessibilityPauseData']),
        );
    }

    @override
    List<Object?> get props => [
    playNavigationEndpoint, trackingParams, playIcon, pauseIcon, iconColor, backgroundColor, activeBackgroundColor, loadingIndicatorColor, playingIcon, iconLoadingColor, activeScaleFactor, buttonSize, rippleTarget, accessibilityPlayData, accessibilityPauseData, ];
}

class FluffyPlayNavigationEndpoint extends Equatable {
    const FluffyPlayNavigationEndpoint({
        required this.clickTrackingParams,
        required this.watchEndpoint,
    });

    final String? clickTrackingParams;
    final PlayNavigationEndpointWatchEndpoint? watchEndpoint;

    factory FluffyPlayNavigationEndpoint.fromJson(Map<String, dynamic> json){ 
        return FluffyPlayNavigationEndpoint(
            clickTrackingParams: json['clickTrackingParams'],
            watchEndpoint: json['watchEndpoint'] == null ? null : PlayNavigationEndpointWatchEndpoint.fromJson(json['watchEndpoint']),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, watchEndpoint, ];
}

class PlayNavigationEndpointWatchEndpoint extends Equatable {
    const PlayNavigationEndpointWatchEndpoint({
        required this.videoId,
        required this.playlistId,
        required this.index,
        required this.playerParams,
        required this.playlistSetVideoId,
        required this.loggingContext,
        required this.watchEndpointMusicSupportedConfigs,
    });

    final String? videoId;
    final String? playlistId;
    final num? index;
    final String? playerParams;
    final String? playlistSetVideoId;
    final LoggingContext? loggingContext;
    final WatchEndpointMusicSupportedConfigs? watchEndpointMusicSupportedConfigs;

    factory PlayNavigationEndpointWatchEndpoint.fromJson(Map<String, dynamic> json){ 
        return PlayNavigationEndpointWatchEndpoint(
            videoId: json['videoId'],
            playlistId: json['playlistId'],
            index: json['index'],
            playerParams: json['playerParams'],
            playlistSetVideoId: json['playlistSetVideoId'],
            loggingContext: json['loggingContext'] == null ? null : LoggingContext.fromJson(json['loggingContext']),
            watchEndpointMusicSupportedConfigs: json['watchEndpointMusicSupportedConfigs'] == null ? null : WatchEndpointMusicSupportedConfigs.fromJson(json['watchEndpointMusicSupportedConfigs']),
        );
    }

    @override
    List<Object?> get props => [
    videoId, playlistId, index, playerParams, playlistSetVideoId, loggingContext, watchEndpointMusicSupportedConfigs, ];
}

class PlaylistItemData extends Equatable {
    const PlaylistItemData({
        required this.playlistSetVideoId,
        required this.videoId,
    });

    final String? playlistSetVideoId;
    final String? videoId;

    factory PlaylistItemData.fromJson(Map<String, dynamic> json){ 
        return PlaylistItemData(
            playlistSetVideoId: json['playlistSetVideoId'],
            videoId: json['videoId'],
        );
    }

    @override
    List<Object?> get props => [
    playlistSetVideoId, videoId, ];
}

class ShelfDivider extends Equatable {
    const ShelfDivider({
        required this.musicShelfDividerRenderer,
    });

    final MusicShelfDividerRenderer? musicShelfDividerRenderer;

    factory ShelfDivider.fromJson(Map<String, dynamic> json){ 
        return ShelfDivider(
            musicShelfDividerRenderer: json['musicShelfDividerRenderer'] == null ? null : MusicShelfDividerRenderer.fromJson(json['musicShelfDividerRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    musicShelfDividerRenderer, ];
}

class MusicShelfDividerRenderer extends Equatable {
    const MusicShelfDividerRenderer({
        required this.hidden,
    });

    final bool? hidden;

    factory MusicShelfDividerRenderer.fromJson(Map<String, dynamic> json){ 
        return MusicShelfDividerRenderer(
            hidden: json['hidden'],
        );
    }

    @override
    List<Object?> get props => [
    hidden, ];
}

class Tab extends Equatable {
    const Tab({
        required this.tabRenderer,
    });

    final TabRenderer? tabRenderer;

    factory Tab.fromJson(Map<String, dynamic> json){ 
        return Tab(
            tabRenderer: json['tabRenderer'] == null ? null : TabRenderer.fromJson(json['tabRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    tabRenderer, ];
}

class TabRenderer extends Equatable {
    const TabRenderer({
        required this.content,
        required this.trackingParams,
    });

    final TabRendererContent? content;
    final String? trackingParams;

    factory TabRenderer.fromJson(Map<String, dynamic> json){ 
        return TabRenderer(
            content: json['content'] == null ? null : TabRendererContent.fromJson(json['content']),
            trackingParams: json['trackingParams'],
        );
    }

    @override
    List<Object?> get props => [
    content, trackingParams, ];
}

class TabRendererContent extends Equatable {
    const TabRendererContent({
        required this.sectionListRenderer,
    });

    final ContentSectionListRenderer? sectionListRenderer;

    factory TabRendererContent.fromJson(Map<String, dynamic> json){ 
        return TabRendererContent(
            sectionListRenderer: json['sectionListRenderer'] == null ? null : ContentSectionListRenderer.fromJson(json['sectionListRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    sectionListRenderer, ];
}

class ContentSectionListRenderer extends Equatable {
    const ContentSectionListRenderer({
        required this.contents,
        required this.trackingParams,
    });

    final List<StickyContent> contents;
    final String? trackingParams;

    factory ContentSectionListRenderer.fromJson(Map<String, dynamic> json){ 
        return ContentSectionListRenderer(
            contents: json['contents'] == null ? [] : List<StickyContent>.from(json['contents']!.map((x) => StickyContent.fromJson(x))),
            trackingParams: json['trackingParams'],
        );
    }

    @override
    List<Object?> get props => [
    contents, trackingParams, ];
}

class StickyContent extends Equatable {
    const StickyContent({
        required this.musicResponsiveHeaderRenderer,
    });

    final MusicResponsiveHeaderRenderer? musicResponsiveHeaderRenderer;

    factory StickyContent.fromJson(Map<String, dynamic> json){ 
        return StickyContent(
            musicResponsiveHeaderRenderer: json['musicResponsiveHeaderRenderer'] == null ? null : MusicResponsiveHeaderRenderer.fromJson(json['musicResponsiveHeaderRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    musicResponsiveHeaderRenderer, ];
}

class MusicResponsiveHeaderRenderer extends Equatable {
    const MusicResponsiveHeaderRenderer({
        required this.thumbnail,
        required this.buttons,
        required this.title,
        required this.subtitle,
        required this.trackingParams,
        required this.straplineTextOne,
        required this.straplineThumbnail,
        required this.secondSubtitle,
    });

    final ThumbnailRendererClass? thumbnail;
    final List<ButtonElement> buttons;
    final IndexClass? title;
    final IndexClass? subtitle;
    final String? trackingParams;
    final Subtitle? straplineTextOne;
    final ThumbnailRendererClass? straplineThumbnail;
    final IndexClass? secondSubtitle;

    factory MusicResponsiveHeaderRenderer.fromJson(Map<String, dynamic> json){ 
        return MusicResponsiveHeaderRenderer(
            thumbnail: json['thumbnail'] == null ? null : ThumbnailRendererClass.fromJson(json['thumbnail']),
            buttons: json['buttons'] == null ? [] : List<ButtonElement>.from(json['buttons']!.map((x) => ButtonElement.fromJson(x))),
            title: json['title'] == null ? null : IndexClass.fromJson(json['title']),
            subtitle: json['subtitle'] == null ? null : IndexClass.fromJson(json['subtitle']),
            trackingParams: json['trackingParams'],
            straplineTextOne: json['straplineTextOne'] == null ? null : Subtitle.fromJson(json['straplineTextOne']),
            straplineThumbnail: json['straplineThumbnail'] == null ? null : ThumbnailRendererClass.fromJson(json['straplineThumbnail']),
            secondSubtitle: json['secondSubtitle'] == null ? null : IndexClass.fromJson(json['secondSubtitle']),
        );
    }

    @override
    List<Object?> get props => [
    thumbnail, buttons, title, subtitle, trackingParams, straplineTextOne, straplineThumbnail, secondSubtitle, ];
}

class ButtonElement extends Equatable {
    const ButtonElement({
        required this.toggleButtonRenderer,
        required this.musicPlayButtonRenderer,
        required this.menuRenderer,
    });

    final ToggleButtonRenderer? toggleButtonRenderer;
    final ButtonMusicPlayButtonRenderer? musicPlayButtonRenderer;
    final ButtonMenuRenderer? menuRenderer;

    factory ButtonElement.fromJson(Map<String, dynamic> json){ 
        return ButtonElement(
            toggleButtonRenderer: json['toggleButtonRenderer'] == null ? null : ToggleButtonRenderer.fromJson(json['toggleButtonRenderer']),
            musicPlayButtonRenderer: json['musicPlayButtonRenderer'] == null ? null : ButtonMusicPlayButtonRenderer.fromJson(json['musicPlayButtonRenderer']),
            menuRenderer: json['menuRenderer'] == null ? null : ButtonMenuRenderer.fromJson(json['menuRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    toggleButtonRenderer, musicPlayButtonRenderer, menuRenderer, ];
}

class ToggleButtonRenderer extends Equatable {
    const ToggleButtonRenderer({
        required this.isToggled,
        required this.isDisabled,
        required this.defaultIcon,
        required this.toggledIcon,
        required this.trackingParams,
        required this.defaultNavigationEndpoint,
        required this.accessibilityData,
        required this.toggledAccessibilityData,
    });

    final bool? isToggled;
    final bool? isDisabled;
    final Icon? defaultIcon;
    final Icon? toggledIcon;
    final String? trackingParams;
    final DefaultNavigationEndpoint? defaultNavigationEndpoint;
    final AccessibilityData? accessibilityData;
    final AccessibilityData? toggledAccessibilityData;

    factory ToggleButtonRenderer.fromJson(Map<String, dynamic> json){ 
        return ToggleButtonRenderer(
            isToggled: json['isToggled'],
            isDisabled: json['isDisabled'],
            defaultIcon: json['defaultIcon'] == null ? null : Icon.fromJson(json['defaultIcon']),
            toggledIcon: json['toggledIcon'] == null ? null : Icon.fromJson(json['toggledIcon']),
            trackingParams: json['trackingParams'],
            defaultNavigationEndpoint: json['defaultNavigationEndpoint'] == null ? null : DefaultNavigationEndpoint.fromJson(json['defaultNavigationEndpoint']),
            accessibilityData: json['accessibilityData'] == null ? null : AccessibilityData.fromJson(json['accessibilityData']),
            toggledAccessibilityData: json['toggledAccessibilityData'] == null ? null : AccessibilityData.fromJson(json['toggledAccessibilityData']),
        );
    }

    @override
    List<Object?> get props => [
    isToggled, isDisabled, defaultIcon, toggledIcon, trackingParams, defaultNavigationEndpoint, accessibilityData, toggledAccessibilityData, ];
}

class Microformat extends Equatable {
    const Microformat({
        required this.microformatDataRenderer,
    });

    final MicroformatDataRenderer? microformatDataRenderer;

    factory Microformat.fromJson(Map<String, dynamic> json){ 
        return Microformat(
            microformatDataRenderer: json['microformatDataRenderer'] == null ? null : MicroformatDataRenderer.fromJson(json['microformatDataRenderer']),
        );
    }

    @override
    List<Object?> get props => [
    microformatDataRenderer, ];
}

class MicroformatDataRenderer extends Equatable {
    const MicroformatDataRenderer({
        required this.urlCanonical,
        required this.title,
        required this.description,
        required this.thumbnail,
        required this.siteName,
        required this.appName,
        required this.androidPackage,
        required this.iosAppStoreId,
        required this.ogType,
        required this.urlApplinksWeb,
        required this.urlApplinksIos,
        required this.urlApplinksAndroid,
        required this.urlTwitterIos,
        required this.urlTwitterAndroid,
        required this.twitterCardType,
        required this.twitterSiteHandle,
    });

    final String? urlCanonical;
    final String? title;
    final String? description;
    final MusicThumbnailRendererThumbnail? thumbnail;
    final String? siteName;
    final String? appName;
    final String? androidPackage;
    final String? iosAppStoreId;
    final String? ogType;
    final String? urlApplinksWeb;
    final String? urlApplinksIos;
    final String? urlApplinksAndroid;
    final String? urlTwitterIos;
    final String? urlTwitterAndroid;
    final String? twitterCardType;
    final String? twitterSiteHandle;

    factory MicroformatDataRenderer.fromJson(Map<String, dynamic> json){ 
        return MicroformatDataRenderer(
            urlCanonical: json['urlCanonical'],
            title: json['title'],
            description: json['description'],
            thumbnail: json['thumbnail'] == null ? null : MusicThumbnailRendererThumbnail.fromJson(json['thumbnail']),
            siteName: json['siteName'],
            appName: json['appName'],
            androidPackage: json['androidPackage'],
            iosAppStoreId: json['iosAppStoreId'],
            ogType: json['ogType'],
            urlApplinksWeb: json['urlApplinksWeb'],
            urlApplinksIos: json['urlApplinksIos'],
            urlApplinksAndroid: json['urlApplinksAndroid'],
            urlTwitterIos: json['urlTwitterIos'],
            urlTwitterAndroid: json['urlTwitterAndroid'],
            twitterCardType: json['twitterCardType'],
            twitterSiteHandle: json['twitterSiteHandle'],
        );
    }

    @override
    List<Object?> get props => [
    urlCanonical, title, description, thumbnail, siteName, appName, androidPackage, iosAppStoreId, ogType, urlApplinksWeb, urlApplinksIos, urlApplinksAndroid, urlTwitterIos, urlTwitterAndroid, twitterCardType, twitterSiteHandle, ];
}

class ResponseContext extends Equatable {
    const ResponseContext({
        required this.visitorData,
        required this.serviceTrackingParams,
    });

    final String? visitorData;
    final List<ServiceTrackingParam> serviceTrackingParams;

    factory ResponseContext.fromJson(Map<String, dynamic> json){ 
        return ResponseContext(
            visitorData: json['visitorData'],
            serviceTrackingParams: json['serviceTrackingParams'] == null ? [] : List<ServiceTrackingParam>.from(json['serviceTrackingParams']!.map((x) => ServiceTrackingParam.fromJson(x))),
        );
    }

    @override
    List<Object?> get props => [
    visitorData, serviceTrackingParams, ];
}

class ServiceTrackingParam extends Equatable {
    const ServiceTrackingParam({
        required this.service,
        required this.params,
    });

    final String? service;
    final List<Param> params;

    factory ServiceTrackingParam.fromJson(Map<String, dynamic> json){ 
        return ServiceTrackingParam(
            service: json['service'],
            params: json['params'] == null ? [] : List<Param>.from(json['params']!.map((x) => Param.fromJson(x))),
        );
    }

    @override
    List<Object?> get props => [
    service, params, ];
}

class Param extends Equatable {
    const Param({
        required this.key,
        required this.value,
    });

    final String? key;
    final String? value;

    factory Param.fromJson(Map<String, dynamic> json){ 
        return Param(
            key: json['key'],
            value: json['value'],
        );
    }

    @override
    List<Object?> get props => [
    key, value, ];
}
