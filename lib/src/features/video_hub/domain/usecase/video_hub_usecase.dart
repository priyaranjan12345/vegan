import 'package:dartz/dartz.dart';
import 'package:vegan/src/core/base/app_url.dart';

import 'package:vegan/src/core/error/failure/failure.dart';
import 'package:vegan/src/core/usecase/usecase.dart';
import 'package:vegan/src/features/video_hub/data/model/video_model.dart';
import 'package:vegan/src/features/video_hub/domain/entity/entity.dart';

import '../../../../core/function_mapper/function_mapper.dart';
import '../../../../core/usecase/no_params.dart';
import '../repository/video_hub_repository.dart';

class VideoHubUsecase implements UseCase<HomeEntity, NoParams> {
  VideoHubUsecase({
    required this.videoHubRepository,
  });

  final VideoHubRepository videoHubRepository;

  @override
  Future<Either<Failure, HomeEntity>> call(params) async {
    final result = await videoHubRepository.fetchVideos();
    return result.fold(
      (ex) => Left(ServerFailure()),
      (ytModel) {
        final suggestions = ytModel.sectionContents.map(
          (content) {
            final header = content.headerModel;
            final videos = content.innerContents
                .map(
                  (innerContent) => VideoEntity(
                    id: innerContent.videoId,
                    title: innerContent.title,
                    description: '',
                    videoUrl: AppUrl.ytVideoUrl(innerContent.videoId),
                    thubmnail: innerContent.thumbnail,
                    publishDate: '',
                    playlistId: innerContent.playlistId,
                  ),
                )
                .toList();

            return SuggestionEntity(
              heading: header.heading,
              videos: videos,
            );
          },
        ).toList();

        // final videoEntities = ytModel.sectionContents
        //     .expand(
        //       (sectionContent) => sectionContent.innerContents.map(
        //         (innerContent) => VideoEntity(
        //           id: innerContent.videoId,
        //           title: innerContent.title,
        //           description: '',
        //           videoUrl: AppUrl.ytVideoUrl(innerContent.videoId),
        //           thubmnail: innerContent.thumbnail,
        //           publishDate: '',
        //         ),
        //       ),
        //     )
        //     .toList();

        return Right(
          HomeEntity(suggestions: suggestions),
        );
      },
    );
  }
}

class VideoEntityMapper implements UniFunctionMapper<VideoEntity, VideoModel> {
  const VideoEntityMapper();

  @override
  VideoEntity call(VideoModel t) {
    return VideoEntity(
      id: t.id,
      title: t.title,
      description: t.description,
      videoUrl: t.videoUrl,
      thubmnail: t.thumbnailUrl,
      publishDate: t.uploadTime,
    );
  }
}
