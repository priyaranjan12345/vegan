import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegan/src/core/components/app_image.dart';
import 'package:vegan/src/core/components/app_text.dart';

import '../../../../../../core/components/components.dart';
import '../../../bloc/yt_player_bloc/yt_player_bloc.dart';
import '../../../widgets/audio_progress.dart';
import '../../../widgets/play_button.dart';

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
  });

  final String thumbnail;
  final String title;
  final String artist;

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
                  AppText.heading(
                    text: title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  AppText.smallText(
                    text: artist,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppIconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      ),
                      AppIconButton(
                        onPressed: () => context.read<YtPlayerBloc>().add(
                          const PrevMusic(),
                        ),
                        icon: const Icon(Icons.skip_previous_rounded),
                      ),
                      const PlayButton.error(),
                      AppIconButton(
                        onPressed: () => context.read<YtPlayerBloc>().add(
                          const NextMusic(),
                        ),
                        icon: const Icon(Icons.skip_next_rounded),
                      ),
                      AppIconButton(
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
        const SizedBox(height: 12),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: SizedBox(
            height: 6,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              child: AudioProgress(
                // Use SongProgress widget to display progress bar
                totalDuration: Duration(seconds: 10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
