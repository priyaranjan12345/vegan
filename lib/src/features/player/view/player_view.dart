import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocBuilder<YtPlayerBloc, MusicPlayerState>(
      buildWhen: (previous, current) =>
          current.playerState != previous.playerState,
      builder: (_, state) => isMaxPlayer
          ? Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: AppColors.darcular,
                borderRadius: BorderRadius.circular(12),
              ),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 400),
                child: switch (state.playerState) {
                  PlayerStatus.INIT ||
                  PlayerStatus.LOADING => const MaxMusicPlayerLoading(),
                  PlayerStatus.LOADED => MaxMusicPlayer(
                    thumbnail: state.video!.thubmnail,
                    title: state.video!.title,
                    artist: state.video!.description,
                    player: state.player!,
                  ),
                  PlayerStatus.ERROR => const MaxMusicPlayerError(),
                },
              ),
            )
          : Container(
              color: AppColors.dark,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 4.0,
                ),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  child: switch (state.playerState) {
                    PlayerStatus.INIT => const SizedBox.shrink(),
                    PlayerStatus.LOADING => const MiniMusicPlayerLoading(),
                    PlayerStatus.LOADED => MiniMusicPlayer(
                      state.player!,
                      title: state.video!.title,
                      author: state.video!.description,
                      thumbnail: state.video!.thubmnail,
                      description: state.video!.description,
                    ),
                    PlayerStatus.ERROR => const MiniMusicPlayerError(),
                  },
                ),
              ),
            ),
    );
  }
}
