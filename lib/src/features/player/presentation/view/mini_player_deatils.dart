import 'package:flutter/material.dart';
import 'package:vegan/src/core/components/app_image.dart';
import 'package:vegan/src/core/components/components.dart';
import 'package:vegan/src/core/theme/app_colors.dart';

import '../../../../core/components/app_text.dart';

class MiniPlayerDeatils extends StatelessWidget {
  const MiniPlayerDeatils({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  });

  final String imageUrl;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: AppImage(
            width: 54,
            height: 54,
            fit: BoxFit.cover,
            imageUrl: imageUrl,
          ),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppText.heading(
                text: title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              AppText.smallText(
                text: subTitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MiniPlayerDeatilsLoading extends StatelessWidget {
  const MiniPlayerDeatilsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
      ],
    );
  }
}
