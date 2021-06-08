// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../app_hub.dart' as _i5;
import '../features/authentication/redux/authentication_store_connectors.dart'
    as _i4;
import '../features/community/redux/community_store_connectors.dart' as _i9;
import '../features/shop/redux/shop_store_connectors.dart' as _i8;
import '../features/wallet/redux/wallet_store_connectors.dart' as _i7;
import '../shared/widgets/progress_dialog.dart' as _i6;
import 'auth_guard.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter(
      {_i2.GlobalKey<_i2.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i3.AuthGuard authGuard;

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.SplashConnector();
        }),
    WelcomePage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.WelcomeConnector();
        }),
    LoginPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.LoginConnector();
        }),
    VerificationPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.VerificationConnector();
        }),
    RestorePage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.RestoreConnector();
        }),
    AppHubWindow.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.AppHub();
        }),
    ProgressPopup.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.ProgressDialog();
        },
        fullscreenDialog: true,
        opaque: false,
        barrierDismissible: false),
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
          return _i7.WalletConnector();
        }),
    AccountPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.AccountConnector();
        }),
    BackupWalletPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.BackupWalletConnector();
        }),
    SettingsPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.SettingsConnector();
        }),
    SelectContactPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.SelectContactConnector();
        }),
    SendToContactPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.SendToContactConnector();
        }),
    CashOutPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.CashOutConnector();
        }),
    TransactionHistoryPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.TransactionHistoryConnector();
        }),
    SelectShopPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.SelectShopConnector();
        }),
    CommunityFundPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.CommunityFundConnector();
        }),
    SendToCommunityFundPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.SendToCommunityFundConnector();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPage.name, path: '/'),
        _i1.RouteConfig(WelcomePage.name, path: '/welcome'),
        _i1.RouteConfig(LoginPage.name, path: '/login'),
        _i1.RouteConfig(VerificationPage.name, path: '/login/verify'),
        _i1.RouteConfig(RestorePage.name, path: '/restore'),
        _i1.RouteConfig(AppHubWindow.name, path: '/hub', guards: [
          authGuard
        ], children: [
          _i1.RouteConfig(WalletRouter.name,
              path: 'empty-router-page',
              children: [
                _i1.RouteConfig('#redirect',
                    path: '', redirectTo: 'wallet', fullMatch: true),
                _i1.RouteConfig(WalletPage.name, path: 'wallet'),
                _i1.RouteConfig(AccountPage.name, path: 'account'),
                _i1.RouteConfig(BackupWalletPage.name, path: 'backup'),
                _i1.RouteConfig(SettingsPage.name, path: 'settings'),
                _i1.RouteConfig(SelectContactPage.name, path: 'contacts'),
                _i1.RouteConfig(SendToContactPage.name, path: 'contacts/send'),
                _i1.RouteConfig(CashOutPage.name, path: 'cash-out'),
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
                _i1.RouteConfig(CommunityFundPage.name, path: 'community/fund'),
                _i1.RouteConfig(SendToCommunityFundPage.name,
                    path: 'community/fund/contribute')
              ])
        ]),
        _i1.RouteConfig(ProgressPopup.name, path: '/progress-dialog')
      ];
}

class SplashPage extends _i1.PageRouteInfo {
  const SplashPage() : super(name, path: '/');

  static const String name = 'SplashPage';
}

class WelcomePage extends _i1.PageRouteInfo {
  const WelcomePage() : super(name, path: '/welcome');

  static const String name = 'WelcomePage';
}

class LoginPage extends _i1.PageRouteInfo {
  const LoginPage() : super(name, path: '/login');

  static const String name = 'LoginPage';
}

class VerificationPage extends _i1.PageRouteInfo {
  const VerificationPage() : super(name, path: '/login/verify');

  static const String name = 'VerificationPage';
}

class RestorePage extends _i1.PageRouteInfo {
  const RestorePage() : super(name, path: '/restore');

  static const String name = 'RestorePage';
}

class AppHubWindow extends _i1.PageRouteInfo {
  const AppHubWindow({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/hub', initialChildren: children);

  static const String name = 'AppHubWindow';
}

class ProgressPopup extends _i1.PageRouteInfo {
  const ProgressPopup() : super(name, path: '/progress-dialog');

  static const String name = 'ProgressPopup';
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

class BackupWalletPage extends _i1.PageRouteInfo {
  const BackupWalletPage() : super(name, path: 'backup');

  static const String name = 'BackupWalletPage';
}

class SettingsPage extends _i1.PageRouteInfo {
  const SettingsPage() : super(name, path: 'settings');

  static const String name = 'SettingsPage';
}

class SelectContactPage extends _i1.PageRouteInfo {
  const SelectContactPage() : super(name, path: 'contacts');

  static const String name = 'SelectContactPage';
}

class SendToContactPage extends _i1.PageRouteInfo {
  const SendToContactPage() : super(name, path: 'contacts/send');

  static const String name = 'SendToContactPage';
}

class CashOutPage extends _i1.PageRouteInfo {
  const CashOutPage() : super(name, path: 'cash-out');

  static const String name = 'CashOutPage';
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

class SendToCommunityFundPage extends _i1.PageRouteInfo {
  const SendToCommunityFundPage()
      : super(name, path: 'community/fund/contribute');

  static const String name = 'SendToCommunityFundPage';
}
