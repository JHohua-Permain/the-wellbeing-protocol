// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../app_hub.dart' as _i7;
import '../common/widgets/progress_dialog.dart' as _i8;
import '../features/authentication/redux/authentication_store_connectors.dart'
    as _i4;
import '../features/backup/redux/backup_store_connectors.dart' as _i6;
import '../features/hub/redux/hub_store_connectors.dart' as _i9;
import '../features/transactions/redux/transactions_store_connectors.dart'
    as _i5;
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
    RestorePage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.RestoreConnector();
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
    SendToContactPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<SendToContactPageArgs>(
              orElse: () => SendToContactPageArgs(
                  contactId: pathParams.getString('contactId')));
          return _i5.SendToContactConnector(args.contactId);
        }),
    SendToContactReviewPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SendToContactReviewPageArgs>();
          return _i5.SendToContactReviewConnector(args.contactId, args.amount);
        }),
    ShopItemDetailsPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<ShopItemDetailsPageArgs>(
              orElse: () => ShopItemDetailsPageArgs(
                  shopId: pathParams.getString('shopId'),
                  itemId: pathParams.getString('itemId')));
          return _i5.ShopItemDetailsConnector(args.shopId, args.itemId);
        }),
    ShopCheckoutReviewPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ShopCheckoutReviewPageArgs>();
          return _i5.ShopCheckoutReviewConnector(
              args.shopId, args.itemId, args.count, args.location);
        }),
    SendToCommunityFundPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.SendToCommunityFundConnector();
        }),
    SendToCommunityFundReviewPage.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final args = data.argsAs<SendToCommunityFundReviewPageArgs>();
              return _i5.SendToCommunityFundReviewConnector(args.amount);
            }),
    TransactionSuccessPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.TransactionSuccessConnector();
        }),
    BackupWalletPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.BackupWalletConnector();
        }),
    BackupWalletConfirmPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.BackupWalletConfirmConnector();
        }),
    AppHubRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.AppHub();
        }),
    ProgressPopup.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.ProgressDialog();
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
          return _i9.WalletConnector();
        }),
    AccountPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.AccountConnector();
        }),
    SettingsPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.SettingsConnector();
        }),
    SelectContactPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.SelectContactConnector();
        }),
    CashOutPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.CashOutConnector();
        }),
    TransactionHistoryPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.TransactionHistoryConnector();
        }),
    SelectShopPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.SelectShopConnector();
        }),
    ShopPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<ShopPageArgs>(
              orElse: () =>
                  ShopPageArgs(shopId: pathParams.getString('shopId')));
          return _i9.ShopConnector(args.shopId);
        }),
    CommunityFundPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.CommunityFundConnector();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPage.name, path: '/'),
        _i1.RouteConfig(WelcomePage.name, path: '/welcome'),
        _i1.RouteConfig(RestorePage.name, path: '/restore'),
        _i1.RouteConfig(LoginPage.name, path: '/login'),
        _i1.RouteConfig(VerificationPage.name, path: '/login/verify'),
        _i1.RouteConfig(SendToContactPage.name, path: '/contacts/:contactId'),
        _i1.RouteConfig(SendToContactReviewPage.name, path: '/contacts/review'),
        _i1.RouteConfig(ShopItemDetailsPage.name,
            path: '/shops/:shopId/:itemId'),
        _i1.RouteConfig(ShopCheckoutReviewPage.name, path: '/shops/review'),
        _i1.RouteConfig(SendToCommunityFundPage.name,
            path: '/community/fund/contribute'),
        _i1.RouteConfig(SendToCommunityFundReviewPage.name,
            path: '/community/fund/review'),
        _i1.RouteConfig(TransactionSuccessPage.name,
            path: '/hub/review/status'),
        _i1.RouteConfig(BackupWalletPage.name, path: '/backup'),
        _i1.RouteConfig(BackupWalletConfirmPage.name, path: '/backup/confirm'),
        _i1.RouteConfig(AppHubRoute.name, path: '/hub', guards: [
          authGuard
        ], children: [
          _i1.RouteConfig(WalletRouter.name,
              path: 'empty-router-page',
              children: [
                _i1.RouteConfig('#redirect',
                    path: '', redirectTo: 'wallet', fullMatch: true),
                _i1.RouteConfig(WalletPage.name, path: 'wallet'),
                _i1.RouteConfig(AccountPage.name, path: 'account'),
                _i1.RouteConfig(SettingsPage.name, path: 'settings'),
                _i1.RouteConfig(SelectContactPage.name, path: 'contacts'),
                _i1.RouteConfig(CashOutPage.name, path: 'cash-out'),
                _i1.RouteConfig(TransactionHistoryPage.name,
                    path: 'transactions')
              ]),
          _i1.RouteConfig(ShopRouter.name,
              path: 'empty-router-page',
              children: [
                _i1.RouteConfig('#redirect',
                    path: '', redirectTo: 'shops', fullMatch: true),
                _i1.RouteConfig(SelectShopPage.name, path: 'shops'),
                _i1.RouteConfig(ShopPage.name, path: 'shops/:shopId')
              ]),
          _i1.RouteConfig(CommunityFundRouter.name,
              path: 'empty-router-page',
              children: [
                _i1.RouteConfig('#redirect',
                    path: '', redirectTo: 'community/fund', fullMatch: true),
                _i1.RouteConfig(CommunityFundPage.name, path: 'community/fund')
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

class RestorePage extends _i1.PageRouteInfo {
  const RestorePage() : super(name, path: '/restore');

  static const String name = 'RestorePage';
}

class LoginPage extends _i1.PageRouteInfo {
  const LoginPage() : super(name, path: '/login');

  static const String name = 'LoginPage';
}

class VerificationPage extends _i1.PageRouteInfo {
  const VerificationPage() : super(name, path: '/login/verify');

  static const String name = 'VerificationPage';
}

class SendToContactPage extends _i1.PageRouteInfo<SendToContactPageArgs> {
  SendToContactPage({required String contactId})
      : super(name,
            path: '/contacts/:contactId',
            args: SendToContactPageArgs(contactId: contactId),
            rawPathParams: {'contactId': contactId});

  static const String name = 'SendToContactPage';
}

class SendToContactPageArgs {
  const SendToContactPageArgs({required this.contactId});

  final String contactId;
}

class SendToContactReviewPage
    extends _i1.PageRouteInfo<SendToContactReviewPageArgs> {
  SendToContactReviewPage({required String contactId, required String amount})
      : super(name,
            path: '/contacts/review',
            args: SendToContactReviewPageArgs(
                contactId: contactId, amount: amount));

  static const String name = 'SendToContactReviewPage';
}

class SendToContactReviewPageArgs {
  const SendToContactReviewPageArgs(
      {required this.contactId, required this.amount});

  final String contactId;

  final String amount;
}

class ShopItemDetailsPage extends _i1.PageRouteInfo<ShopItemDetailsPageArgs> {
  ShopItemDetailsPage({required String shopId, required String itemId})
      : super(name,
            path: '/shops/:shopId/:itemId',
            args: ShopItemDetailsPageArgs(shopId: shopId, itemId: itemId),
            rawPathParams: {'shopId': shopId, 'itemId': itemId});

  static const String name = 'ShopItemDetailsPage';
}

class ShopItemDetailsPageArgs {
  const ShopItemDetailsPageArgs({required this.shopId, required this.itemId});

  final String shopId;

  final String itemId;
}

class ShopCheckoutReviewPage
    extends _i1.PageRouteInfo<ShopCheckoutReviewPageArgs> {
  ShopCheckoutReviewPage(
      {required String shopId,
      required String itemId,
      required int count,
      required String location})
      : super(name,
            path: '/shops/review',
            args: ShopCheckoutReviewPageArgs(
                shopId: shopId,
                itemId: itemId,
                count: count,
                location: location));

  static const String name = 'ShopCheckoutReviewPage';
}

class ShopCheckoutReviewPageArgs {
  const ShopCheckoutReviewPageArgs(
      {required this.shopId,
      required this.itemId,
      required this.count,
      required this.location});

  final String shopId;

  final String itemId;

  final int count;

  final String location;
}

class SendToCommunityFundPage extends _i1.PageRouteInfo {
  const SendToCommunityFundPage()
      : super(name, path: '/community/fund/contribute');

  static const String name = 'SendToCommunityFundPage';
}

class SendToCommunityFundReviewPage
    extends _i1.PageRouteInfo<SendToCommunityFundReviewPageArgs> {
  SendToCommunityFundReviewPage({required String amount})
      : super(name,
            path: '/community/fund/review',
            args: SendToCommunityFundReviewPageArgs(amount: amount));

  static const String name = 'SendToCommunityFundReviewPage';
}

class SendToCommunityFundReviewPageArgs {
  const SendToCommunityFundReviewPageArgs({required this.amount});

  final String amount;
}

class TransactionSuccessPage extends _i1.PageRouteInfo {
  const TransactionSuccessPage() : super(name, path: '/hub/review/status');

  static const String name = 'TransactionSuccessPage';
}

class BackupWalletPage extends _i1.PageRouteInfo {
  const BackupWalletPage() : super(name, path: '/backup');

  static const String name = 'BackupWalletPage';
}

class BackupWalletConfirmPage extends _i1.PageRouteInfo {
  const BackupWalletConfirmPage() : super(name, path: '/backup/confirm');

  static const String name = 'BackupWalletConfirmPage';
}

class AppHubRoute extends _i1.PageRouteInfo {
  const AppHubRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/hub', initialChildren: children);

  static const String name = 'AppHubRoute';
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

class SettingsPage extends _i1.PageRouteInfo {
  const SettingsPage() : super(name, path: 'settings');

  static const String name = 'SettingsPage';
}

class SelectContactPage extends _i1.PageRouteInfo {
  const SelectContactPage() : super(name, path: 'contacts');

  static const String name = 'SelectContactPage';
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

class ShopPage extends _i1.PageRouteInfo<ShopPageArgs> {
  ShopPage({required String shopId})
      : super(name,
            path: 'shops/:shopId',
            args: ShopPageArgs(shopId: shopId),
            rawPathParams: {'shopId': shopId});

  static const String name = 'ShopPage';
}

class ShopPageArgs {
  const ShopPageArgs({required this.shopId});

  final String shopId;
}

class CommunityFundPage extends _i1.PageRouteInfo {
  const CommunityFundPage() : super(name, path: 'community/fund');

  static const String name = 'CommunityFundPage';
}
