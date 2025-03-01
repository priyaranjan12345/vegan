import 'package:auto_route/auto_route.dart';

class AppRouterGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // if user is authenticated we continue
    // resolver.next(true);
    // router.pushPath('dashrouter');
  }
}
