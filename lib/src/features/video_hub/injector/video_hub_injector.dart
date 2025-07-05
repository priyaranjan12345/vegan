import '../../../app/app.dart';
import '../data/datasource/video_hub_remote_datasource.dart';
import '../data/repository/i_video_hub_repository.dart';
import '../domain/repository/repository.dart';
import '../domain/usecase/usecase.dart';
import '../presentation/bloc/browse_bloc/browse_bloc.dart';
import '../presentation/bloc/moods_cubit/moods_cubit.dart';
import '../presentation/bloc/playlist_cubit/playlist_cubit.dart';
import '../presentation/bloc/video_hub_bloc.dart';

class VideoHubInjector {
  static void inject() {
    /// resister video hub bloc
    injector.registerFactory(
      () => VideoHubBloc(
        videoHubUsecase: injector(),
        continuationUsecase: injector(),
      ),
    );

    injector.registerFactory(
      () => BrowseBloc(
        videoHubUsecase: injector(),
        continuationUsecase: injector(),
      ),
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

    injector.registerFactory<ContinuationUsecase>(
      () => ContinuationUsecase(videoHubRepository: injector()),
    );

    injector.registerFactory<PlaylistCubit>(
      () => PlaylistCubit(playlistUsecase: injector()),
    );
  }
}
