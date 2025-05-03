class YtMoodsModel {
  YtMoodsModel({
    required this.responseContext,
    required this.contents,
    required this.header,
    required this.trackingParams,
    required this.maxAgeStoreSeconds,
  });

  final ResponseContext? responseContext;
  final Contents? contents;
  final YtMoodsModelHeader? header;
  final String? trackingParams;
  final int? maxAgeStoreSeconds;

  factory YtMoodsModel.fromJson(Map<String, dynamic> json) {
    return YtMoodsModel(
      responseContext: json["responseContext"] == null
          ? null
          : ResponseContext.fromJson(json["responseContext"]),
      contents:
          json["contents"] == null ? null : Contents.fromJson(json["contents"]),
      header: json["header"] == null
          ? null
          : YtMoodsModelHeader.fromJson(json["header"]),
      trackingParams: json["trackingParams"],
      maxAgeStoreSeconds: json["maxAgeStoreSeconds"],
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
    required this.content,
    required this.trackingParams,
  });

  final TabRendererContent? content;
  final String? trackingParams;

  factory TabRenderer.fromJson(Map<String, dynamic> json) {
    return TabRenderer(
      content: json["content"] == null
          ? null
          : TabRendererContent.fromJson(json["content"]),
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
    required this.trackingParams,
  });

  final List<ContentElement> contents;
  final String? trackingParams;

  factory SectionListRenderer.fromJson(Map<String, dynamic> json) {
    return SectionListRenderer(
      contents: json["contents"] == null
          ? []
          : List<ContentElement>.from(
              json["contents"]!.map((x) => ContentElement.fromJson(x))),
      trackingParams: json["trackingParams"],
    );
  }
}

class ContentElement {
  ContentElement({
    required this.gridRenderer,
  });

  final GridRenderer? gridRenderer;

  factory ContentElement.fromJson(Map<String, dynamic> json) {
    return ContentElement(
      gridRenderer: json["gridRenderer"] == null
          ? null
          : GridRenderer.fromJson(json["gridRenderer"]),
    );
  }
}

class GridRenderer {
  GridRenderer({
    required this.items,
    required this.trackingParams,
    required this.itemSize,
    required this.header,
  });

  final List<Item> items;
  final String? trackingParams;
  final String? itemSize;
  final GridRendererHeader? header;

  factory GridRenderer.fromJson(Map<String, dynamic> json) {
    return GridRenderer(
      items: json["items"] == null
          ? []
          : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
      trackingParams: json["trackingParams"],
      itemSize: json["itemSize"],
      header: json["header"] == null
          ? null
          : GridRendererHeader.fromJson(json["header"]),
    );
  }
}

class GridRendererHeader {
  GridRendererHeader({
    required this.gridHeaderRenderer,
  });

  final GridHeaderRenderer? gridHeaderRenderer;

  factory GridRendererHeader.fromJson(Map<String, dynamic> json) {
    return GridRendererHeader(
      gridHeaderRenderer: json["gridHeaderRenderer"] == null
          ? null
          : GridHeaderRenderer.fromJson(json["gridHeaderRenderer"]),
    );
  }
}

class GridHeaderRenderer {
  GridHeaderRenderer({
    required this.title,
  });

  final Title? title;

  factory GridHeaderRenderer.fromJson(Map<String, dynamic> json) {
    return GridHeaderRenderer(
      title: json["title"] == null ? null : Title.fromJson(json["title"]),
    );
  }
}

class Title {
  Title({
    required this.runs,
  });

  final List<Run> runs;

  factory Title.fromJson(Map<String, dynamic> json) {
    return Title(
      runs: json["runs"] == null
          ? []
          : List<Run>.from(json["runs"]!.map((x) => Run.fromJson(x))),
    );
  }
}

class Run {
  Run({
    required this.text,
  });

  final String? text;

  factory Run.fromJson(Map<String, dynamic> json) {
    return Run(
      text: json["text"],
    );
  }
}

