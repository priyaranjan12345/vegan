import 'package:auto_route/auto_route.dart';

import '../../app/app.dart';

class SpalshRouteGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    await init();
    resolver.next(true);
    // any loading operations
    // await Future.delayed(const Duration(seconds: 4));
    // router.replaceAll([const DashboardRoute()]);
  }
}

class DashboardRouteGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    await init();
    resolver.next(true);
  }
}
