import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/app_colors.dart';
import '../bloc/video_details_cubit/video_details_cubit.dart';
import '../bloc/yt_player_bloc/yt_player_bloc.dart';
import '../widgets/play_button.dart';
import '../widgets/progress_bar.dart';
import 'mini_player_deatils.dart';
import 'yt_player.dart';

class MiniPlayer extends StatelessWidget {
  const MiniPlayer({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: AppColors.dark,
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 4.0,
          ),
          child: Row(
            children: [
              Expanded(
                child: MiniPlayerDeatilsWrapper(),
              ),
              PlayButtonWrapper(),
            ],
          ),
        ),
      ),
    );
  }
}

class MiniPlayerDeatilsWrapper extends StatelessWidget {
  const MiniPlayerDeatilsWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VideoDetailsCubit, VideoDetailsState>(
      listener: (context, state) {
        if (state.videoDetailsStatus == VideoDetailsStatus.loaded) {
          context.read<YtPlayerBloc>().add(LoadMusic(state.videoId));
        }
      },
      builder: (context, state) => switch (state.videoDetailsStatus) {
        VideoDetailsStatus.init => const SizedBox.shrink(),
        VideoDetailsStatus.loading => const MiniPlayerDeatilsLoading(),
        VideoDetailsStatus.loaded => MiniPlayerDeatils(
            imageUrl: state.thumbnail,
            title: state.title,
            subTitle: state.artist,
          ),
        VideoDetailsStatus.error => const SizedBox.shrink(),
      },
    );
  }
}

class PlayButtonWrapper extends StatelessWidget {
  const PlayButtonWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YtPlayerBloc, YtPlayerState>(
      builder: (context, state) => switch (state) {
        PlayerInitState() => const SizedBox.shrink(),
        PlayerLoadingState() => PlayButton.loading(),
        PlayerLoadedState() => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  CustomIconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.skip_previous_rounded),
                  ),
                  PlayButton.success(
                    player: state.player,
                  ),
                  CustomIconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.skip_next_rounded),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
                width: 84,
                child: PlayerProgressIndicator(
                  state.player,
                  allowScrubbing: true,
                ),
              ),
            ],
          ),
        PlayerErrorState() => PlayButton.error(),
      },
    );
  }
}
