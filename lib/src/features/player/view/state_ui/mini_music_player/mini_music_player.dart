import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:vegan/src/core/components/app_image.dart';
import 'package:vegan/src/core/router/app_router.gr.dart';

import '../../../../../core/components/app_text.dart';
import '../../../widgets/play_button.dart';

class MiniMusicPlayer extends StatelessWidget {
  const MiniMusicPlayer(
    this.player, {
    super.key,
    required this.title,
    required this.description,
    required this.author,
    required this.thumbnail,
  });

  final Player player;
  final String title;
  final String description;
  final String author;
  final String thumbnail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: AppImage(
            width: 54,
            height: 54,
            fit: BoxFit.cover,
            imageUrl: thumbnail,
          ),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: GestureDetector(
            onTap: () {
              context.router.navigate(const MaxPlayerRoute());
            },
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
                  text: author,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
        PlayButton.success(
          player: player,
        ),
      ],
    );
  }
}
