import 'package:flutter/material.dart';
import 'package:vegan/src/core/components/components.dart';
import 'package:vegan/src/core/theme/app_colors.dart';

class ComingSoonTile extends StatelessWidget {
  const ComingSoonTile({super.key});

  // final String imageUrl;
  // final String title;
  // final String sub-title;
  // final String description;
  // final List<String> tags;
  // final void Function()? onShare;
  // final void Function()? onRemindMe;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 8.0,
      children: [
        // image
        Image.network(
          fit: BoxFit.cover,
          width: double.infinity,
          height: 200,
          'https://images-na.ssl-images-amazon.com/images/M/MV5BMjEyOTYyMzUxNl5BMl5BanBnXkFtZTcwNTg0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg',
        ),

        // actions
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: Row(
            children: [
              const Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Season 1 Coming December 14',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      'Tiny Pretty Things',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              AppIconButton(
                icon: Icons.notifications,
                label: 'Remind Me',
                onPressed: () {},
              ),
              const SizedBox(width: 16),
              AppIconButton(
                icon: Icons.share,
                label: 'Share',
                onPressed: () {},
              ),
            ],
          ),
        ),

        /// description
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus'
            'bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,'
            'id ut ipsum aliquam  enim non posuere pulvinar diam.',
            style: TextStyle(
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
            ['Steamy', 'Soapy', 'Slow Burn', 'Suspenseful', 'Teen', 'Mystery']
                .join(' \u2022 '),
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
