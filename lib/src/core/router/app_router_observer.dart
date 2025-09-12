import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:talker/talker.dart';

class AppRouterObserver extends AutoRouterObserver {
  AppRouterObserver({
    required this.talker,
  });

  final Talker talker;

  @override
  void didPush(Route route, Route? previousRoute) {
    talker.info('New route pushed: ${route.settings.name}');
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    talker.info('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    talker.info('Tab route re-visited: ${route.name}');
  }
}
