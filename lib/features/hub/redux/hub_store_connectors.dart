import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/common/utils/qr_scanner.dart';
import 'package:the_wellbeing_protocol/core/states/app_state.dart';
import 'package:the_wellbeing_protocol/features/hub/hub_view_models.dart';
import 'package:the_wellbeing_protocol/features/hub/redux/hub_actions.dart';
import 'package:the_wellbeing_protocol/features/hub/redux/hub_handler_actions.dart';
import 'package:the_wellbeing_protocol/features/hub/redux/hub_thunk_actions.dart';
import 'package:the_wellbeing_protocol/features/hub/screens/account_screen.dart';
import 'package:the_wellbeing_protocol/features/hub/screens/cash_out_screen.dart';
import 'package:the_wellbeing_protocol/features/hub/screens/community_fund_screen.dart';
import 'package:the_wellbeing_protocol/features/hub/screens/protect_screen.dart';
import 'package:the_wellbeing_protocol/features/hub/screens/receive_screen.dart';
import 'package:the_wellbeing_protocol/features/hub/screens/select_contact_screen.dart';
import 'package:the_wellbeing_protocol/features/hub/screens/select_shop_screen.dart';
import 'package:the_wellbeing_protocol/features/hub/screens/settings_screen.dart';
import 'package:the_wellbeing_protocol/features/hub/screens/shop_screen.dart';
import 'package:the_wellbeing_protocol/features/hub/screens/transaction_history_screen.dart';
import 'package:the_wellbeing_protocol/features/hub/screens/wallet_screen.dart';

class AccountConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AccountViewModel>(
      distinct: true,
      builder: (context, vm) => AccountScreen(vm),
      converter: (store) => AccountViewModel(
        displayName: store.state.user.displayName,
        walletAddress: store.state.user.walletAddress!,
        primaryContactNum: store.state.user.primaryContactNum!,
        handleDisplayNameChange: (newDisplayName) {
          store.dispatch(changeDisplayName(newDisplayName));
        },
      ),
    );
  }
}

class CashOutConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreBuilder<AppState>(
      rebuildOnChange: false,
      builder: (context, store) => CashOutScreen(),
    );
  }
}

class CommunityFundConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CommunityFundViewModel>(
      distinct: true,
      builder: (context, vm) => CommunityFundScreen(vm),
      converter: (store) => CommunityFundViewModel(
        communityFund: store.state.community.communityFund,
        tokenSymbol: store.state.community.homeToken!.symbol,
        //TODO: Change from displaying each members total contribution, to each single contribution made.
        contributors: store.state.community.members
            .where((member) => member.communityFundContribution > 0)
            .toList(),
        pushContributeScreen: () {
          context.router.navigateNamed('/community/fund/contribute');
        },
      ),
      onInit: (store) {
        store.dispatch(FetchMembers());
      },
    );
  }
}

class ProtectConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreBuilder<AppState>(
      rebuildOnChange: false,
      builder: (context, vm) => ProtectScreen(),
    );
  }
}

class ReceiveConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreBuilder<AppState>(
      rebuildOnChange: false,
      builder: (context, vm) => ReceiveScreen(
        walletAddress: vm.state.user.walletAddress!,
        share: () {
          // TODO.
        },
      ),
    );
  }
}

class SelectContactConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SelectContactViewModel>(
      distinct: true,
      builder: (context, vm) => SelectContactScreen(vm),
      converter: (store) => SelectContactViewModel(
          hasContacts: store.state.user.contacts.isNotEmpty,
          contacts: store.state.user.contacts,
          selectContact: (contact) {
            if (contact.walletAddress != '') {
              context.router.navigateNamed(
                '/contacts/${contact.walletAddress}',
              );
            } else {
              // If a contact does not possess a wallet address.
              // TODO.
            }
          }),
      onInit: (store) {
        store.dispatch(FetchContacts());
      },
    );
  }
}

class SelectShopConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SelectShopViewModel>(
      distinct: true,
      builder: (context, vm) => SelectShopScreen(vm),
      converter: (store) => SelectShopViewModel(
        shops: store.state.community.shops.values.toList(),
        selectShop: (index) {
          String shopId =
              store.state.community.shops[index.toString()]!.walletAddress;
          context.router.navigateNamed(
            'shops/$shopId',
          );
        },
      ),
      onInit: (store) {
        store.dispatch(FetchShops());
      },
    );
  }
}

class SettingsConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SettingsViewModel>(
      rebuildOnChange: false,
      builder: (context, vm) => SettingsScreen(vm),
      converter: (store) => SettingsViewModel(
        pushAboutScreen: () {
          context.router.navigateNamed('about');
        },
        pushProtectWalletScreen: () {
          context.router.navigateNamed('settings/protect');
        },
        logoutUser: () {
          store.dispatch(Logout());
        },
        clearData: () {
          store.dispatch(ClearData());
        },
      ),
    );
  }
}

class ShopConnector extends StatelessWidget {
  final String shopId;

  ShopConnector(@PathParam('shopId') this.shopId);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ShopViewModel>(
      distinct: true,
      builder: (context, vm) => ShopScreen(vm),
      converter: (store) => ShopViewModel(
        shop: store.state.community.shops[shopId]!,
        shopItems: store.state.community.shops[shopId]!.items.values.toList(),
        tokenSymbol: store.state.community.homeToken!.symbol,
        selectItem: (index) {
          String itemId =
              store.state.community.shops[shopId]!.items[index.toString()]!.id;
          context.router.navigateNamed(
            '/shops/$shopId/$itemId',
          );
        },
      ),
    );
  }
}

class TransactionHistoryConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreBuilder<AppState>(
      rebuildOnChange: false,
      builder: (context, vm) => TransactionHistoryScreen(),
    );
  }
}

class WalletConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, WalletViewModel>(
      distinct: true,
      builder: (context, vm) => WalletScreen(vm),
      converter: (store) => WalletViewModel(
        displayName: store.state.user.displayName,
        walletAddress: store.state.user.walletAddress ?? '',
        currentTokenBalance: '0',
        //TODO: Re-implement.
        currentTokenSymbol: store.state.community.homeToken?.symbol ?? '',
        openQRScanner: () {
          scanQRCode().then((code) {
            // TODO.
          }).catchError((_) {
            // TODO.
          });
        },
        logoutUser: () {
          store.dispatch(Logout());
        },
        pushAccountScreen: () {
          context.router.pushNamed('account');
        },
        pushBackupWalletScreen: () {
          context.router.pushNamed('/backup');
        },
        pushSettingsScreen: () {
          context.router.pushNamed('settings');
        },
        pushCashOutScreen: () {
          context.router.pushNamed('cash-out');
        },
        pushReceiveScreen: () {
          context.router.pushNamed('receive');
        },
        pushSelectContactScreen: () {
          context.router.pushNamed('contacts');
        },
        pushTransactionHistoryScreen: () {
          context.router.pushNamed('transactions');
        },
      ),
    );
  }
}
