import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vegan/src/core/theme/app_colors.dart';
import 'package:vegan/src/features/video_hub/presentation/bloc/video_hub_bloc.dart';
import 'package:vegan/src/features/video_hub/presentation/state_ui/moods_state_ui/moods_state_ui.dart';
import 'package:vegan/src/features/video_hub/presentation/widget/movie_banner.dart';

import '../../../../core/components/components.dart';
import '../../domain/entity/entity.dart';
import '../widget/moods_chips.dart';
import '../widget/suggestions.dart';

/// top carousels
///
/// suggestions
///   category and tile

class VideoHubView extends StatelessWidget {
  const VideoHubView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoHubBloc, VideoHubState>(
      builder: (context, state) => switch (state) {
        VideoHubInitial() || VideoHubLoading() => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        VideoHubLoaded() => VideoHub(homeEntity: state.homeEntity),
        VideoHubError() => const Center(
            child: Text('Oops something went wrong...'),
          ),
      },
    );
  }
}

class VideoHub extends StatelessWidget {
  const VideoHub({super.key, required this.homeEntity});

  final HomeEntity homeEntity;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        // const MovieBanner(),
        // Column(
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         SvgPicture.asset(
        //           'assets/svg/top10.svg',
        //           semanticsLabel: 'Top 10',
        //           height: 24,
        //           width: 24,
        //         ),
        //         const SizedBox(width: 8),
        //         const Text(
        //           '#2 in Nigeria Today',
        //           style: TextStyle(
        //             fontSize: 20,
        //           ),
        //         )
        //       ],
        //     ),
        //     const SizedBox(height: 16),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         const AppIconButton(
        //           icon: Icons.add,
        //           label: 'My List',
        //         ),
        //         ElevatedButton.icon(
        //           onPressed: () {},
        //           style: ElevatedButton.styleFrom(
        //             backgroundColor: AppColors.midGray,
        //             foregroundColor: AppColors.black,
        //             shape: const ContinuousRectangleBorder(
        //               borderRadius: BorderRadius.all(
        //                 Radius.circular(16),
        //               ),
        //             ),
        //           ),
        //           icon: const Icon(
        //             Icons.play_arrow_rounded,
        //             size: 28,
        //             color: AppColors.black,
        //           ),
        //           label: const Text(
        //             'PLAY',
        //             style: TextStyle(
        //               fontSize: 16,
        //               fontWeight: FontWeight.w600,
        //             ),
        //           ),
        //         ),
        //         const AppIconButton(
        //           icon: Icons.info_outline_rounded,
        //           label: 'Info',
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        const MoodsStateUi(),
        const SizedBox(height: 12),
        ...homeEntity.suggestions.map(
          (suggestion) {
            return Suggestions(
              suggestions: suggestion.videos,
              heading: suggestion.heading,
            );
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
