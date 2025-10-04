import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegan/src/features/player/presentation/widgets/play_button.dart';

import '../../bloc/yt_player_bloc/yt_player_bloc.dart';

class PlayButtonWrapper extends StatelessWidget {
  const PlayButtonWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<YtPlayerBloc, MusicPlayerState, bool>(
      selector: (state) => state.isPlaying,
      builder: (context, isPlaying) => PlayButton.success(
        playButtonState: isPlaying
            ? PlayButtonState.play
            : PlayButtonState.pause,
        onPressed: () => context.read<YtPlayerBloc>().add(
          const PlayPauseEvent(),
        ),
      ),
    );
  }
}
