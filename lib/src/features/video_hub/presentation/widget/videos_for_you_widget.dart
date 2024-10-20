import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vegan/src/features/player/view/full_screen_player.dart';

import '../../domain/entity/entity.dart';

class VideosForYouWidget extends StatelessWidget {
  const VideosForYouWidget({super.key, required this.videos});

  final List<VideoEntity> videos;

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 0.9);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              const Expanded(
                child: Text(
                  'Videos For You',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: IconButton(
                      onPressed: () {
                        controller.previousPage(
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
                        controller.nextPage(
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
          ),
        ),
        SizedBox(
          height: 300,
          child: CustomScrollView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            physics: const PageScrollPhysics(),
            slivers: [
              ...videos.map(
                (video) => SliverLayoutBuilder(
                  builder: (context, constraints) {
                    return SliverToBoxAdapter(
                      child: SizedBox(
                        width: (constraints.viewportMainAxisExtent) *
                            controller.viewportFraction,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 10,
                              ),
                              child: Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.network(
                                  fit: BoxFit.cover,
                                  height: 200,
                                  width: double.infinity,
                                  video.thubmnail,
                                  loadingBuilder:
                                      (context, child, loadingProgress) =>
                                          loadingProgress != null
                                              ? const Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                )
                                              : child,
                                  errorBuilder: (context, error, stackTrace) =>
                                      const SizedBox.shrink(),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      video.title,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => FullScreenPlayer(
                                            videoUrl: video.videoUrl),
                                      ));
                                    },
                                    child: const Text('watch'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