class Item {
  Item({
    required this.musicNavigationButtonRenderer,
  });

  final MusicNavigationButtonRenderer? musicNavigationButtonRenderer;

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      musicNavigationButtonRenderer:
          json["musicNavigationButtonRenderer"] == null
              ? null
              : MusicNavigationButtonRenderer.fromJson(
                  json["musicNavigationButtonRenderer"]),
    );
  }
}

class MusicNavigationButtonRenderer {
  MusicNavigationButtonRenderer({
    required this.buttonText,
    required this.solid,
    required this.clickCommand,
    required this.trackingParams,
  });

  final Title? buttonText;
  final Solid? solid;
  final ClickCommand? clickCommand;
  final String? trackingParams;

  factory MusicNavigationButtonRenderer.fromJson(Map<String, dynamic> json) {
    return MusicNavigationButtonRenderer(
      buttonText: json["buttonText"] == null
          ? null
          : Title.fromJson(json["buttonText"]),
      solid: json["solid"] == null ? null : Solid.fromJson(json["solid"]),
      clickCommand: json["clickCommand"] == null
          ? null
          : ClickCommand.fromJson(json["clickCommand"]),
      trackingParams: json["trackingParams"],
    );
  }
}

class ClickCommand {
  ClickCommand({
    required this.clickTrackingParams,
    required this.browseEndpoint,
  });

  final String? clickTrackingParams;
  final BrowseEndpoint? browseEndpoint;

  factory ClickCommand.fromJson(Map<String, dynamic> json) {
    return ClickCommand(
      clickTrackingParams: json["clickTrackingParams"],
      browseEndpoint: json["browseEndpoint"] == null
          ? null
          : BrowseEndpoint.fromJson(json["browseEndpoint"]),
    );
  }
}

class BrowseEndpoint {
  BrowseEndpoint({
    required this.browseId,
    required this.params,
  });

  final String? browseId;
  final String? params;

  factory BrowseEndpoint.fromJson(Map<String, dynamic> json) {
    return BrowseEndpoint(
      browseId: json["browseId"],
      params: json["params"],
    );
  }
}

class Solid {
  Solid({
    required this.leftStripeColor,
  });

  final int? leftStripeColor;

  factory Solid.fromJson(Map<String, dynamic> json) {
    return Solid(
      leftStripeColor: json["leftStripeColor"],
    );
  }
}

class YtMoodsModelHeader {
  YtMoodsModelHeader({
    required this.musicHeaderRenderer,
  });

  final MusicHeaderRenderer? musicHeaderRenderer;

  factory YtMoodsModelHeader.fromJson(Map<String, dynamic> json) {
    return YtMoodsModelHeader(
      musicHeaderRenderer: json["musicHeaderRenderer"] == null
          ? null
          : MusicHeaderRenderer.fromJson(json["musicHeaderRenderer"]),
    );
  }
}

class MusicHeaderRenderer {
  MusicHeaderRenderer({
    required this.title,
    required this.trackingParams,
  });

  final Title? title;
  final String? trackingParams;

  factory MusicHeaderRenderer.fromJson(Map<String, dynamic> json) {
    return MusicHeaderRenderer(
      title: json["title"] == null ? null : Title.fromJson(json["title"]),
      trackingParams: json["trackingParams"],
    );
  }
}

class ResponseContext {
  ResponseContext({
    required this.visitorData,
    required this.serviceTrackingParams,
  });

  final String? visitorData;
  final List<ServiceTrackingParam> serviceTrackingParams;

  factory ResponseContext.fromJson(Map<String, dynamic> json) {
    return ResponseContext(
      visitorData: json["visitorData"],
      serviceTrackingParams: json["serviceTrackingParams"] == null
          ? []
          : List<ServiceTrackingParam>.from(json["serviceTrackingParams"]!
              .map((x) => ServiceTrackingParam.fromJson(x))),
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
