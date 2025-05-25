import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vegan/src/core/components/components.dart';
import 'package:vegan/src/core/theme/app_colors.dart';
import 'package:vegan/src/features/coming_soon/domain/entiry/coming_soon_entity.dart';

class ComingSoonTile extends StatelessWidget {
  const ComingSoonTile({super.key, required this.comingSoonEntity});

  final ComingSoonEntity comingSoonEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 8.0,
      children: [
        // image
        CachedNetworkImage(
          fit: BoxFit.cover,
          width: double.infinity,
          height: 200,
          alignment: const Alignment(0, -0.9),
          imageUrl: comingSoonEntity.imageUrl,
          placeholder: (context, url) => AppShimmer(
            child: Container(
              width: double.infinity,
              height: 200,
              color: AppColors.white,
            ),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),

        // actions
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      comingSoonEntity.label,
                      style: const TextStyle(fontSize: 12),
                    ),
                    Text(
                      comingSoonEntity.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // AppIconButton(
              //   icon: Icons.notifications,
              //   label: 'Remind Me',
              //   onPressed: () {},
              // ),
              const SizedBox(width: 16),
              // AppIconButton(
              //   icon: Icons.share,
              //   label: 'Share',
              //   onPressed: () {},
              // ),
            ],
          ),
        ),

        /// description
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: Text(
            comingSoonEntity.desc,
            style: const TextStyle(
              fontSize: 12,
              color: AppColors.midGray,
            ),
          ),
        ),

        /// tags
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: Text(
            (comingSoonEntity.tags ?? []).join(' \u2022 '),
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
