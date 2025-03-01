import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vegan/src/core/theme/app_colors.dart';
import 'package:vegan/src/shared/extension/extensions.dart';

class MovieBanner extends StatelessWidget {
  const MovieBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2),
              BlendMode.darken,
            ),
            child: Container(
              height: context.deviceHeight * 0.52,
              width: double.infinity,
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.1),
                    Colors.black.withOpacity(0.4),
                    Colors.black,
                  ],
                ),
              ),
              child: Image.asset(
                fit: BoxFit.cover,
                'assets/logo/banner.png',
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 4,
          left: 0,
          right: 0,
          child: AppCarouselIndicator(),
        )
      ],
    );
  }
}

class AppCarouselIndicator extends StatelessWidget {
  AppCarouselIndicator({super.key});

  final controller = PageController(viewportFraction: 0.1);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: PageView.builder(
        controller: controller,
        itemCount: 10,
        itemBuilder: (context, index) => AnimatedBuilder(
          animation: controller,
          builder: (context, child) => Opacity(
            opacity: max(
              0,
              1 - (index - (controller.page ?? 0)).abs() * 0.2,
            ),
            child: Text(
              (index + 1).toString(),
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
