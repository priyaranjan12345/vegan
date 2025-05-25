import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegan/src/app/app.dart';
import 'package:vegan/src/features/player/bloc/next_up_cubit/next_up_cubit.dart';
import 'package:vegan/src/features/player/view/state_ui/max_music_player/max_music_player.dart';
import 'package:vegan/src/features/player/view/state_ui/mini_music_player/mini_music_player.dart';

import '../../../core/theme/app_colors.dart';
import '../bloc/yt_player_bloc/yt_player_bloc.dart';
import 'state_ui/max_music_player/max_music_player_error.dart';
import 'state_ui/max_music_player/max_music_player_loading.dart';
import 'state_ui/mini_music_player/mini_music_player_error.dart';
import 'state_ui/mini_music_player/mini_music_player_loading.dart';

class PlayerView extends StatelessWidget {
  const PlayerView({
    super.key,
    this.isMaxPlayer = false,
  });

  final bool isMaxPlayer;

  @override
  Widget build(BuildContext context) {
    return PlayerViewWrapper(
      isMaxPlayer: isMaxPlayer,
    );
  }
}

class PlayerViewWrapper extends StatelessWidget {
  const PlayerViewWrapper({
    super.key,
    required this.isMaxPlayer,
  });

  final bool isMaxPlayer;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<YtPlayerBloc, YtPlayerState>(
      listener: (context, state) {
        if (state is PlayerLoadedState) {
          if (state.playlistId.isNotEmpty) {
            injector<NextUpCubit>().fetchNextUp(
              videoId: state.videoId,
              playlistId: state.playlistId,
            );
          }
        }
      },
      builder: (context, state) => isMaxPlayer
          ? Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: AppColors.darcular,
                borderRadius: BorderRadius.circular(12),
              ),
              child: switch (state) {
                PlayerInitState() ||
                PlayerLoadingState() => const MaxMusicPlayerLoading(),
                PlayerLoadedState() => MaxMusicPlayer(
                  thumbnail: state.thumbnail,
                  title: state.title,
                  artist: state.author,
                  player: state.player,
                ),
                PlayerErrorState() => const MaxMusicPlayerError(),
              },
            )
          : Container(
              color: AppColors.dark,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 4.0,
                ),
                child: switch (state) {
                  PlayerInitState() => const SizedBox.shrink(),
                  PlayerLoadingState() => const MiniMusicPlayerLoading(),
                  PlayerLoadedState() => MiniMusicPlayer(
                    state.player,
                    title: state.title,
                    author: state.author,
                    thumbnail: state.thumbnail,
                    description: state.description,
                  ),
                  PlayerErrorState() => const MiniMusicPlayerError(),
                },
              ),
            ),
    );
  }
}
