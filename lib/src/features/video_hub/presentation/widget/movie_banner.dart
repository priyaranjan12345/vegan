import 'dart:math';

import 'package:flutter/material.dart';
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
              Colors.black.withValues(alpha: 0.2),
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
                    Colors.white.withValues(alpha: 0.1),
                    Colors.black.withValues(alpha: 0.4),
                    Colors.black,
                  ],
                ),
              ),
              child: Image.asset(
                alignment: const Alignment(0, -0.8),
                fit: BoxFit.cover,
                'assets/logo/banner.png',
              ),
            ),
          ),
        ),
        const Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: AppCarouselIndicator(),
        )
      ],
    );
  }
}

class AppCarouselIndicator extends StatefulWidget {
  const AppCarouselIndicator({super.key});

  @override
  State<AppCarouselIndicator> createState() => _AppCarouselIndicatorState();
}

class _AppCarouselIndicatorState extends State<AppCarouselIndicator> {
  late final PageController controller;

  @override
  void initState() {
    super.initState();

    controller = PageController(
      initialPage: 3,
      viewportFraction: 0.25,
    );
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: PageView.builder(
        controller: controller,
        itemCount: 6,
        itemBuilder: (context, index) => AnimatedBuilder(
          animation: controller,
          builder: (context, child) => Opacity(
            opacity: max(
              0,
              1 - (index - (controller.page ?? 0)).abs() * 0.4,
            ),
            /// TODO: change it to animated container
            child: Center(
              child: Text(
                (index + 1).toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 48 - (index - (controller.page ?? 0)).abs() * 8,
                ),
              ),
            ),
          ),
        ),
        onPageChanged: (value) {},
      ),
    );
  }
}
