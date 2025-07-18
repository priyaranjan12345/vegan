import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegan/src/core/theme/app_colors.dart';

import '../../../../app/app.dart';
import '../../../../core/router/app_router.gr.dart';
import '../../../player/bloc/yt_player_bloc/yt_player_bloc.dart';
import '../bloc/search_bloc.dart';
import '../widgets/widgets.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => injector<SearchBloc>(),
      child: const SearchPageWrapper(),
    );
  }
}

class SearchPageWrapper extends StatefulWidget {
  const SearchPageWrapper({
    super.key,
  });

  @override
  State<SearchPageWrapper> createState() => _SearchPageWrapperState();
}

class _SearchPageWrapperState extends State<SearchPageWrapper> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.darkGray,
          title: TextFormField(
            controller: textController,
            decoration: InputDecoration(
              hintText: 'Search for music, artist, album, etc.',
              filled: false,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
            onChanged: (value) {
              context.read<SearchBloc>().add(
                SearchInput(input: value),
              );
            },
          ),
          actions: [
            CircleAvatar(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mic),
              ),
            ),
          ],
        ),
        body: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) => switch (state.status) {
            SearchStatus.initial => const Center(
              child: CircularProgressIndicator(),
            ),
            SearchStatus.loading => const Center(
              child: CircularProgressIndicator(),
            ),
            SearchStatus.success => CustomScrollView(
              slivers: [
                const SliverAppBar(
                  title: Text(
                    'TOP SEARCH RESULTS',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  floating: true,
                  snap: true,
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (_, index) {
                      final suggestion =
                          state.searchEntity?.searchSuggestions[index];
                      return ListTile(
                        title: Text(suggestion?.query ?? ''),
                        onTap: () {
                          textController.text = suggestion?.query ?? '';
                          context.read<SearchBloc>().add(
                            SearchInput(input: suggestion?.query),
                          );
                        },
                      );
                    },
                    childCount: state.searchEntity?.searchSuggestions.length,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (_, index) {
                      final musicItem =
                          state.searchEntity?.searchSuggestionMusicItems[index];
                      return SearchResultCard(
                        title: musicItem?.title ?? '',
                        subtitle: musicItem?.description ?? '',
                        imageUrl: musicItem?.thumbnail ?? '',
                        onPressed: () {
                          // for music
                          if (musicItem?.id != null &&
                              (musicItem?.id.isNotEmpty ?? false)) {
                            injector<YtPlayerBloc>().add(
                              LoadMusic(
                                musicItem?.id ?? '',
                                playlistId: musicItem?.playlistId,
                              ),
                            );

                            return;
                          }
                          // for album
                          if (musicItem?.browseId != null &&
                              (musicItem?.browseId.isNotEmpty ?? false)) {
                            context.router.navigate(
                              HomeTab(
                                children: [
                                  PlaylistRoute(
                                    browseId: musicItem?.browseId ?? '',
                                    // params: playlist.params,
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                      );
                    },
                    childCount:
                        state.searchEntity?.searchSuggestionMusicItems.length,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 96.0,
                  ),
                ),
              ],
            ),
            SearchStatus.failure => const SizedBox.shrink(),
          },
        ),
      ),
    );
  }
}
