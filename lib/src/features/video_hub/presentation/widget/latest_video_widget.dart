import 'package:flutter/material.dart';

import '../../domain/entity/video_entity.dart';
import 'custom_physics.dart';

class LatestVideosWidget extends StatelessWidget {
  const LatestVideosWidget({
    required this.videos,
    super.key,
  });

  final List<VideoEntity> videos;

  @override
  Widget build(BuildContext context) {
    const landscapeFraction = 0.6;
    const portraitFraction = 0.6;
    final controller = PageController(
        viewportFraction:
            MediaQuery.orientationOf(context) == Orientation.portrait
                ? portraitFraction
                : landscapeFraction);
    final itemWidth =
        MediaQuery.sizeOf(context).width * controller.viewportFraction;
    const physics = CustomScrollPhysics(
      landscapeFraction: landscapeFraction,
      portraitFraction: portraitFraction,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Latest Videos',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SingleChildScrollView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          physics: physics,
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ...videos.map(
                  (video) => Container(
                    width: itemWidth,
                    constraints: const BoxConstraints(minHeight: 350),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Image.network(
                          fit: BoxFit.fitHeight,
                          video.thubmnail,
                          loadingBuilder: (context, child, loadingProgress) =>
                              loadingProgress != null
                                  ? const Center(
                                      child: CircularProgressIndicator(),
                                    )
                                  : child,
                          errorBuilder: (context, error, stackTrace) =>
                              const SizedBox.shrink(),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              child: IconButton(
                onPressed: () {
                  final offset = controller.offset;
                  final terminalOffset = controller.position.maxScrollExtent;

                  final scrollTo = offset == terminalOffset
                      ? offset - (itemWidth * .7)
                      : offset - itemWidth;

                  controller.animateTo(
                    scrollTo,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.ease,
                  );
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            CircleAvatar(
              child: IconButton(
                onPressed: () {
                  final offset = controller.offset;
                  final initialOffset = controller.position.minScrollExtent;

                  final scrollTo = offset == initialOffset
                      ? offset + (itemWidth * .7)
                      : offset + itemWidth;

                  controller.animateTo(
                    scrollTo,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.ease,
                  );
                },
                icon: const Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
