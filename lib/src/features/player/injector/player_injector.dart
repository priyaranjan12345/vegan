import 'package:audio_service/audio_service.dart';
import 'package:get_it/get_it.dart';
import 'package:just_audio/just_audio.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../presentation/bloc/yt_player_bloc/yt_player_bloc.dart';
import '../service/audio_handler_service.dart';
import '../domain/usecase/next_up_usecase.dart';
import '../presentation/bloc/next_up_cubit/next_up_cubit.dart';

class PlayerInjector {
  const PlayerInjector(this.injector);

  final GetIt injector;

  Future<void> call() async {
    injector.registerFactory(() => AudioPlayer());

    final audioService = await AudioService.init(
      builder: () => AudioHandlerService(injector<AudioPlayer>()),
      config: const AudioServiceConfig(
        androidNotificationChannelId: 'com.vegan.app.channel.audio',
        androidNotificationChannelName: 'Vegan',
        androidNotificationChannelDescription: 'Vegan Music Player',
        androidNotificationOngoing: true,
        androidShowNotificationBadge: true,
        androidNotificationIcon: 'mipmap/launcher_icon',
      ),
    );

    injector.registerFactory(() => YoutubeExplode());

    // player
    injector.registerLazySingleton(
      () => YtPlayerBloc(
        youtubeExplode: injector<YoutubeExplode>(),
        nextUpUsecase: injector<NextUpUsecase>(),
        audioHandlerService: injector<AudioHandlerService>(),
      ),
    );

    // Next up
    injector.registerFactory<NextUpUsecase>(
      () => NextUpUsecase(videoHubRepository: injector()),
    );

    injector.registerLazySingleton<NextUpCubit>(
      () => NextUpCubit(nextUpUsecase: injector()),
    );

    // audio service handler --> injector to the player-bloc
    injector.registerFactory(() => audioService);
  }
}
