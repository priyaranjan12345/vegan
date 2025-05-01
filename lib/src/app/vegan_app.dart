import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vegan/src/app/app.dart';

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
      routerConfig: injector.get<AppRouter>().config(
            deepLinkBuilder: (deepLink) {
              log(name: 'vagan-Deeplink:', deepLink.uri.toString());
              return deepLink;
            },
            navigatorObservers: () => [
              AppRouterObserver(),
            ],
          ),
    );
  }
}
