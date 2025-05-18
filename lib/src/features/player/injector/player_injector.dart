import 'package:media_kit/media_kit.dart';
import 'package:vegan/src/features/player/bloc/yt_player_bloc/yt_player_bloc.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../../../app/app.dart';
import '../bloc/video_details_cubit/video_details_cubit.dart';

class PlayerInjector {
  PlayerInjector._();

  static void inject() {
    injector.registerFactory(
      () => Player(),
    );
    injector.registerFactory(
      () => YoutubeExplode(),
    );
    injector.registerLazySingleton(
      () => YtPlayerBloc(
        player: injector<Player>(),
        youtubeExplode: injector<YoutubeExplode>(),
      ),
    );
    injector.registerFactory(
      () => VideoDetailsCubit(
        youtubeExplode: injector<YoutubeExplode>(),
      ),
    );
  }
}
