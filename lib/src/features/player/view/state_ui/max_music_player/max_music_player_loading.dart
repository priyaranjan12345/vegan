import 'package:flutter/material.dart';
import 'package:vegan/src/core/components/components.dart';
import 'package:vegan/src/core/theme/app_colors.dart';
import 'package:vegan/src/features/player/view/yt_player.dart';

class MaxMusicPlayerLoading extends StatelessWidget {
  const MaxMusicPlayerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AppShimmer(
              child: Container(
                width: 80,
                height: 80,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppShimmer(
                    child: Container(
                      width: 94,
                      height: 16,
                      color: AppColors.midGray,
                    ),
                  ),
                  const SizedBox(height: 4),
                  AppShimmer(
                    child: Container(
                      width: 160,
                      height: 12,
                      color: AppColors.midGray,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppShimmer(
                        child: CustomIconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_sharp),
                        ),
                      ),
                      AppShimmer(
                        child: CustomIconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.skip_previous_rounded),
                        ),
                      ),
                      AppShimmer(
                        child: CustomIconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.play_arrow_rounded),
                        ),
                      ),
                      AppShimmer(
                        child: CustomIconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.skip_next_rounded),
                        ),
                      ),
                      AppShimmer(
                        child: CustomIconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.download_outlined),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        const AppShimmer(
          child: SizedBox(
            height: 8,
            width: double.infinity,
          ),
        ),
      ],
    );
  }
}
