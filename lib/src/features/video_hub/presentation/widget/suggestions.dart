import 'package:flutter/material.dart';
import 'package:vegan/src/core/components/app_tile.dart';
import 'package:vegan/src/features/player/view/yt_player.dart';
import 'package:vegan/src/features/video_hub/domain/entity/entity.dart';
import 'package:vegan/src/shared/extension/extensions.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({
    super.key,
    required this.heading,
    required this.suggestions,
  });

  final String heading;
  final List<VideoEntity> suggestions;

  @override
  Widget build(BuildContext context) {
    suggestions.removeWhere((e) => e.id == '');
    final chunkedSuggestions = suggestions.chunk(4);
    final controller = PageController(
      viewportFraction: context.isPortrait ? 0.8 : 0.4,
    );

    return suggestions.isEmpty
        ? const SizedBox.shrink()
        : Column(
            children: [
              const Text(''),
              SizedBox(
                height: 400,
                child: CustomScrollView(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(
                    parent: ClampingScrollPhysics(),
                  ),
                  slivers: [
                    ...chunkedSuggestions.map(
                      (suggestionList) => SliverLayoutBuilder(
                        builder: (context, constraints) {
                          return SliverToBoxAdapter(
                            child: SizedBox(
                              width: (constraints.viewportMainAxisExtent) *
                                  controller.viewportFraction,
                              child: ListView.builder(
                                itemCount: suggestionList.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  final suggestion = suggestionList[index];
                                  final imageUrl = suggestion.thubmnail;
                                  final title = suggestion.title;
                                  final subTitle = suggestion.description;

                                  return AppTile(
                                    imageUrl: imageUrl,
                                    title: title,
                                    subTitle: subTitle,
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => YtPlayer(
                                            videoId: suggestion.id,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
  }
}
