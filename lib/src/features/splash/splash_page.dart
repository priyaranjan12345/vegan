import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   // delay
    //   onShown?.call();
    // });

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16.0,
        children: [
          Image.asset(
            height: 240,
            width: 240,
            'assets/logo/ymify-splash.png',
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 52),
            child: RepaintBoundary(
              child: LinearProgressIndicator(),
            ),
          )
        ],
      ),
    );
  }
}
