import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:vegan/src/features/video_hub/data/datasource/video_hub_remote_datasource.dart';
import 'package:vegan/src/features/video_hub/data/repository/i_video_hub_repository.dart';
import 'package:vegan/src/features/video_hub/domain/repository/repository.dart';
import 'package:vegan/src/features/video_hub/domain/usecase/usecase.dart';
import 'package:vegan/src/features/video_hub/presentation/bloc/video_hub_bloc.dart';

/// app injector for the get_it
final injector = GetIt.instance;

void init() {
  /// resister video hub bloc
  injector.registerFactory(
    () => VideoHubBloc(videoHubUsecase: injector()),
  );

  /// register Usecase
  injector.registerLazySingleton(
    () => VideoHubUsecase(videoHubRepository: injector()),
  );

  /// register repository
  injector.registerLazySingleton<VideoHubRepository>(
    () => IVideoHubRepository(videoHubRemoteDatasource: injector()),
  );

  /// register datasource
  injector.registerLazySingleton<VideoHubRemoteDatasource>(
    () => IVideoHubRemoteDatasource(httpClient: injector()),
  );

  /// register external
  injector.registerLazySingleton(
    () => http.Client(),
  );
}
