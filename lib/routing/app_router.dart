import 'package:auto_route/auto_route.dart';
import 'package:the_wellbeing_protocol/app_hub.dart';
import 'package:the_wellbeing_protocol/redux/features/authentication/authentication_store_connectors.dart';
import 'package:the_wellbeing_protocol/redux/features/community/community_store_connectors.dart';
import 'package:the_wellbeing_protocol/redux/features/shop/shop_store_connectors.dart';
import 'package:the_wellbeing_protocol/redux/features/wallet/wallet_store_connectors.dart';
import 'package:the_wellbeing_protocol/routing/auth_guard.dart';
import 'package:the_wellbeing_protocol/ui/screens/misc/progress_dialog.dart';

const MaterialRoute _communityFundRouter = MaterialRoute(
  page: EmptyRouterPage,
  name: 'CommunityFundRouter',
  children: [
    MaterialRoute(
      name: 'CommunityFundPage',
      path: 'community/fund',
      page: CommunityFundConnector,
      initial: true,
    ),
  ],
);

const MaterialRoute _shopRouter = MaterialRoute(
  page: EmptyRouterPage,
  name: 'ShopRouter',
  children: [
    MaterialRoute(
      name: 'SelectShopPage',
      path: 'shops',
      page: SelectShopConnector,
      initial: true,
    ),
  ],
);

const MaterialRoute _walletRouter = MaterialRoute(
  page: EmptyRouterPage,
  name: 'WalletRouter',
  children: [
    MaterialRoute(
      name: 'WalletPage',
      path: 'wallet',
      page: WalletConnector,
      initial: true,
    ),
    MaterialRoute(
      name: 'AccountPage',
      path: 'account',
      page: AccountConnector,
    ),
    MaterialRoute(
      name: 'TransactionHistoryPage',
      path: 'transactions',
      page: TransactionHistoryConnector,
    ),
  ],
);

@MaterialAutoRouter(
  routes: [
    MaterialRoute(
      name: 'WelcomePage',
      path: '/',
      page: WelcomeConnector,
      initial: true,
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
    MaterialRoute(
      name: 'RestorePage',
      path: '/restore',
      page: RestoreConnector,
    ),
    MaterialRoute(
      name: 'AppHubWindow',
      path: '/hub',
      page: AppHub,
      guards: [AuthGuard],
      children: [
        _walletRouter,
        _shopRouter,
        _communityFundRouter,
      ],
    ),
    CustomRoute(
      name: 'ProgressPopup',
      page: ProgressDialog,
      fullscreenDialog: true,
      opaque: false,
    ),
  ],
)
class $AppRouter {}
