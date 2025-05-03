import 'package:flutter/material.dart';
import 'package:vegan/src/features/video_hub/presentation/widget/carousel_header.dart';
import 'package:vegan/src/shared/extension/extensions.dart';

class SuggestionsPlaylist extends StatelessWidget {
  const SuggestionsPlaylist({super.key, required this.heading});

  final String heading;

  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      viewportFraction: context.isPortrait ? 0.8 : 0.4,
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
                // ...map(

                // ).toList(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
