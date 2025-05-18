import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegan/src/features/player/bloc/video_details_cubit/video_details_cubit.dart';
import 'package:vegan/src/features/player/bloc/yt_player_bloc/yt_player_bloc.dart';
import 'package:vegan/src/features/player/view/max_player.dart';

import 'mini_player.dart';

class PlayerView extends StatelessWidget {
  const PlayerView({super.key});

  @override
  Widget build(BuildContext context) {
    return MiniPlayer(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => MultiBlocProvider(
              providers: [
                BlocProvider.value(
                  value: context.read<VideoDetailsCubit>(),
                ),
                BlocProvider.value(
                  value: context.read<YtPlayerBloc>(),
                ),
              ],
              child: const MaxPlayerPage(),
            ),
          ),
        );
      },
    );
  }
}
