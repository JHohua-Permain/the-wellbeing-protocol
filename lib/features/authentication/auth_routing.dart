import 'package:auto_route/auto_route.dart';
import 'package:the_wellbeing_protocol/features/authentication/redux/authentication_store_connectors.dart';

const List<MaterialRoute> authRoutes = [
  MaterialRoute(
    name: 'SplashPage',
    path: '/',
    page: SplashConnector,
    initial: true,
  ),
  MaterialRoute(
    name: 'WelcomePage',
    path: '/welcome',
    page: WelcomeConnector,
  ),
  MaterialRoute(
    name: 'RestorePage',
    path: '/restore',
    page: RestoreConnector,
  ),
  MaterialRoute(
    name: 'LoginPage',
    path: '/login',
    page: LoginConnector,
  ),
  MaterialRoute(
    name: 'VerificationPage',
    path: '/login/verify',
    page: VerificationConnector,
  ),
];
