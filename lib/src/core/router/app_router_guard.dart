import 'package:auto_route/auto_route.dart';
import 'package:vegan/src/core/router/app_router.gr.dart';

class SpalshRouteGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    resolver.next(true);
    // await Future.delayed(const Duration(seconds: 4));
    router.replaceAll([const DashboardRoute()]);
  }
}
