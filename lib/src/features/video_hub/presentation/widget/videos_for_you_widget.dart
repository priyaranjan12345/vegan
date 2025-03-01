import 'package:flutter/material.dart';

import '../../domain/entity/entity.dart';

class VideosForYouWidget extends StatelessWidget {
  const VideosForYouWidget({super.key, required this.videos});

  final List<VideoEntity> videos;

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 0.7);

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
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 16,
                      child: IconButton(
                        onPressed: () {
                          controller.previousPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.ease,
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 16,
                      child: IconButton(
                        onPressed: () {
                          controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.ease,
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.orientationOf(context) == Orientation.portrait
              ? 200
              : 400,
          child: CustomScrollView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            physics: const PageScrollPhysics(
              parent: ClampingScrollPhysics(),
            ),
            slivers: [
              ...videos.map(
                (video) => SliverLayoutBuilder(
                  builder: (context, constraints) {
                    return SliverToBoxAdapter(
                      child: SizedBox(
                        width: (constraints.viewportMainAxisExtent) *
                            controller.viewportFraction,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 1,
                            margin: EdgeInsets.zero,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.network(
                                    fit: BoxFit.cover,
                                    height: MediaQuery.orientationOf(context) ==
                                            Orientation.portrait
                                        ? 120
                                        : 320,
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
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            const SizedBox(
                                      height: 120,
                                      child: Icon(
                                        Icons.image_not_supported_outlined,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          video.title,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: const TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red,
                                          foregroundColor: Colors.white,
                                        ),
                                        child: const Text('watch'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
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
