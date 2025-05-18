import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';

import '../../../core/theme/app_colors.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  factory PlayButton.loading() {
    return const LoadingPlayButton();
  }

  factory PlayButton.success({
    required Player player,
  }) {
    return LoadedPlayButton(
      player: player,
    );
  }

  factory PlayButton.error() {
    return const ErrorPlayButton();
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}

class LoadingPlayButton extends PlayButton {
  const LoadingPlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
      width: 30,
      child: Material(
        color: AppColors.darkGray,
        surfaceTintColor: AppColors.darkGray,
        shape: CircleBorder(),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class LoadedPlayButton extends PlayButton {
  const LoadedPlayButton({
    super.key,
    required this.player,
  });

  final Player player;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: Material(
        color: AppColors.darkGray,
        surfaceTintColor: AppColors.darkGray,
        shape: const CircleBorder(),
        child: StreamBuilder(
            stream: player.stream.playing,
            builder: (context, data) {
              final isPlaying = data.data ?? false;
              final icon = isPlaying
                  ? const Icon(Icons.pause_rounded)
                  : const Icon(Icons.play_arrow_rounded);

              return InkWell(
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                onTap: () {
                  if (isPlaying) {
                    player.pause();
                  } else {
                    player.play();
                  }
                },
                child: icon,
              );
            }),
      ),
    );
  }
}

class ErrorPlayButton extends PlayButton {
  const ErrorPlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
      width: 30,
      child: Material(
        color: AppColors.darkGray,
        surfaceTintColor: AppColors.darkGray,
        shape: CircleBorder(),
        child: Icon(Icons.info_outline_rounded),
      ),
    );
  }
}
