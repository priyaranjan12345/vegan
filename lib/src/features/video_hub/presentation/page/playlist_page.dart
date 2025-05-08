import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegan/src/app/app.dart';
import 'package:vegan/src/core/components/app_tile.dart';
import 'package:vegan/src/features/video_hub/presentation/bloc/playlist_cubit/playlist_cubit.dart';

@RoutePage()
class PlaylistPage extends StatelessWidget {
  const PlaylistPage({super.key, required this.browseId});

  final String browseId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider<PlaylistCubit>(
          create: (_) => injector<PlaylistCubit>()..loadPlaylist(browseId),
          child: const PlaylistView(),
        ),
      ),
    );
  }
}

class PlaylistView extends StatelessWidget {
  const PlaylistView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaylistCubit, PlaylistState>(
      builder: (context, state) => switch (state) {
        PlaylistLoadingState() => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        PlaylistLoadedState() => ListView.builder(
            itemCount: state.videoEntities.length,
            itemBuilder: (context, index) {
              final item = state.videoEntities[index];

              return AppTile(
                imageUrl: item.thubmnail,
                title: item.title,
                subTitle: item.description,
              );
            },
          ),
        PlaylistErrorState() => Center(
            child: Text(state.message),
          ),
      },
    );
  }
}
