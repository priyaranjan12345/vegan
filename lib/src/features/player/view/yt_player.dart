import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:media_kit/media_kit.dart';
import 'package:vegan/src/features/player/bloc/yt_player_bloc/yt_player_bloc.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class YtPlayer extends StatelessWidget {
  const YtPlayer({super.key, required this.videoId});

  final String videoId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yt Player'),
      ),
      body: BlocProvider(
        create: (context) => YtPlayerBloc(
          player: Player(),
          youtubeExplode: YoutubeExplode(),
        )..add(LoadMusic(videoId)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              BlocBuilder<YtPlayerBloc, YtPlayerState>(
                builder: (context, state) {
                  return switch (state) {
                    PlayerInitState() || PlayerLoadingState() => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    PlayerLoadedState() => Container(),
                    // MusicPlayer(
                    //     player: state.player,
                    //     thumbnail: state.thumbnail,
                    //     title: state.title,
                    //     artist: state.author,
                    //   ),
                    PlayerErrorState() => Container(),
                  };
                },
              ),

              // next up
            ],
          ),
        ),
      ),
    );
  }
}

class NextUp extends StatelessWidget {
  const NextUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Next Up',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),

        // TODO: Next Up List and Tile
      ],
    );
  }
}


class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final Widget icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: icon,
        ),
      ),
    );
  }
}
