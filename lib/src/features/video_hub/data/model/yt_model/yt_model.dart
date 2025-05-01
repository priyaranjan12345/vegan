/// youtube music response serialization
class YtModel {
  final List<SectionContentModel> sectionContents;

  YtModel({
    required this.sectionContents,
  });

  factory YtModel.fromMap(Map<String, dynamic> map) {
    final tab =
        map['contents']['singleColumnBrowseResultsRenderer']['tabs'].first;
    final sectionContents = tab['tabRenderer']['content']['sectionListRenderer']
        ['contents'] as List;

    return YtModel(
      sectionContents: sectionContents
          .map(
            (sectionContent) => SectionContentModel.fromJson(sectionContent),
          )
          .toList(),
    );
  }
}

class SectionContentModel {
  final HeaderModel headerModel;
  final List<InnerContent> innerContents;

  SectionContentModel({
    required this.headerModel,
    required this.innerContents,
  });

  factory SectionContentModel.fromJson(Map<String, dynamic> map) {
    final musicCarouselShelfRenderer = map['musicCarouselShelfRenderer'];

    /// handle null object
    if (musicCarouselShelfRenderer == null) {
      return SectionContentModel(
        headerModel: HeaderModel(
          heading: '',
          videoId: '',
        ),
        innerContents: [],
      );
    }

    final header = musicCarouselShelfRenderer['header'];
    final innerContents = musicCarouselShelfRenderer['contents'] as List;

    return SectionContentModel(
      headerModel: HeaderModel.fromMap(header),
      innerContents: innerContents.map(
        (e) {
          return InnerContent.fromMap(e);
        },
      ).toList(),
    );
  }
}

class InnerContent {
  final String title;
  final String videoId;
  final String thumbnail;

  InnerContent({
    required this.title,
    required this.videoId,
    required this.thumbnail,
  });

  factory InnerContent.fromMap(Map<String, dynamic> map) {
    final innerContent = map['musicResponsiveListItemRenderer'];

    /// handle null object
    if (innerContent == null) {
      return InnerContent(
        title: '',
        videoId: '',
        thumbnail: '',
      );
    }

    /// grab thumbnail details
    final thumbnails = innerContent['thumbnail']['musicThumbnailRenderer']
        ['thumbnail']['thumbnails'];
    final thumbnail = thumbnails.first['url'] as String;

    /// grab video details from map
    final flexColumns = innerContent['flexColumns'] as List;
    final flexColumn = flexColumns.first;
    final runs = flexColumn['musicResponsiveListItemFlexColumnRenderer']['text']
        ['runs'] as List;
    final run = runs.first;
    final title = run['text'] as String;
    final videoId = run['navigationEndpoint']['watchEndpoint']['videoId'];

    return InnerContent(
      title: title,
      videoId: videoId,
      thumbnail: thumbnail,
    );
  }
}

class HeaderModel {
  final String heading;
  final String videoId;

  HeaderModel({
    required this.heading,
    required this.videoId,
  });

  factory HeaderModel.fromMap(Map<String, dynamic> map) {
    final headerRenderer = map['musicCarouselShelfBasicHeaderRenderer'];
    if (headerRenderer == null) {
      return HeaderModel(
        heading: '',
        videoId: '',
      );
    }

    final runs = headerRenderer['title']['runs'];
    final heading = runs.first['text'] as String;

    final videoId = headerRenderer['moreContentButton']?['buttonRenderer']
        ?['navigationEndpoint']?['watchEndpoint']?['videoId'] as String?;

    return HeaderModel(
      heading: heading,
      videoId: videoId ?? '',
    );
  }
}
