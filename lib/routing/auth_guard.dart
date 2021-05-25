import 'package:auto_route/auto_route.dart';

class AuthGuard extends AutoRouteGuard {
  final bool Function() isAuthenticated;

  AuthGuard(this.isAuthenticated);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    resolver.next(isAuthenticated());
  }
}
