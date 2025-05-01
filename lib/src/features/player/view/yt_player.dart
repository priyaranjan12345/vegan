import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:media_kit/media_kit.dart';
import 'package:vegan/src/core/components/app_image.dart';
import 'package:vegan/src/features/player/bloc/yt_player_bloc/yt_player_bloc.dart';
import 'package:vegan/src/shared/extension/duration_x.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../../../core/theme/app_colors.dart';

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
                    PlayerLoadedState() => MusicPlayer(
                        player: state.player,
                        thumbnail: state.thumbnail,
                        title: state.title,
                        artist: state.artist,
                      ),
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

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({
    super.key,
    required this.thumbnail,
    required this.title,
    required this.artist,
    required this.player,
  });

  final String thumbnail;
  final String title;
  final String artist;
  final Player player;

  void playerListener() {
    player.stream.playing.listen(
      (isPlaying) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: AppColors.darkGray,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            // player
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: AppImage(
                    imageUrl: thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(title),
                      Text(artist),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border),
                          ),
                          CustomIconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.skip_previous_rounded),
                          ),
                          StreamBuilder<bool>(
                            stream: player.stream.playing,
                            builder: (context, snapshot) {
                              final flag = snapshot.data ?? false;

                              return CustomIconButton(
                                onPressed: () {
                                  if (!flag) {
                                    player.play();
                                  } else {
                                    player.pause();
                                  }
                                },
                                icon: Icon(
                                  flag
                                      ? Icons.pause_rounded
                                      : Icons.play_arrow_rounded,
                                ),
                              );
                            },
                          ),
                          CustomIconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.skip_next_rounded),
                          ),
                          CustomIconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.download_outlined),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),

            // progress bar
            StreamBuilder<Duration>(
              stream: player.stream.position,
              builder: (context, snapshot) {
                final position = snapshot.data ?? Duration.zero;
                return StreamBuilder<Duration>(
                  stream: player.stream.duration,
                  builder: (context, snapshot) {
                    final duration = snapshot.data ?? Duration.zero;
                    return Column(
                      children: [
                        Slider(
                          value: position.inSeconds.toDouble(),
                          min: 0,
                          max: duration.inSeconds.toDouble(),
                          onChanged: (value) {
                            player.seek(Duration(seconds: value.toInt()));
                          },
                        ),
                        Text('${position.toMMSS()} / ${duration.toMMSS()}'),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ));
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

class MusicTile extends StatelessWidget {
  const MusicTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

/// extract url
/// play the music
/// show next music suggestions
///
/// player state ui
/// loading, loaded, and error Ui
///
/// suggestion tile
///

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

// Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 spacing: 12.0,
//                 children: [
                  
//                   NextUp(),
//                 ],
//               )