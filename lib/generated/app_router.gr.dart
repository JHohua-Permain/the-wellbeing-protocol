// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../screens/app_hub.dart' as _i3;
import '../screens/common/review_transfer_screen.dart' as _i5;
import '../screens/common/send_to_screen.dart' as _i4;
import '../screens/common/transaction_pending_screen.dart' as _i6;
import '../screens/community/community_fund_screen.dart' as _i14;
import '../screens/shop/select_shop_screen.dart' as _i13;
import '../screens/shop/shop_details_screen.dart' as _i7;
import '../screens/wallet/account_screen.dart' as _i9;
import '../screens/wallet/cashout_screen.dart' as _i12;
import '../screens/wallet/select_contact_screen.dart' as _i11;
import '../screens/wallet/transaction_history_screen.dart' as _i10;
import '../screens/wallet/wallet_screen.dart' as _i8;
import 'models/community_entity.dart' as _i15;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    Hub.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.AppHub();
        }),
    SendPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SendPageArgs>();
          return _i4.SendScreen(entity: args.entity);
        }),
    ReviewTransferPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ReviewTransferPageArgs>();
          return _i5.ReviewTransferScreen(
              confirmAmount: args.confirmAmount, entity: args.entity);
        }),
    TransactionPendingPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.TransactionPendingScreen();
        }),
    ShopDetailsPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.ShopDetailsScreen();
        }),
    WalletRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    ShopRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    CommunityFundRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    WalletPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.WalletScreen();
        }),
    AccountPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.AccountScreen();
        }),
    TransactionHistoryPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i10.TransactionHistoryScreen();
        }),
    SelectContactPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i11.SelectContactScreen();
        }),
    CashOutPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i12.CashOutScreen();
        }),
    SelectShopPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i13.SelectShopScreen();
        }),
    ShopPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i13.SelectShopScreen();
        }),
    CommunityFundPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i14.CommunityFundScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(Hub.name, path: '/', children: [
          _i1.RouteConfig(WalletRouter.name,
              path: 'empty-router-page',
              children: [
                _i1.RouteConfig('#redirect',
                    path: '', redirectTo: 'wallet', fullMatch: true),
                _i1.RouteConfig(WalletPage.name, path: 'wallet'),
                _i1.RouteConfig(AccountPage.name, path: 'account'),
                _i1.RouteConfig(TransactionHistoryPage.name,
                    path: 'transactions'),
                _i1.RouteConfig(SelectContactPage.name, path: 'contacts'),
                _i1.RouteConfig(CashOutPage.name, path: 'cash-out')
              ]),
          _i1.RouteConfig(ShopRouter.name,
              path: 'empty-router-page',
              children: [
                _i1.RouteConfig('#redirect',
                    path: '', redirectTo: 'shops', fullMatch: true),
                _i1.RouteConfig(SelectShopPage.name, path: 'shops'),
                _i1.RouteConfig(ShopPage.name, path: 'shops/shop')
              ]),
          _i1.RouteConfig(CommunityFundRouter.name,
              path: 'empty-router-page',
              children: [
                _i1.RouteConfig('#redirect',
                    path: '', redirectTo: 'community/fund', fullMatch: true),
                _i1.RouteConfig(CommunityFundPage.name, path: 'community/fund')
              ])
        ]),
        _i1.RouteConfig(SendPage.name, path: '/send'),
        _i1.RouteConfig(ReviewTransferPage.name, path: '/send/review'),
        _i1.RouteConfig(TransactionPendingPage.name,
            path: '/send/review/pending'),
        _i1.RouteConfig(ShopDetailsPage.name, path: '/shops/shop/details')
      ];
}

class Hub extends _i1.PageRouteInfo {
  const Hub({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'Hub';
}

class SendPage extends _i1.PageRouteInfo<SendPageArgs> {
  SendPage({required _i15.CommunityEntity entity})
      : super(name, path: '/send', args: SendPageArgs(entity: entity));

  static const String name = 'SendPage';
}

class SendPageArgs {
  const SendPageArgs({required this.entity});

  final _i15.CommunityEntity entity;
}

class ReviewTransferPage extends _i1.PageRouteInfo<ReviewTransferPageArgs> {
  ReviewTransferPage(
      {required String confirmAmount, required _i15.CommunityEntity entity})
      : super(name,
            path: '/send/review',
            args: ReviewTransferPageArgs(
                confirmAmount: confirmAmount, entity: entity));

  static const String name = 'ReviewTransferPage';
}

class ReviewTransferPageArgs {
  const ReviewTransferPageArgs(
      {required this.confirmAmount, required this.entity});

  final String confirmAmount;

  final _i15.CommunityEntity entity;
}

class TransactionPendingPage extends _i1.PageRouteInfo {
  const TransactionPendingPage() : super(name, path: '/send/review/pending');

  static const String name = 'TransactionPendingPage';
}

class ShopDetailsPage extends _i1.PageRouteInfo {
  const ShopDetailsPage() : super(name, path: '/shops/shop/details');

  static const String name = 'ShopDetailsPage';
}

class WalletRouter extends _i1.PageRouteInfo {
  const WalletRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'empty-router-page', initialChildren: children);

  static const String name = 'WalletRouter';
}

class ShopRouter extends _i1.PageRouteInfo {
  const ShopRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'empty-router-page', initialChildren: children);

  static const String name = 'ShopRouter';
}

class CommunityFundRouter extends _i1.PageRouteInfo {
  const CommunityFundRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'empty-router-page', initialChildren: children);

  static const String name = 'CommunityFundRouter';
}

class WalletPage extends _i1.PageRouteInfo {
  const WalletPage() : super(name, path: 'wallet');

  static const String name = 'WalletPage';
}

class AccountPage extends _i1.PageRouteInfo {
  const AccountPage() : super(name, path: 'account');

  static const String name = 'AccountPage';
}

class TransactionHistoryPage extends _i1.PageRouteInfo {
  const TransactionHistoryPage() : super(name, path: 'transactions');

  static const String name = 'TransactionHistoryPage';
}

class SelectContactPage extends _i1.PageRouteInfo {
  const SelectContactPage() : super(name, path: 'contacts');

  static const String name = 'SelectContactPage';
}

class CashOutPage extends _i1.PageRouteInfo {
  const CashOutPage() : super(name, path: 'cash-out');

  static const String name = 'CashOutPage';
}

class SelectShopPage extends _i1.PageRouteInfo {
  const SelectShopPage() : super(name, path: 'shops');

  static const String name = 'SelectShopPage';
}

class ShopPage extends _i1.PageRouteInfo {
  const ShopPage() : super(name, path: 'shops/shop');

  static const String name = 'ShopPage';
}

class CommunityFundPage extends _i1.PageRouteInfo {
  const CommunityFundPage() : super(name, path: 'community/fund');

  static const String name = 'CommunityFundPage';
}
