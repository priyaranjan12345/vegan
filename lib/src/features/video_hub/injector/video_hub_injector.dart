import 'package:vegan/src/app/app.dart';
import 'package:vegan/src/features/video_hub/data/datasource/video_hub_remote_datasource.dart';
import 'package:vegan/src/features/video_hub/data/repository/i_video_hub_repository.dart';
import 'package:vegan/src/features/video_hub/domain/repository/repository.dart';
import 'package:vegan/src/features/video_hub/domain/usecase/usecase.dart';
import 'package:vegan/src/features/video_hub/presentation/bloc/moods_cubit/moods_cubit.dart';
import 'package:vegan/src/features/video_hub/presentation/bloc/playlist_cubit/playlist_cubit.dart';
import 'package:vegan/src/features/video_hub/presentation/bloc/video_hub_bloc.dart';

class VideoHubInjector {
  static void inject() {
    /// resister video hub bloc
    injector.registerFactory(
      () => VideoHubBloc(videoHubUsecase: injector()),
    );

    /// register Usecase
    injector.registerLazySingleton<VideoHubUsecase>(
      () => VideoHubUsecase(videoHubRepository: injector()),
    );

    /// register repository
    injector.registerLazySingleton<VideoHubRepository>(
      () => IVideoHubRepository(videoHubRemoteDatasource: injector()),
    );

    /// register datasource
    injector.registerLazySingleton<VideoHubRemoteDatasource>(
      () => IVideoHubRemoteDatasource(dio: injector()),
    );

    /// moods injector
    injector.registerFactory<MoodsUsecase>(
      () => MoodsUsecase(videoHubRepository: injector()),
    );

    injector.registerFactory<MoodsCubit>(
      () => MoodsCubit(moodsUsecase: injector()),
    );

    injector.registerFactory<PlaylistUsecase>(
      () => PlaylistUsecase(videoHubRepository: injector()),
    );

    injector.registerFactory<PlaylistCubit>(
      () => PlaylistCubit(playlistUsecase: injector()),
    );
  }
}
