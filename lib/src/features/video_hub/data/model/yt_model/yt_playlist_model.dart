import 'package:equatable/equatable.dart';

class YtPlaylistModel extends Equatable {
    const YtPlaylistModel({
        required this.responseContext,
        required this.contents,
        required this.trackingParams,
        required this.background,
    });

    final ResponseContext? responseContext;
    final Contents? contents;
    final String? trackingParams;
    final ThumbnailClass? background;

    factory YtPlaylistModel.fromJson(Map<String, dynamic> json){ 
        return YtPlaylistModel(
            responseContext: json["responseContext"] == null ? null : ResponseContext.fromJson(json["responseContext"]),
            contents: json["contents"] == null ? null : Contents.fromJson(json["contents"]),
            trackingParams: json["trackingParams"],
            background: json["background"] == null ? null : ThumbnailClass.fromJson(json["background"]),
        );
    }

    @override
    List<Object?> get props => [
    responseContext, contents, trackingParams, background, ];
}

class ThumbnailClass extends Equatable {
    const ThumbnailClass({
        required this.musicThumbnailRenderer,
    });

    final MusicThumbnailRenderer? musicThumbnailRenderer;

    factory ThumbnailClass.fromJson(Map<String, dynamic> json){ 
        return ThumbnailClass(
            musicThumbnailRenderer: json["musicThumbnailRenderer"] == null ? null : MusicThumbnailRenderer.fromJson(json["musicThumbnailRenderer"]),
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
            thumbnail: json["thumbnail"] == null ? null : MusicThumbnailRendererThumbnail.fromJson(json["thumbnail"]),
            thumbnailCrop: json["thumbnailCrop"],
            thumbnailScale: json["thumbnailScale"],
            trackingParams: json["trackingParams"],
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
            thumbnails: json["thumbnails"] == null ? [] : List<ThumbnailElement>.from(json["thumbnails"]!.map((x) => ThumbnailElement.fromJson(x))),
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
    final int? width;
    final int? height;

    factory ThumbnailElement.fromJson(Map<String, dynamic> json){ 
        return ThumbnailElement(
            url: json["url"],
            width: json["width"],
            height: json["height"],
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
            twoColumnBrowseResultsRenderer: json["twoColumnBrowseResultsRenderer"] == null ? null : TwoColumnBrowseResultsRenderer.fromJson(json["twoColumnBrowseResultsRenderer"]),
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
            secondaryContents: json["secondaryContents"] == null ? null : SecondaryContents.fromJson(json["secondaryContents"]),
            tabs: json["tabs"] == null ? [] : List<Tab>.from(json["tabs"]!.map((x) => Tab.fromJson(x))),
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
            sectionListRenderer: json["sectionListRenderer"] == null ? null : SecondaryContentsSectionListRenderer.fromJson(json["sectionListRenderer"]),
        );
    }

    @override
    List<Object?> get props => [
    sectionListRenderer, ];
}

class SecondaryContentsSectionListRenderer extends Equatable {
    const SecondaryContentsSectionListRenderer({
        required this.contents,
        required this.continuations,
        required this.trackingParams,
    });

    final List<PurpleContent> contents;
    final List<Continuation> continuations;
    final String? trackingParams;

    factory SecondaryContentsSectionListRenderer.fromJson(Map<String, dynamic> json){ 
        return SecondaryContentsSectionListRenderer(
            contents: json["contents"] == null ? [] : List<PurpleContent>.from(json["contents"]!.map((x) => PurpleContent.fromJson(x))),
            continuations: json["continuations"] == null ? [] : List<Continuation>.from(json["continuations"]!.map((x) => Continuation.fromJson(x))),
            trackingParams: json["trackingParams"],
        );
    }

    @override
    List<Object?> get props => [
    contents, continuations, trackingParams, ];
}

class PurpleContent extends Equatable {
    const PurpleContent({
        required this.musicPlaylistShelfRenderer,
    });

    final MusicPlaylistShelfRenderer? musicPlaylistShelfRenderer;

    factory PurpleContent.fromJson(Map<String, dynamic> json){ 
        return PurpleContent(
            musicPlaylistShelfRenderer: json["musicPlaylistShelfRenderer"] == null ? null : MusicPlaylistShelfRenderer.fromJson(json["musicPlaylistShelfRenderer"]),
        );
    }

    @override
    List<Object?> get props => [
    musicPlaylistShelfRenderer, ];
}

class MusicPlaylistShelfRenderer extends Equatable {
    const MusicPlaylistShelfRenderer({
        required this.playlistId,
        required this.contents,
        required this.collapsedItemCount,
        required this.trackingParams,
        required this.contentsMultiSelectable,
        required this.targetId,
    });

    final String? playlistId;
    final List<MusicPlaylistShelfRendererContent> contents;
    final int? collapsedItemCount;
    final String? trackingParams;
    final bool? contentsMultiSelectable;
    final String? targetId;

    factory MusicPlaylistShelfRenderer.fromJson(Map<String, dynamic> json){ 
        return MusicPlaylistShelfRenderer(
            playlistId: json["playlistId"],
            contents: json["contents"] == null ? [] : List<MusicPlaylistShelfRendererContent>.from(json["contents"]!.map((x) => MusicPlaylistShelfRendererContent.fromJson(x))),
            collapsedItemCount: json["collapsedItemCount"],
            trackingParams: json["trackingParams"],
            contentsMultiSelectable: json["contentsMultiSelectable"],
            targetId: json["targetId"],
        );
    }

    @override
    List<Object?> get props => [
    playlistId, contents, collapsedItemCount, trackingParams, contentsMultiSelectable, targetId, ];
}

class MusicPlaylistShelfRendererContent extends Equatable {
    const MusicPlaylistShelfRendererContent({
        required this.musicResponsiveListItemRenderer,
    });

    final MusicResponsiveListItemRenderer? musicResponsiveListItemRenderer;

    factory MusicPlaylistShelfRendererContent.fromJson(Map<String, dynamic> json){ 
        return MusicPlaylistShelfRendererContent(
            musicResponsiveListItemRenderer: json["musicResponsiveListItemRenderer"] == null ? null : MusicResponsiveListItemRenderer.fromJson(json["musicResponsiveListItemRenderer"]),
        );
    }

    @override
    List<Object?> get props => [
    musicResponsiveListItemRenderer, ];
}

class MusicResponsiveListItemRenderer extends Equatable {
    const MusicResponsiveListItemRenderer({
        required this.trackingParams,
        required this.thumbnail,
        required this.overlay,
        required this.flexColumns,
        required this.fixedColumns,
        required this.menu,
        required this.playlistItemData,
        required this.multiSelectCheckbox,
    });

    final String? trackingParams;
    final ThumbnailClass? thumbnail;
    final Overlay? overlay;
    final List<FlexColumn> flexColumns;
    final List<FixedColumn> fixedColumns;
    final Menu? menu;
    final PlaylistItemData? playlistItemData;
    final MultiSelectCheckbox? multiSelectCheckbox;

    factory MusicResponsiveListItemRenderer.fromJson(Map<String, dynamic> json){ 
        return MusicResponsiveListItemRenderer(
            trackingParams: json["trackingParams"],
            thumbnail: json["thumbnail"] == null ? null : ThumbnailClass.fromJson(json["thumbnail"]),
            overlay: json["overlay"] == null ? null : Overlay.fromJson(json["overlay"]),
            flexColumns: json["flexColumns"] == null ? [] : List<FlexColumn>.from(json["flexColumns"]!.map((x) => FlexColumn.fromJson(x))),
            fixedColumns: json["fixedColumns"] == null ? [] : List<FixedColumn>.from(json["fixedColumns"]!.map((x) => FixedColumn.fromJson(x))),
            menu: json["menu"] == null ? null : Menu.fromJson(json["menu"]),
            playlistItemData: json["playlistItemData"] == null ? null : PlaylistItemData.fromJson(json["playlistItemData"]),
            multiSelectCheckbox: json["multiSelectCheckbox"] == null ? null : MultiSelectCheckbox.fromJson(json["multiSelectCheckbox"]),
        );
    }

    @override
    List<Object?> get props => [
    trackingParams, thumbnail, overlay, flexColumns, fixedColumns, menu, playlistItemData, multiSelectCheckbox, ];
}

class FixedColumn extends Equatable {
    const FixedColumn({
        required this.musicResponsiveListItemFixedColumnRenderer,
    });

    final MusicResponsiveListItemFixedColumnRenderer? musicResponsiveListItemFixedColumnRenderer;

    factory FixedColumn.fromJson(Map<String, dynamic> json){ 
        return FixedColumn(
            musicResponsiveListItemFixedColumnRenderer: json["musicResponsiveListItemFixedColumnRenderer"] == null ? null : MusicResponsiveListItemFixedColumnRenderer.fromJson(json["musicResponsiveListItemFixedColumnRenderer"]),
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
            text: json["text"] == null ? null : MusicResponsiveListItemFixedColumnRendererText.fromJson(json["text"]),
            displayPriority: json["displayPriority"],
            size: json["size"],
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

    final List<SecondSubtitleRun> runs;
    final Accessibility? accessibility;

    factory MusicResponsiveListItemFixedColumnRendererText.fromJson(Map<String, dynamic> json){ 
        return MusicResponsiveListItemFixedColumnRendererText(
            runs: json["runs"] == null ? [] : List<SecondSubtitleRun>.from(json["runs"]!.map((x) => SecondSubtitleRun.fromJson(x))),
            accessibility: json["accessibility"] == null ? null : Accessibility.fromJson(json["accessibility"]),
        );
    }

    @override
    List<Object?> get props => [
    runs, accessibility, ];
}

class Accessibility extends Equatable {
    const Accessibility({
        required this.accessibilityData,
    });

    final AccessibilityContextClass? accessibilityData;

    factory Accessibility.fromJson(Map<String, dynamic> json){ 
        return Accessibility(
            accessibilityData: json["accessibilityData"] == null ? null : AccessibilityContextClass.fromJson(json["accessibilityData"]),
        );
    }

    @override
    List<Object?> get props => [
    accessibilityData, ];
}

class AccessibilityContextClass extends Equatable {
    const AccessibilityContextClass({
        required this.label,
    });

    final String? label;

    factory AccessibilityContextClass.fromJson(Map<String, dynamic> json){ 
        return AccessibilityContextClass(
            label: json["label"],
        );
    }

    @override
    List<Object?> get props => [
    label, ];
}

class SecondSubtitleRun extends Equatable {
    const SecondSubtitleRun({
        required this.text,
    });

    final String? text;

    factory SecondSubtitleRun.fromJson(Map<String, dynamic> json){ 
        return SecondSubtitleRun(
            text: json["text"],
        );
    }

    @override
    List<Object?> get props => [
    text, ];
}

class FlexColumn extends Equatable {
    const FlexColumn({
        required this.musicResponsiveListItemFlexColumnRenderer,
    });

    final MusicResponsiveListItemFlexColumnRenderer? musicResponsiveListItemFlexColumnRenderer;

    factory FlexColumn.fromJson(Map<String, dynamic> json){ 
        return FlexColumn(
            musicResponsiveListItemFlexColumnRenderer: json["musicResponsiveListItemFlexColumnRenderer"] == null ? null : MusicResponsiveListItemFlexColumnRenderer.fromJson(json["musicResponsiveListItemFlexColumnRenderer"]),
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
            text: json["text"] == null ? null : MusicResponsiveListItemFlexColumnRendererText.fromJson(json["text"]),
            displayPriority: json["displayPriority"],
        );
    }

    @override
    List<Object?> get props => [
    text, displayPriority, ];
}

class MusicResponsiveListItemFlexColumnRendererText extends Equatable {
    const MusicResponsiveListItemFlexColumnRendererText({
        required this.runs,
    });

    final List<PurpleRun> runs;

    factory MusicResponsiveListItemFlexColumnRendererText.fromJson(Map<String, dynamic> json){ 
        return MusicResponsiveListItemFlexColumnRendererText(
            runs: json["runs"] == null ? [] : List<PurpleRun>.from(json["runs"]!.map((x) => PurpleRun.fromJson(x))),
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
    final RunNavigationEndpoint? navigationEndpoint;

    factory PurpleRun.fromJson(Map<String, dynamic> json){ 
        return PurpleRun(
            text: json["text"],
            navigationEndpoint: json["navigationEndpoint"] == null ? null : RunNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        );
    }

    @override
    List<Object?> get props => [
    text, navigationEndpoint, ];
}

class RunNavigationEndpoint extends Equatable {
    const RunNavigationEndpoint({
        required this.clickTrackingParams,
        required this.watchEndpoint,
        required this.browseEndpoint,
    });

    final String? clickTrackingParams;
    final NavigationEndpointWatchEndpoint? watchEndpoint;
    final PurpleBrowseEndpoint? browseEndpoint;

    factory RunNavigationEndpoint.fromJson(Map<String, dynamic> json){ 
        return RunNavigationEndpoint(
            clickTrackingParams: json["clickTrackingParams"],
            watchEndpoint: json["watchEndpoint"] == null ? null : NavigationEndpointWatchEndpoint.fromJson(json["watchEndpoint"]),
            browseEndpoint: json["browseEndpoint"] == null ? null : PurpleBrowseEndpoint.fromJson(json["browseEndpoint"]),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, watchEndpoint, browseEndpoint, ];
}

class PurpleBrowseEndpoint extends Equatable {
    const PurpleBrowseEndpoint({
        required this.browseId,
        required this.browseEndpointContextSupportedConfigs,
        required this.params,
    });

    final String? browseId;
    final BrowseEndpointContextSupportedConfigs? browseEndpointContextSupportedConfigs;
    final String? params;

    factory PurpleBrowseEndpoint.fromJson(Map<String, dynamic> json){ 
        return PurpleBrowseEndpoint(
            browseId: json["browseId"],
            browseEndpointContextSupportedConfigs: json["browseEndpointContextSupportedConfigs"] == null ? null : BrowseEndpointContextSupportedConfigs.fromJson(json["browseEndpointContextSupportedConfigs"]),
            params: json["params"],
        );
    }

    @override
    List<Object?> get props => [
    browseId, browseEndpointContextSupportedConfigs, params, ];
}

class BrowseEndpointContextSupportedConfigs extends Equatable {
    const BrowseEndpointContextSupportedConfigs({
        required this.browseEndpointContextMusicConfig,
    });

    final BrowseEndpointContextMusicConfig? browseEndpointContextMusicConfig;

    factory BrowseEndpointContextSupportedConfigs.fromJson(Map<String, dynamic> json){ 
        return BrowseEndpointContextSupportedConfigs(
            browseEndpointContextMusicConfig: json["browseEndpointContextMusicConfig"] == null ? null : BrowseEndpointContextMusicConfig.fromJson(json["browseEndpointContextMusicConfig"]),
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
            pageType: json["pageType"],
        );
    }

    @override
    List<Object?> get props => [
    pageType, ];
}

class NavigationEndpointWatchEndpoint extends Equatable {
    const NavigationEndpointWatchEndpoint({
        required this.videoId,
        required this.playlistId,
        required this.params,
        required this.loggingContext,
        required this.watchEndpointMusicSupportedConfigs,
        required this.playerParams,
        required this.playlistSetVideoId,
    });

    final String? videoId;
    final String? playlistId;
    final String? params;
    final LoggingContext? loggingContext;
    final WatchEndpointMusicSupportedConfigs? watchEndpointMusicSupportedConfigs;
    final String? playerParams;
    final String? playlistSetVideoId;

    factory NavigationEndpointWatchEndpoint.fromJson(Map<String, dynamic> json){ 
        return NavigationEndpointWatchEndpoint(
            videoId: json["videoId"],
            playlistId: json["playlistId"],
            params: json["params"],
            loggingContext: json["loggingContext"] == null ? null : LoggingContext.fromJson(json["loggingContext"]),
            watchEndpointMusicSupportedConfigs: json["watchEndpointMusicSupportedConfigs"] == null ? null : WatchEndpointMusicSupportedConfigs.fromJson(json["watchEndpointMusicSupportedConfigs"]),
            playerParams: json["playerParams"],
            playlistSetVideoId: json["playlistSetVideoId"],
        );
    }

    @override
    List<Object?> get props => [
    videoId, playlistId, params, loggingContext, watchEndpointMusicSupportedConfigs, playerParams, playlistSetVideoId, ];
}

class LoggingContext extends Equatable {
    const LoggingContext({
        required this.vssLoggingContext,
    });

    final VssLoggingContext? vssLoggingContext;

    factory LoggingContext.fromJson(Map<String, dynamic> json){ 
        return LoggingContext(
            vssLoggingContext: json["vssLoggingContext"] == null ? null : VssLoggingContext.fromJson(json["vssLoggingContext"]),
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
            serializedContextData: json["serializedContextData"],
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
            watchEndpointMusicConfig: json["watchEndpointMusicConfig"] == null ? null : WatchEndpointMusicConfig.fromJson(json["watchEndpointMusicConfig"]),
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
            musicVideoType: json["musicVideoType"],
        );
    }

    @override
    List<Object?> get props => [
    musicVideoType, ];
}

class Menu extends Equatable {
    const Menu({
        required this.menuRenderer,
    });

    final MenuMenuRenderer? menuRenderer;

    factory Menu.fromJson(Map<String, dynamic> json){ 
        return Menu(
            menuRenderer: json["menuRenderer"] == null ? null : MenuMenuRenderer.fromJson(json["menuRenderer"]),
        );
    }

    @override
    List<Object?> get props => [
    menuRenderer, ];
}

class MenuMenuRenderer extends Equatable {
    const MenuMenuRenderer({
        required this.items,
        required this.trackingParams,
        required this.topLevelButtons,
        required this.accessibility,
    });

    final List<PurpleItem> items;
    final String? trackingParams;
    final List<TopLevelButton> topLevelButtons;
    final Accessibility? accessibility;

    factory MenuMenuRenderer.fromJson(Map<String, dynamic> json){ 
        return MenuMenuRenderer(
            items: json["items"] == null ? [] : List<PurpleItem>.from(json["items"]!.map((x) => PurpleItem.fromJson(x))),
            trackingParams: json["trackingParams"],
            topLevelButtons: json["topLevelButtons"] == null ? [] : List<TopLevelButton>.from(json["topLevelButtons"]!.map((x) => TopLevelButton.fromJson(x))),
            accessibility: json["accessibility"] == null ? null : Accessibility.fromJson(json["accessibility"]),
        );
    }

    @override
    List<Object?> get props => [
    items, trackingParams, topLevelButtons, accessibility, ];
}

class PurpleItem extends Equatable {
    const PurpleItem({
        required this.menuNavigationItemRenderer,
        required this.menuServiceItemRenderer,
    });

    final MenuItemRenderer? menuNavigationItemRenderer;
    final MenuItemRenderer? menuServiceItemRenderer;

    factory PurpleItem.fromJson(Map<String, dynamic> json){ 
        return PurpleItem(
            menuNavigationItemRenderer: json["menuNavigationItemRenderer"] == null ? null : MenuItemRenderer.fromJson(json["menuNavigationItemRenderer"]),
            menuServiceItemRenderer: json["menuServiceItemRenderer"] == null ? null : MenuItemRenderer.fromJson(json["menuServiceItemRenderer"]),
        );
    }

    @override
    List<Object?> get props => [
    menuNavigationItemRenderer, menuServiceItemRenderer, ];
}

class MenuItemRenderer extends Equatable {
    const MenuItemRenderer({
        required this.text,
        required this.icon,
        required this.navigationEndpoint,
        required this.trackingParams,
        required this.serviceEndpoint,
    });

    final SecondSubtitle? text;
    final Icon? icon;
    final MenuNavigationItemRendererNavigationEndpoint? navigationEndpoint;
    final String? trackingParams;
    final ServiceEndpoint? serviceEndpoint;

    factory MenuItemRenderer.fromJson(Map<String, dynamic> json){ 
        return MenuItemRenderer(
            text: json["text"] == null ? null : SecondSubtitle.fromJson(json["text"]),
            icon: json["icon"] == null ? null : Icon.fromJson(json["icon"]),
            navigationEndpoint: json["navigationEndpoint"] == null ? null : MenuNavigationItemRendererNavigationEndpoint.fromJson(json["navigationEndpoint"]),
            trackingParams: json["trackingParams"],
            serviceEndpoint: json["serviceEndpoint"] == null ? null : ServiceEndpoint.fromJson(json["serviceEndpoint"]),
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
            iconType: json["iconType"],
        );
    }

    @override
    List<Object?> get props => [
    iconType, ];
}

class MenuNavigationItemRendererNavigationEndpoint extends Equatable {
    const MenuNavigationItemRendererNavigationEndpoint({
        required this.clickTrackingParams,
        required this.watchEndpoint,
        required this.modalEndpoint,
        required this.shareEntityEndpoint,
        required this.browseEndpoint,
        required this.watchPlaylistEndpoint,
    });

    final String? clickTrackingParams;
    final NavigationEndpointWatchEndpoint? watchEndpoint;
    final ModalEndpoint? modalEndpoint;
    final ShareEntityEndpoint? shareEntityEndpoint;
    final FluffyBrowseEndpoint? browseEndpoint;
    final WatchPlaylistEndpoint? watchPlaylistEndpoint;

    factory MenuNavigationItemRendererNavigationEndpoint.fromJson(Map<String, dynamic> json){ 
        return MenuNavigationItemRendererNavigationEndpoint(
            clickTrackingParams: json["clickTrackingParams"],
            watchEndpoint: json["watchEndpoint"] == null ? null : NavigationEndpointWatchEndpoint.fromJson(json["watchEndpoint"]),
            modalEndpoint: json["modalEndpoint"] == null ? null : ModalEndpoint.fromJson(json["modalEndpoint"]),
            shareEntityEndpoint: json["shareEntityEndpoint"] == null ? null : ShareEntityEndpoint.fromJson(json["shareEntityEndpoint"]),
            browseEndpoint: json["browseEndpoint"] == null ? null : FluffyBrowseEndpoint.fromJson(json["browseEndpoint"]),
            watchPlaylistEndpoint: json["watchPlaylistEndpoint"] == null ? null : WatchPlaylistEndpoint.fromJson(json["watchPlaylistEndpoint"]),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, watchEndpoint, modalEndpoint, shareEntityEndpoint, browseEndpoint, watchPlaylistEndpoint, ];
}

class FluffyBrowseEndpoint extends Equatable {
    const FluffyBrowseEndpoint({
        required this.browseId,
        required this.browseEndpointContextSupportedConfigs,
    });

    final String? browseId;
    final BrowseEndpointContextSupportedConfigs? browseEndpointContextSupportedConfigs;

    factory FluffyBrowseEndpoint.fromJson(Map<String, dynamic> json){ 
        return FluffyBrowseEndpoint(
            browseId: json["browseId"],
            browseEndpointContextSupportedConfigs: json["browseEndpointContextSupportedConfigs"] == null ? null : BrowseEndpointContextSupportedConfigs.fromJson(json["browseEndpointContextSupportedConfigs"]),
        );
    }

    @override
    List<Object?> get props => [
    browseId, browseEndpointContextSupportedConfigs, ];
}

class ModalEndpoint extends Equatable {
    const ModalEndpoint({
        required this.modal,
    });

    final Modal? modal;

    factory ModalEndpoint.fromJson(Map<String, dynamic> json){ 
        return ModalEndpoint(
            modal: json["modal"] == null ? null : Modal.fromJson(json["modal"]),
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
            modalWithTitleAndButtonRenderer: json["modalWithTitleAndButtonRenderer"] == null ? null : ModalWithTitleAndButtonRenderer.fromJson(json["modalWithTitleAndButtonRenderer"]),
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

    final SecondSubtitle? title;
    final SecondSubtitle? content;
    final ModalWithTitleAndButtonRendererButton? button;

    factory ModalWithTitleAndButtonRenderer.fromJson(Map<String, dynamic> json){ 
        return ModalWithTitleAndButtonRenderer(
            title: json["title"] == null ? null : SecondSubtitle.fromJson(json["title"]),
            content: json["content"] == null ? null : SecondSubtitle.fromJson(json["content"]),
            button: json["button"] == null ? null : ModalWithTitleAndButtonRendererButton.fromJson(json["button"]),
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
            buttonRenderer: json["buttonRenderer"] == null ? null : ButtonRenderer.fromJson(json["buttonRenderer"]),
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
    final SecondSubtitle? text;
    final ButtonRendererNavigationEndpoint? navigationEndpoint;
    final String? trackingParams;

    factory ButtonRenderer.fromJson(Map<String, dynamic> json){ 
        return ButtonRenderer(
            style: json["style"],
            isDisabled: json["isDisabled"],
            text: json["text"] == null ? null : SecondSubtitle.fromJson(json["text"]),
            navigationEndpoint: json["navigationEndpoint"] == null ? null : ButtonRendererNavigationEndpoint.fromJson(json["navigationEndpoint"]),
            trackingParams: json["trackingParams"],
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
            clickTrackingParams: json["clickTrackingParams"],
            signInEndpoint: json["signInEndpoint"] == null ? null : SignInEndpoint.fromJson(json["signInEndpoint"]),
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
            hack: json["hack"],
        );
    }

    @override
    List<Object?> get props => [
    hack, ];
}

class SecondSubtitle extends Equatable {
    const SecondSubtitle({
        required this.runs,
    });

    final List<SecondSubtitleRun> runs;

    factory SecondSubtitle.fromJson(Map<String, dynamic> json){ 
        return SecondSubtitle(
            runs: json["runs"] == null ? [] : List<SecondSubtitleRun>.from(json["runs"]!.map((x) => SecondSubtitleRun.fromJson(x))),
        );
    }

    @override
    List<Object?> get props => [
    runs, ];
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
            serializedShareEntity: json["serializedShareEntity"],
            sharePanelType: json["sharePanelType"],
        );
    }

    @override
    List<Object?> get props => [
    serializedShareEntity, sharePanelType, ];
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
            playlistId: json["playlistId"],
            params: json["params"],
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
            clickTrackingParams: json["clickTrackingParams"],
            queueAddEndpoint: json["queueAddEndpoint"] == null ? null : QueueAddEndpoint.fromJson(json["queueAddEndpoint"]),
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
            queueTarget: json["queueTarget"] == null ? null : QueueTarget.fromJson(json["queueTarget"]),
            queueInsertPosition: json["queueInsertPosition"],
            commands: json["commands"] == null ? [] : List<Command>.from(json["commands"]!.map((x) => Command.fromJson(x))),
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
            clickTrackingParams: json["clickTrackingParams"],
            addToToastAction: json["addToToastAction"] == null ? null : AddToToastAction.fromJson(json["addToToastAction"]),
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
            item: json["item"] == null ? null : AddToToastActionItem.fromJson(json["item"]),
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
            notificationTextRenderer: json["notificationTextRenderer"] == null ? null : NotificationTextRenderer.fromJson(json["notificationTextRenderer"]),
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

    final SecondSubtitle? successResponseText;
    final String? trackingParams;

    factory NotificationTextRenderer.fromJson(Map<String, dynamic> json){ 
        return NotificationTextRenderer(
            successResponseText: json["successResponseText"] == null ? null : SecondSubtitle.fromJson(json["successResponseText"]),
            trackingParams: json["trackingParams"],
        );
    }

    @override
    List<Object?> get props => [
    successResponseText, trackingParams, ];
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

    factory QueueTarget.fromJson(Map<String, dynamic> json){ 
        return QueueTarget(
            videoId: json["videoId"],
            onEmptyQueue: json["onEmptyQueue"] == null ? null : OnEmptyQueue.fromJson(json["onEmptyQueue"]),
            playlistId: json["playlistId"],
        );
    }

    @override
    List<Object?> get props => [
    videoId, onEmptyQueue, playlistId, ];
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
            clickTrackingParams: json["clickTrackingParams"],
            watchEndpoint: json["watchEndpoint"] == null ? null : OnEmptyQueueWatchEndpoint.fromJson(json["watchEndpoint"]),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, watchEndpoint, ];
}

class OnEmptyQueueWatchEndpoint extends Equatable {
    const OnEmptyQueueWatchEndpoint({
        required this.videoId,
        required this.playlistId,
    });

    final String? videoId;
    final String? playlistId;

    factory OnEmptyQueueWatchEndpoint.fromJson(Map<String, dynamic> json){ 
        return OnEmptyQueueWatchEndpoint(
            videoId: json["videoId"],
            playlistId: json["playlistId"],
        );
    }

    @override
    List<Object?> get props => [
    videoId, playlistId, ];
}

class TopLevelButton extends Equatable {
    const TopLevelButton({
        required this.likeButtonRenderer,
    });

    final LikeButtonRenderer? likeButtonRenderer;

    factory TopLevelButton.fromJson(Map<String, dynamic> json){ 
        return TopLevelButton(
            likeButtonRenderer: json["likeButtonRenderer"] == null ? null : LikeButtonRenderer.fromJson(json["likeButtonRenderer"]),
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

    final LikeButtonRendererTarget? target;
    final String? likeStatus;
    final String? trackingParams;
    final bool? likesAllowed;
    final DefaultNavigationEndpoint? dislikeNavigationEndpoint;
    final DefaultNavigationEndpoint? likeCommand;

    factory LikeButtonRenderer.fromJson(Map<String, dynamic> json){ 
        return LikeButtonRenderer(
            target: json["target"] == null ? null : LikeButtonRendererTarget.fromJson(json["target"]),
            likeStatus: json["likeStatus"],
            trackingParams: json["trackingParams"],
            likesAllowed: json["likesAllowed"],
            dislikeNavigationEndpoint: json["dislikeNavigationEndpoint"] == null ? null : DefaultNavigationEndpoint.fromJson(json["dislikeNavigationEndpoint"]),
            likeCommand: json["likeCommand"] == null ? null : DefaultNavigationEndpoint.fromJson(json["likeCommand"]),
        );
    }

    @override
    List<Object?> get props => [
    target, likeStatus, trackingParams, likesAllowed, dislikeNavigationEndpoint, likeCommand, ];
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
            clickTrackingParams: json["clickTrackingParams"],
            modalEndpoint: json["modalEndpoint"] == null ? null : ModalEndpoint.fromJson(json["modalEndpoint"]),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, modalEndpoint, ];
}

class LikeButtonRendererTarget extends Equatable {
    const LikeButtonRendererTarget({
        required this.videoId,
    });

    final String? videoId;

    factory LikeButtonRendererTarget.fromJson(Map<String, dynamic> json){ 
        return LikeButtonRendererTarget(
            videoId: json["videoId"],
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
            checkboxRenderer: json["checkboxRenderer"] == null ? null : CheckboxRenderer.fromJson(json["checkboxRenderer"]),
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
            onSelectionChangeCommand: json["onSelectionChangeCommand"] == null ? null : OnSelectionChangeCommand.fromJson(json["onSelectionChangeCommand"]),
            checkedState: json["checkedState"],
            trackingParams: json["trackingParams"],
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
            clickTrackingParams: json["clickTrackingParams"],
            updateMultiSelectStateCommand: json["updateMultiSelectStateCommand"] == null ? null : UpdateMultiSelectStateCommand.fromJson(json["updateMultiSelectStateCommand"]),
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
            multiSelectParams: json["multiSelectParams"],
            multiSelectItem: json["multiSelectItem"],
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

    final MusicItemThumbnailOverlayRenderer? musicItemThumbnailOverlayRenderer;

    factory Overlay.fromJson(Map<String, dynamic> json){ 
        return Overlay(
            musicItemThumbnailOverlayRenderer: json["musicItemThumbnailOverlayRenderer"] == null ? null : MusicItemThumbnailOverlayRenderer.fromJson(json["musicItemThumbnailOverlayRenderer"]),
        );
    }

    @override
    List<Object?> get props => [
    musicItemThumbnailOverlayRenderer, ];
}

class MusicItemThumbnailOverlayRenderer extends Equatable {
    const MusicItemThumbnailOverlayRenderer({
        required this.background,
        required this.content,
        required this.contentPosition,
        required this.displayStyle,
    });

    final MusicItemThumbnailOverlayRendererBackground? background;
    final MusicItemThumbnailOverlayRendererContent? content;
    final String? contentPosition;
    final String? displayStyle;

    factory MusicItemThumbnailOverlayRenderer.fromJson(Map<String, dynamic> json){ 
        return MusicItemThumbnailOverlayRenderer(
            background: json["background"] == null ? null : MusicItemThumbnailOverlayRendererBackground.fromJson(json["background"]),
            content: json["content"] == null ? null : MusicItemThumbnailOverlayRendererContent.fromJson(json["content"]),
            contentPosition: json["contentPosition"],
            displayStyle: json["displayStyle"],
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
            verticalGradient: json["verticalGradient"] == null ? null : VerticalGradient.fromJson(json["verticalGradient"]),
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
            gradientLayerColors: json["gradientLayerColors"] == null ? [] : List<String>.from(json["gradientLayerColors"]!.map((x) => x)),
        );
    }

    @override
    List<Object?> get props => [
    gradientLayerColors, ];
}

class MusicItemThumbnailOverlayRendererContent extends Equatable {
    const MusicItemThumbnailOverlayRendererContent({
        required this.musicPlayButtonRenderer,
    });

    final ContentMusicPlayButtonRenderer? musicPlayButtonRenderer;

    factory MusicItemThumbnailOverlayRendererContent.fromJson(Map<String, dynamic> json){ 
        return MusicItemThumbnailOverlayRendererContent(
            musicPlayButtonRenderer: json["musicPlayButtonRenderer"] == null ? null : ContentMusicPlayButtonRenderer.fromJson(json["musicPlayButtonRenderer"]),
        );
    }

    @override
    List<Object?> get props => [
    musicPlayButtonRenderer, ];
}

class ContentMusicPlayButtonRenderer extends Equatable {
    const ContentMusicPlayButtonRenderer({
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

    factory ContentMusicPlayButtonRenderer.fromJson(Map<String, dynamic> json){ 
        return ContentMusicPlayButtonRenderer(
            playNavigationEndpoint: json["playNavigationEndpoint"] == null ? null : PlayNavigationEndpoint.fromJson(json["playNavigationEndpoint"]),
            trackingParams: json["trackingParams"],
            playIcon: json["playIcon"] == null ? null : Icon.fromJson(json["playIcon"]),
            pauseIcon: json["pauseIcon"] == null ? null : Icon.fromJson(json["pauseIcon"]),
            iconColor: json["iconColor"],
            backgroundColor: json["backgroundColor"],
            activeBackgroundColor: json["activeBackgroundColor"],
            loadingIndicatorColor: json["loadingIndicatorColor"],
            playingIcon: json["playingIcon"] == null ? null : Icon.fromJson(json["playingIcon"]),
            iconLoadingColor: json["iconLoadingColor"],
            activeScaleFactor: json["activeScaleFactor"],
            buttonSize: json["buttonSize"],
            rippleTarget: json["rippleTarget"],
            accessibilityPlayData: json["accessibilityPlayData"] == null ? null : Accessibility.fromJson(json["accessibilityPlayData"]),
            accessibilityPauseData: json["accessibilityPauseData"] == null ? null : Accessibility.fromJson(json["accessibilityPauseData"]),
        );
    }

    @override
    List<Object?> get props => [
    playNavigationEndpoint, trackingParams, playIcon, pauseIcon, iconColor, backgroundColor, activeBackgroundColor, loadingIndicatorColor, playingIcon, iconLoadingColor, activeScaleFactor, buttonSize, rippleTarget, accessibilityPlayData, accessibilityPauseData, ];
}

class PlayNavigationEndpoint extends Equatable {
    const PlayNavigationEndpoint({
        required this.clickTrackingParams,
        required this.watchEndpoint,
    });

    final String? clickTrackingParams;
    final NavigationEndpointWatchEndpoint? watchEndpoint;

    factory PlayNavigationEndpoint.fromJson(Map<String, dynamic> json){ 
        return PlayNavigationEndpoint(
            clickTrackingParams: json["clickTrackingParams"],
            watchEndpoint: json["watchEndpoint"] == null ? null : NavigationEndpointWatchEndpoint.fromJson(json["watchEndpoint"]),
        );
    }

    @override
    List<Object?> get props => [
    clickTrackingParams, watchEndpoint, ];
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
            playlistSetVideoId: json["playlistSetVideoId"],
            videoId: json["videoId"],
        );
    }

    @override
    List<Object?> get props => [
    playlistSetVideoId, videoId, ];
}

class Continuation extends Equatable {
    const Continuation({
        required this.nextContinuationData,
    });

    final NextContinuationData? nextContinuationData;

    factory Continuation.fromJson(Map<String, dynamic> json){ 
        return Continuation(
            nextContinuationData: json["nextContinuationData"] == null ? null : NextContinuationData.fromJson(json["nextContinuationData"]),
        );
    }

    @override
    List<Object?> get props => [
    nextContinuationData, ];
}

class NextContinuationData extends Equatable {
    const NextContinuationData({
        required this.continuation,
        required this.clickTrackingParams,
    });

    final String? continuation;
    final String? clickTrackingParams;

    factory NextContinuationData.fromJson(Map<String, dynamic> json){ 
        return NextContinuationData(
            continuation: json["continuation"],
            clickTrackingParams: json["clickTrackingParams"],
        );
    }

    @override
    List<Object?> get props => [
    continuation, clickTrackingParams, ];
}

class Tab extends Equatable {
    const Tab({
        required this.tabRenderer,
    });

    final TabRenderer? tabRenderer;

    factory Tab.fromJson(Map<String, dynamic> json){ 
        return Tab(
            tabRenderer: json["tabRenderer"] == null ? null : TabRenderer.fromJson(json["tabRenderer"]),
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
            content: json["content"] == null ? null : TabRendererContent.fromJson(json["content"]),
            trackingParams: json["trackingParams"],
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
            sectionListRenderer: json["sectionListRenderer"] == null ? null : ContentSectionListRenderer.fromJson(json["sectionListRenderer"]),
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

    final List<FluffyContent> contents;
    final String? trackingParams;

    factory ContentSectionListRenderer.fromJson(Map<String, dynamic> json){ 
        return ContentSectionListRenderer(
            contents: json["contents"] == null ? [] : List<FluffyContent>.from(json["contents"]!.map((x) => FluffyContent.fromJson(x))),
            trackingParams: json["trackingParams"],
        );
    }

    @override
    List<Object?> get props => [
    contents, trackingParams, ];
}

class FluffyContent extends Equatable {
    const FluffyContent({
        required this.musicResponsiveHeaderRenderer,
    });

    final MusicResponsiveHeaderRenderer? musicResponsiveHeaderRenderer;

    factory FluffyContent.fromJson(Map<String, dynamic> json){ 
        return FluffyContent(
            musicResponsiveHeaderRenderer: json["musicResponsiveHeaderRenderer"] == null ? null : MusicResponsiveHeaderRenderer.fromJson(json["musicResponsiveHeaderRenderer"]),
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
        required this.description,
        required this.secondSubtitle,
        required this.facepile,
    });

    final ThumbnailClass? thumbnail;
    final List<ButtonElement> buttons;
    final SecondSubtitle? title;
    final SecondSubtitle? subtitle;
    final String? trackingParams;
    final Description? description;
    final SecondSubtitle? secondSubtitle;
    final Facepile? facepile;

    factory MusicResponsiveHeaderRenderer.fromJson(Map<String, dynamic> json){ 
        return MusicResponsiveHeaderRenderer(
            thumbnail: json["thumbnail"] == null ? null : ThumbnailClass.fromJson(json["thumbnail"]),
            buttons: json["buttons"] == null ? [] : List<ButtonElement>.from(json["buttons"]!.map((x) => ButtonElement.fromJson(x))),
            title: json["title"] == null ? null : SecondSubtitle.fromJson(json["title"]),
            subtitle: json["subtitle"] == null ? null : SecondSubtitle.fromJson(json["subtitle"]),
            trackingParams: json["trackingParams"],
            description: json["description"] == null ? null : Description.fromJson(json["description"]),
            secondSubtitle: json["secondSubtitle"] == null ? null : SecondSubtitle.fromJson(json["secondSubtitle"]),
            facepile: json["facepile"] == null ? null : Facepile.fromJson(json["facepile"]),
        );
    }

    @override
    List<Object?> get props => [
    thumbnail, buttons, title, subtitle, trackingParams, description, secondSubtitle, facepile, ];
}

class ButtonElement extends Equatable {
    const ButtonElement({
        required this.toggleButtonRenderer,
        required this.musicPlayButtonRenderer,
        required this.menuRenderer,
    });

    final ButtonToggleButtonRenderer? toggleButtonRenderer;
    final ButtonMusicPlayButtonRenderer? musicPlayButtonRenderer;
    final ButtonMenuRenderer? menuRenderer;

    factory ButtonElement.fromJson(Map<String, dynamic> json){ 
        return ButtonElement(
            toggleButtonRenderer: json["toggleButtonRenderer"] == null ? null : ButtonToggleButtonRenderer.fromJson(json["toggleButtonRenderer"]),
            musicPlayButtonRenderer: json["musicPlayButtonRenderer"] == null ? null : ButtonMusicPlayButtonRenderer.fromJson(json["musicPlayButtonRenderer"]),
            menuRenderer: json["menuRenderer"] == null ? null : ButtonMenuRenderer.fromJson(json["menuRenderer"]),
        );
    }

    @override
    List<Object?> get props => [
    toggleButtonRenderer, musicPlayButtonRenderer, menuRenderer, ];
}

class ButtonMenuRenderer extends Equatable {
    const ButtonMenuRenderer({
        required this.items,
        required this.trackingParams,
        required this.accessibility,
    });

    final List<FluffyItem> items;
    final String? trackingParams;
    final Accessibility? accessibility;

    factory ButtonMenuRenderer.fromJson(Map<String, dynamic> json){ 
        return ButtonMenuRenderer(
            items: json["items"] == null ? [] : List<FluffyItem>.from(json["items"]!.map((x) => FluffyItem.fromJson(x))),
            trackingParams: json["trackingParams"],
            accessibility: json["accessibility"] == null ? null : Accessibility.fromJson(json["accessibility"]),
        );
    }

    @override
    List<Object?> get props => [
    items, trackingParams, accessibility, ];
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

    factory FluffyItem.fromJson(Map<String, dynamic> json){ 
        return FluffyItem(
            menuNavigationItemRenderer: json["menuNavigationItemRenderer"] == null ? null : MenuItemRenderer.fromJson(json["menuNavigationItemRenderer"]),
            menuServiceItemRenderer: json["menuServiceItemRenderer"] == null ? null : MenuItemRenderer.fromJson(json["menuServiceItemRenderer"]),
            toggleMenuServiceItemRenderer: json["toggleMenuServiceItemRenderer"] == null ? null : ToggleMenuServiceItemRenderer.fromJson(json["toggleMenuServiceItemRenderer"]),
        );
    }

    @override
    List<Object?> get props => [
    menuNavigationItemRenderer, menuServiceItemRenderer, toggleMenuServiceItemRenderer, ];
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

    final SecondSubtitle? defaultText;
    final Icon? defaultIcon;
    final DefaultNavigationEndpoint? defaultServiceEndpoint;
    final SecondSubtitle? toggledText;
    final Icon? toggledIcon;
    final ToggledServiceEndpoint? toggledServiceEndpoint;
    final String? trackingParams;

    factory ToggleMenuServiceItemRenderer.fromJson(Map<String, dynamic> json){ 
        return ToggleMenuServiceItemRenderer(
            defaultText: json["defaultText"] == null ? null : SecondSubtitle.fromJson(json["defaultText"]),
            defaultIcon: json["defaultIcon"] == null ? null : Icon.fromJson(json["defaultIcon"]),
            defaultServiceEndpoint: json["defaultServiceEndpoint"] == null ? null : DefaultNavigationEndpoint.fromJson(json["defaultServiceEndpoint"]),
            toggledText: json["toggledText"] == null ? null : SecondSubtitle.fromJson(json["toggledText"]),
            toggledIcon: json["toggledIcon"] == null ? null : Icon.fromJson(json["toggledIcon"]),
            toggledServiceEndpoint: json["toggledServiceEndpoint"] == null ? null : ToggledServiceEndpoint.fromJson(json["toggledServiceEndpoint"]),
            trackingParams: json["trackingParams"],
        );
    }

    @override
    List<Object?> get props => [
    defaultText, defaultIcon, defaultServiceEndpoint, toggledText, toggledIcon, toggledServiceEndpoint, trackingParams, ];
}

class ToggledServiceEndpoint extends Equatable {
    const ToggledServiceEndpoint({
        required this.clickTrackingParams,
        required this.likeEndpoint,
    });

    final String? clickTrackingParams;
    final LikeEndpoint? likeEndpoint;

    factory ToggledServiceEndpoint.fromJson(Map<String, dynamic> json){ 
        return ToggledServiceEndpoint(
            clickTrackingParams: json["clickTrackingParams"],
            likeEndpoint: json["likeEndpoint"] == null ? null : LikeEndpoint.fromJson(json["likeEndpoint"]),
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
    final LikeEndpointTarget? target;

    factory LikeEndpoint.fromJson(Map<String, dynamic> json){ 
        return LikeEndpoint(
            status: json["status"],
            target: json["target"] == null ? null : LikeEndpointTarget.fromJson(json["target"]),
        );
    }

    @override
    List<Object?> get props => [
    status, target, ];
}

class LikeEndpointTarget extends Equatable {
    const LikeEndpointTarget({
        required this.playlistId,
    });

    final String? playlistId;

    factory LikeEndpointTarget.fromJson(Map<String, dynamic> json){ 
        return LikeEndpointTarget(
            playlistId: json["playlistId"],
        );
    }

    @override
    List<Object?> get props => [
    playlistId, ];
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
    final Accessibility? accessibilityPlayData;
    final Accessibility? accessibilityPauseData;

    factory ButtonMusicPlayButtonRenderer.fromJson(Map<String, dynamic> json){ 
        return ButtonMusicPlayButtonRenderer(
            playNavigationEndpoint: json["playNavigationEndpoint"] == null ? null : PlayNavigationEndpoint.fromJson(json["playNavigationEndpoint"]),
            trackingParams: json["trackingParams"],
            playIcon: json["playIcon"] == null ? null : Icon.fromJson(json["playIcon"]),
            pauseIcon: json["pauseIcon"] == null ? null : Icon.fromJson(json["pauseIcon"]),
            iconColor: json["iconColor"],
            backgroundColor: json["backgroundColor"],
            activeBackgroundColor: json["activeBackgroundColor"],
            loadingIndicatorColor: json["loadingIndicatorColor"],
            playingIcon: json["playingIcon"] == null ? null : Icon.fromJson(json["playingIcon"]),
            iconLoadingColor: json["iconLoadingColor"],
            activeScaleFactor: json["activeScaleFactor"],
            accessibilityPlayData: json["accessibilityPlayData"] == null ? null : Accessibility.fromJson(json["accessibilityPlayData"]),
            accessibilityPauseData: json["accessibilityPauseData"] == null ? null : Accessibility.fromJson(json["accessibilityPauseData"]),
        );
    }

    @override
    List<Object?> get props => [
    playNavigationEndpoint, trackingParams, playIcon, pauseIcon, iconColor, backgroundColor, activeBackgroundColor, loadingIndicatorColor, playingIcon, iconLoadingColor, activeScaleFactor, accessibilityPlayData, accessibilityPauseData, ];
}

class ButtonToggleButtonRenderer extends Equatable {
    const ButtonToggleButtonRenderer({
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
    final Accessibility? accessibilityData;
    final Accessibility? toggledAccessibilityData;

    factory ButtonToggleButtonRenderer.fromJson(Map<String, dynamic> json){ 
        return ButtonToggleButtonRenderer(
            isToggled: json["isToggled"],
            isDisabled: json["isDisabled"],
            defaultIcon: json["defaultIcon"] == null ? null : Icon.fromJson(json["defaultIcon"]),
            toggledIcon: json["toggledIcon"] == null ? null : Icon.fromJson(json["toggledIcon"]),
            trackingParams: json["trackingParams"],
            defaultNavigationEndpoint: json["defaultNavigationEndpoint"] == null ? null : DefaultNavigationEndpoint.fromJson(json["defaultNavigationEndpoint"]),
            accessibilityData: json["accessibilityData"] == null ? null : Accessibility.fromJson(json["accessibilityData"]),
            toggledAccessibilityData: json["toggledAccessibilityData"] == null ? null : Accessibility.fromJson(json["toggledAccessibilityData"]),
        );
    }

    @override
    List<Object?> get props => [
    isToggled, isDisabled, defaultIcon, toggledIcon, trackingParams, defaultNavigationEndpoint, accessibilityData, toggledAccessibilityData, ];
}

class Description extends Equatable {
    const Description({
        required this.musicDescriptionShelfRenderer,
    });

    final MusicDescriptionShelfRenderer? musicDescriptionShelfRenderer;

    factory Description.fromJson(Map<String, dynamic> json){ 
        return Description(
            musicDescriptionShelfRenderer: json["musicDescriptionShelfRenderer"] == null ? null : MusicDescriptionShelfRenderer.fromJson(json["musicDescriptionShelfRenderer"]),
        );
    }

    @override
    List<Object?> get props => [
    musicDescriptionShelfRenderer, ];
}

class MusicDescriptionShelfRenderer extends Equatable {
    const MusicDescriptionShelfRenderer({
        required this.description,
        required this.moreButton,
        required this.trackingParams,
        required this.shelfStyle,
    });

    final SecondSubtitle? description;
    final MoreButton? moreButton;
    final String? trackingParams;
    final String? shelfStyle;

    factory MusicDescriptionShelfRenderer.fromJson(Map<String, dynamic> json){ 
        return MusicDescriptionShelfRenderer(
            description: json["description"] == null ? null : SecondSubtitle.fromJson(json["description"]),
            moreButton: json["moreButton"] == null ? null : MoreButton.fromJson(json["moreButton"]),
            trackingParams: json["trackingParams"],
            shelfStyle: json["shelfStyle"],
        );
    }

    @override
    List<Object?> get props => [
    description, moreButton, trackingParams, shelfStyle, ];
}

class MoreButton extends Equatable {
    const MoreButton({
        required this.toggleButtonRenderer,
    });

    final MoreButtonToggleButtonRenderer? toggleButtonRenderer;

    factory MoreButton.fromJson(Map<String, dynamic> json){ 
        return MoreButton(
            toggleButtonRenderer: json["toggleButtonRenderer"] == null ? null : MoreButtonToggleButtonRenderer.fromJson(json["toggleButtonRenderer"]),
        );
    }

    @override
    List<Object?> get props => [
    toggleButtonRenderer, ];
}

class MoreButtonToggleButtonRenderer extends Equatable {
    const MoreButtonToggleButtonRenderer({
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
    final SecondSubtitle? defaultText;
    final Icon? toggledIcon;
    final SecondSubtitle? toggledText;
    final String? trackingParams;

    factory MoreButtonToggleButtonRenderer.fromJson(Map<String, dynamic> json){ 
        return MoreButtonToggleButtonRenderer(
            isToggled: json["isToggled"],
            isDisabled: json["isDisabled"],
            defaultIcon: json["defaultIcon"] == null ? null : Icon.fromJson(json["defaultIcon"]),
            defaultText: json["defaultText"] == null ? null : SecondSubtitle.fromJson(json["defaultText"]),
            toggledIcon: json["toggledIcon"] == null ? null : Icon.fromJson(json["toggledIcon"]),
            toggledText: json["toggledText"] == null ? null : SecondSubtitle.fromJson(json["toggledText"]),
            trackingParams: json["trackingParams"],
        );
    }

    @override
    List<Object?> get props => [
    isToggled, isDisabled, defaultIcon, defaultText, toggledIcon, toggledText, trackingParams, ];
}

class Facepile extends Equatable {
    const Facepile({
        required this.avatarStackViewModel,
    });

    final AvatarStackViewModel? avatarStackViewModel;

    factory Facepile.fromJson(Map<String, dynamic> json){ 
        return Facepile(
            avatarStackViewModel: json["avatarStackViewModel"] == null ? null : AvatarStackViewModel.fromJson(json["avatarStackViewModel"]),
        );
    }

    @override
    List<Object?> get props => [
    avatarStackViewModel, ];
}

class AvatarStackViewModel extends Equatable {
    const AvatarStackViewModel({
        required this.text,
        required this.rendererContext,
    });

    final AvatarStackViewModelText? text;
    final RendererContext? rendererContext;

    factory AvatarStackViewModel.fromJson(Map<String, dynamic> json){ 
        return AvatarStackViewModel(
            text: json["text"] == null ? null : AvatarStackViewModelText.fromJson(json["text"]),
            rendererContext: json["rendererContext"] == null ? null : RendererContext.fromJson(json["rendererContext"]),
        );
    }

    @override
    List<Object?> get props => [
    text, rendererContext, ];
}

class RendererContext extends Equatable {
    const RendererContext({
        required this.accessibilityContext,
    });

    final AccessibilityContextClass? accessibilityContext;

    factory RendererContext.fromJson(Map<String, dynamic> json){ 
        return RendererContext(
            accessibilityContext: json["accessibilityContext"] == null ? null : AccessibilityContextClass.fromJson(json["accessibilityContext"]),
        );
    }

    @override
    List<Object?> get props => [
    accessibilityContext, ];
}

class AvatarStackViewModelText extends Equatable {
    const AvatarStackViewModelText({
        required this.content,
    });

    final String? content;

    factory AvatarStackViewModelText.fromJson(Map<String, dynamic> json){ 
        return AvatarStackViewModelText(
            content: json["content"],
        );
    }

    @override
    List<Object?> get props => [
    content, ];
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
            visitorData: json["visitorData"],
            serviceTrackingParams: json["serviceTrackingParams"] == null ? [] : List<ServiceTrackingParam>.from(json["serviceTrackingParams"]!.map((x) => ServiceTrackingParam.fromJson(x))),
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
            service: json["service"],
            params: json["params"] == null ? [] : List<Param>.from(json["params"]!.map((x) => Param.fromJson(x))),
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
            key: json["key"],
            value: json["value"],
        );
    }

    @override
    List<Object?> get props => [
    key, value, ];
}
