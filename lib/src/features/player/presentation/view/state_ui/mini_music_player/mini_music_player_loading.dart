import 'package:flutter/material.dart';
import 'package:vegan/src/core/components/app_shimmer.dart';

import '../../../../../../core/theme/app_colors.dart';

class MiniMusicPlayerLoading extends StatelessWidget {
  const MiniMusicPlayerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 4.0,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: AppShimmer(
              child: Container(
                width: 54,
                height: 54,
                color: AppColors.midGray,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
          ),
          //PlayButton.loading(),
        ],
      ),
    );
  }
}
