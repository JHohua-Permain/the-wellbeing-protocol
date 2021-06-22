import 'package:auto_route/auto_route.dart';
import 'package:the_wellbeing_protocol/features/hub/redux/hub_store_connectors.dart';

const MaterialRoute communityFundRouter = MaterialRoute(
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

const MaterialRoute shopRouter = MaterialRoute(
  page: EmptyRouterPage,
  name: 'ShopRouter',
  children: [
    MaterialRoute(
      name: 'SelectShopPage',
      path: 'shops',
      page: SelectShopConnector,
      initial: true,
    ),
    MaterialRoute(
      name: 'ShopPage',
      path: 'shops/:shopId',
      page: ShopConnector,
    ),
  ],
);

const MaterialRoute walletRouter = MaterialRoute(
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
      name: 'SettingsPage',
      path: 'settings',
      page: SettingsConnector,
    ),
    MaterialRoute(
      name: 'ProtectPage',
      path: 'settings/protect',
      page: ProtectConnector,
    ),
    MaterialRoute(
      name: 'SelectContactPage',
      path: 'contacts',
      page: SelectContactConnector,
    ),
    MaterialRoute(
      name: 'CashOutPage',
      path: 'cash-out',
      page: CashOutConnector,
    ),
    MaterialRoute(
      name: 'TransactionHistoryPage',
      path: 'transactions',
      page: TransactionHistoryConnector,
    ),
  ],
);
