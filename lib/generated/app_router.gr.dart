// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../screens/app_hub_screen.dart' as _i3;
import '../screens/community/community_fund_screen.dart' as _i8;
import '../screens/shop/select_shop_screen.dart' as _i7;
import '../screens/wallet/account_screen.dart' as _i5;
import '../screens/wallet/transaction_history_screen.dart' as _i6;
import '../screens/wallet/wallet_screen.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    AppHubPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.AppHubScreen();
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
          return _i4.WalletScreen();
        }),
    AccountPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.AccountScreen();
        }),
    TransactionHistoryPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.TransactionHistoryScreen();
        }),
    SelectShopPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.SelectShopScreen();
        }),
    CommunityFundPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.CommunityFundScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(AppHubPage.name, path: '/', children: [
          _i1.RouteConfig(WalletRouter.name,
              path: 'empty-router-page',
              children: [
                _i1.RouteConfig('#redirect',
                    path: '', redirectTo: 'wallet', fullMatch: true),
                _i1.RouteConfig(WalletPage.name, path: 'wallet'),
                _i1.RouteConfig(AccountPage.name, path: 'account'),
                _i1.RouteConfig(TransactionHistoryPage.name,
                    path: 'transactions')
              ]),
          _i1.RouteConfig(ShopRouter.name,
              path: 'empty-router-page',
              children: [
                _i1.RouteConfig('#redirect',
                    path: '', redirectTo: 'shops', fullMatch: true),
                _i1.RouteConfig(SelectShopPage.name, path: 'shops')
              ]),
          _i1.RouteConfig(CommunityFundRouter.name,
              path: 'empty-router-page',
              children: [
                _i1.RouteConfig('#redirect',
                    path: '', redirectTo: 'community/fund', fullMatch: true),
                _i1.RouteConfig(CommunityFundPage.name, path: 'community/fund')
              ])
        ])
      ];
}

class AppHubPage extends _i1.PageRouteInfo {
  const AppHubPage({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'AppHubPage';
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

class SelectShopPage extends _i1.PageRouteInfo {
  const SelectShopPage() : super(name, path: 'shops');

  static const String name = 'SelectShopPage';
}

class CommunityFundPage extends _i1.PageRouteInfo {
  const CommunityFundPage() : super(name, path: 'community/fund');

  static const String name = 'CommunityFundPage';
}
