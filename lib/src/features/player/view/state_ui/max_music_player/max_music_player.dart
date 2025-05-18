import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:vegan/src/core/components/app_image.dart';

import 'package:vegan/src/features/player/view/yt_player.dart';
import 'package:vegan/src/features/player/widgets/progress_bar.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({
    super.key,
    required this.child,
    required this.videoId,
    required this.title,
    required this.description,
    required this.author,
    required this.thumbnail,
  });

  final Widget child;

  final String videoId;
  final String title;
  final String description;
  final String author;
  final String thumbnail;

  const MusicPlayer.mini({
    super.key,
    required this.videoId,
    required this.title,
    required this.description,
    required this.author,
    required this.thumbnail,
  }) : child = const Placeholder();

  MusicPlayer.max({
    super.key,
    required this.videoId,
    required this.title,
    required this.description,
    required this.author,
    required this.thumbnail,
  }) : child = MaxMusicPlayer(
          thumbnail: thumbnail,
          title: title,
          artist: author,
          player: Player(),
        );

  @override
  Widget build(BuildContext context) {
    return child;
  }
}

class MaxMusicPlayer extends StatelessWidget {
  const MaxMusicPlayer({
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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
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
                mainAxisSize: MainAxisSize.min,
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
            ),
          ],
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 5,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            child: PlayerProgressIndicator(
              player,
              allowScrubbing: true,
            ),
          ),
        ),
      ],
    );
  }
}
