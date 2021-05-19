import 'package:auto_route/auto_route.dart';
import 'package:the_wellbeing_protocol/screens/app_hub_screen.dart';
import 'package:the_wellbeing_protocol/screens/community/community_fund_screen.dart';
import 'package:the_wellbeing_protocol/screens/shop/select_shop_screen.dart';
import 'package:the_wellbeing_protocol/screens/wallet/wallet_screen.dart';

const MaterialRoute _communityFundRouter = MaterialRoute(
  page: EmptyRouterPage,
  name: 'CommunityFundRouter',
  children: [
    MaterialRoute(
      name: 'CommunityFundPage',
      path: 'community/fund',
      page: CommunityFundScreen,
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
      page: SelectShopScreen,
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
      page: WalletScreen,
      initial: true,
    ),
  ],
);

@MaterialAutoRouter(
  routes: [
    MaterialRoute(
      name: 'AppHubPage',
      path: '/',
      page: AppHubScreen,
      initial: true,
      children: [
        _walletRouter,
        _shopRouter,
        _communityFundRouter,
      ],
    ),
  ],
)
class $AppRouter {}
