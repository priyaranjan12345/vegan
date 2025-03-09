import 'package:flutter/material.dart';

import '../core/router/router.dart';
import '../core/theme/theme.dart';
import 'app.dart';

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
      routerConfig: injector<AppRouter>().config(
        navigatorObservers: () => [
          AppRouterObserver(),
        ],
      ),
    );
  }
}
