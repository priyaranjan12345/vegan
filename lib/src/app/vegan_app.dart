import 'package:flutter/material.dart';
import 'package:vegan/src/features/splash/splash_page.dart';

import '../core/router/router.dart';
import '../core/theme/theme.dart';

class VeganApp extends StatelessWidget {
  const VeganApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Vegan',
      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter().config(
        placeholder: (context) => SplashPage(
          onShown: () {},
        ),
        navigatorObservers: () => [
          AppRouterObserver(),
        ],
      ),
    );
  }
}
