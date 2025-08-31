import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/router/router.dart';
import '../core/theme/theme.dart';
import '../features/player/presentation/bloc/yt_player_bloc/yt_player_bloc.dart';
import 'app.dart';

class VeganApp extends StatelessWidget {
  const VeganApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => injector<YtPlayerBloc>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Vegan',
        themeMode: ThemeMode.dark,
        darkTheme: AppTheme.darkTheme,
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: injector.get<AppRouter>().config(
              deepLinkBuilder: (deepLink) {
                log(name: 'vagan-Deeplink:', deepLink.uri.toString());
                /// navigate deeplink
                /// injector.get<AppRouter>().root.navigate(path);
                return deepLink;
              },
              navigatorObservers: () => [
                AppRouterObserver(),
              ],
            ),
      ),
    );
  }
}
