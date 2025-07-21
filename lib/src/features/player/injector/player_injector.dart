import 'package:audio_service/audio_service.dart';
import 'package:get_it/get_it.dart';
import 'package:media_kit/media_kit.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../bloc/yt_player_bloc/yt_player_bloc.dart';
import '../service/audio_handler_service.dart';
import '../domain/usecase/next_up_usecase.dart';
import '../bloc/next_up_cubit/next_up_cubit.dart';

class PlayerInjector {
  const PlayerInjector(this.injector);

  final GetIt injector;

 void call() {
    injector.registerFactory(
      () => Player(),
    );
    injector.registerFactory(
      () => YoutubeExplode(),
    );

    // player
    injector.registerLazySingleton(
      () => YtPlayerBloc(
        player: injector<Player>(),
        youtubeExplode: injector<YoutubeExplode>(),
        nextUpUsecase: injector<NextUpUsecase>(),
      ),
    );

    // Next up
    injector.registerFactory<NextUpUsecase>(
      () => NextUpUsecase(videoHubRepository: injector()),
    );

    injector.registerLazySingleton<NextUpCubit>(
      () => NextUpCubit(nextUpUsecase: injector()),
    );

    // audio service handler
    injector.registerSingletonAsync(
      () async => await AudioService.init(
        builder: () => AudioHandlerService(injector<Player>()),
        config: const AudioServiceConfig(
          androidNotificationChannelId: 'com.vegan.app.channel.audio',
          androidNotificationChannelName: 'Vegan Music Player',
        ),
      ),
    );
  }
}
