import 'package:auto_route/auto_route.dart';
import 'package:the_wellbeing_protocol/screens/app_hub.dart';
import 'package:the_wellbeing_protocol/screens/community/community_fund_screen.dart';
import 'package:the_wellbeing_protocol/screens/common/review_transfer_screen.dart';
import 'package:the_wellbeing_protocol/screens/common/send_to_screen.dart';
import 'package:the_wellbeing_protocol/screens/common/transaction_pending_screen.dart';
import 'package:the_wellbeing_protocol/screens/shop/shop_details_screen.dart';
import 'package:the_wellbeing_protocol/screens/shop/shop_items_screen.dart';
import 'package:the_wellbeing_protocol/screens/shop/select_shop_screen.dart';
import 'package:the_wellbeing_protocol/screens/wallet/account_screen.dart';
import 'package:the_wellbeing_protocol/screens/wallet/cashout_screen.dart';
import 'package:the_wellbeing_protocol/screens/wallet/select_contact_screen.dart';
import 'package:the_wellbeing_protocol/screens/wallet/transaction_history_screen.dart';
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
    MaterialRoute(
      name: 'ShopPage',
      path: 'shops/shop',
      page: SelectShopScreen,
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
    MaterialRoute(
      name: 'AccountPage',
      path: 'account',
      page: AccountScreen,
    ),
    MaterialRoute(
      name: 'TransactionHistoryPage',
      path: 'transactions',
      page: TransactionHistoryScreen,
    ),
    MaterialRoute(
      name: 'SelectContactPage',
      path: 'contacts',
      page: SelectContactScreen,
    ),
    MaterialRoute(
      name: 'CashOutPage',
      path: 'cash-out',
      page: CashOutScreen,
    ),
  ],
);

@MaterialAutoRouter(
  routes: [
    MaterialRoute(
      name: 'Hub',
      path: '/',
      page: AppHub,
      initial: true,
      children: [
        _walletRouter,
        _shopRouter,
        _communityFundRouter,
      ],
    ),
    MaterialRoute(
      name: 'SendPage',
      path: '/send',
      page: SendScreen,
    ),
    MaterialRoute(
      name: 'ReviewTransferPage',
      path: '/send/review',
      page: ReviewTransferScreen,
    ),
    MaterialRoute(
      name: 'TransactionPendingPage',
      path: '/send/review/pending',
      page: TransactionPendingScreen,
    ),
    MaterialRoute(
      name: 'ShopDetailsPage',
      path: '/shops/shop/details',
      page: ShopDetailsScreen,
    ),
  ],
)
class $AppRouter {}