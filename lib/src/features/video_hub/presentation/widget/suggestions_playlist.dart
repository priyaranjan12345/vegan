import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vegan/src/core/components/app_card.dart';
import 'package:vegan/src/core/router/app_router.gr.dart';
import 'package:vegan/src/features/video_hub/domain/entity/playlist_entity.dart';
import 'package:vegan/src/features/video_hub/presentation/widget/carousel_header.dart';
import 'package:vegan/src/shared/extension/extensions.dart';

class SuggestionsPlaylist extends StatelessWidget {
  const SuggestionsPlaylist({
    super.key,
    required this.heading,
    required this.playlists,
  });

  final String heading;
  final List<PlaylistEntity> playlists;

  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      viewportFraction: context.isPortrait ? 0.44 : 0.24,
    );

    return Column(
      children: [
        // Carousel Header
        CarouselHeader(
          title: heading,
          onBackword: () {
            controller.previousPage(
              duration: const Duration(milliseconds: 400),
              curve: Curves.ease,
            );
          },
          onForward: () {
            controller.nextPage(
              duration: const Duration(milliseconds: 400),
              curve: Curves.ease,
            );
          },
        ),

        /// Carousel
        SingleChildScrollView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          physics: const PageScrollPhysics(
            parent: ClampingScrollPhysics(),
          ),
          child: IntrinsicHeight(
            child: Row(
              children: [
                ...playlists.map(
                  (playlist) => GestureDetector(
                    onTap: () => context.router.push(
                      PlaylistRoute(
                        browseId: playlist.browseId,
                        params: playlist.params,
                      ),
                    ),
                    child: SizedBox(
                      width: context.deviceWidth * controller.viewportFraction,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: AppCard(
                          imageUrl: playlist.thumbnail,
                          title: playlist.title,
                          subTitle: playlist.description,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
