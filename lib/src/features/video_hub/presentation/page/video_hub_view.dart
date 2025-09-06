import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entity/entity.dart';
import '../bloc/browse_bloc/browse_bloc.dart';
import '../widget/moods_chips.dart';
import '../widget/suggestions.dart';
import '../widget/suggestions_playlist.dart';

class VideoHubView extends StatelessWidget {
  const VideoHubView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BrowseBloc, BrowseState>(
      builder: (context, state) => switch (state.browseStatus) {
        BrowseStatus.initial => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        BrowseStatus.success => BrowseView(
          moods: state.moods,
          browseCarousels: state.browseCarousels,
          continuationId: state.continuationId,
          hasReachedMax: state.hasReachedMax,
        ),
        BrowseStatus.failure => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Oops something went wrong...',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<BrowseBloc>().add(
                    const BrowseInitEvent(),
                  );
                },
                child: const Text('Retry'),
              ),
            ),
          ],
        ),
      },
    );
  }
}

class BrowseView extends StatefulWidget {
  const BrowseView({
    super.key,
    required this.moods,
    required this.browseCarousels,
    required this.continuationId,
    this.hasReachedMax = false,
  });

  final List<MoodEntity> moods;
  final List<Object> browseCarousels;
  final String continuationId;
  final bool hasReachedMax;

  @override
  State<BrowseView> createState() => _BrowseViewState();
}

class _BrowseViewState extends State<BrowseView> {
  final _selectedMoodParams = ValueNotifier<String?>(null);
  final _scrollController = ScrollController();
  // String? _selectedMoodParams;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    // Set the first mood as selected initially if the list is not empty.
    if (widget.moods.isNotEmpty) {
      _selectedMoodParams.value = widget.moods.first.params;
    }

    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _onScroll(isInitial: true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: ValueListenableBuilder(
              valueListenable: _selectedMoodParams,
              builder: (context, value, child) {
                return MoodsChips(
                  moods: widget.moods,
                  selectedParam: value,
                  onSelectMoods: (params) {
                    // Update the state to show selection immediately
                    _selectedMoodParams.value = params;

                    // Trigger event to load content for the new mood
                    context.read<BrowseBloc>().add(
                      BrowseMoodEvent(params: params),
                    );
                  },
                );
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 12),
          ),
          ...widget.browseCarousels.map(
            (carousel) {
              switch (carousel) {
                case VideoSuggestionEntity():
                  return SliverToBoxAdapter(
                    child: Suggestions(
                      suggestions: carousel.videos,
                      heading: carousel.heading,
                    ),
                  );
              }

              if (carousel is PlaylistSuggestionEntity) {
                return SliverToBoxAdapter(
                  child: SuggestionsPlaylist(
                    playlists: carousel.playlists,
                    heading: carousel.heading,
                  ),
                );
              }

              return SliverToBoxAdapter(child: const SizedBox.shrink());
            },
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 12),
          ),
          if (!widget.hasReachedMax)
            SliverToBoxAdapter(
              child: const Center(
                child: RepaintBoundary(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll({bool isInitial = false}) {
    if (_isBottom || isInitial) {
      context.read<BrowseBloc>().add(
        BrowseContinuationEvent(
          continuationId: widget.continuationId,
        ),
      );
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll - 124);
  }
}
