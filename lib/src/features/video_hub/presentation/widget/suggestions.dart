import 'package:flutter/material.dart';
import 'package:vegan/src/app/app.dart';
import 'package:vegan/src/core/components/app_tile.dart';
import 'package:vegan/src/features/player/presentation/bloc/yt_player_bloc/yt_player_bloc.dart';
import 'package:vegan/src/features/video_hub/domain/entity/entity.dart';
import 'package:vegan/src/shared/extension/extensions.dart';

import 'carousel_header.dart';

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
    final chunkedSuggestions = suggestions.chunk(4);
    final controller = PageController(
      viewportFraction: context.isPortrait ? 0.84 : 0.4,
    );

    return suggestions.isEmpty
        ? const SizedBox.shrink()
        : Column(
            children: [
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
              SizedBox(
                height: 320,
                child: CustomScrollView(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(
                    parent: ClampingScrollPhysics(),
                  ),
                  slivers: [
                    const SliverToBoxAdapter(
                      child: SizedBox(width: 6),
                    ),
                    ...chunkedSuggestions.map(
                      (suggestionList) => SliverLayoutBuilder(
                        builder: (context, constraints) {
                          return SliverToBoxAdapter(
                            child: SizedBox(
                              width:
                                  (constraints.viewportMainAxisExtent) *
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
                                      injector<YtPlayerBloc>().add(
                                        LoadMusic(
                                          suggestion.id,
                                          playlistId: suggestion.playlistId,
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
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(width: 6),
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
