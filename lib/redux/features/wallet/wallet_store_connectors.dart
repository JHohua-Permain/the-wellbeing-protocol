import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/redux/features/wallet/wallet_actions.dart';
import 'package:the_wellbeing_protocol/redux/features/wallet/wallet_thunk_actions.dart';
import 'package:the_wellbeing_protocol/ui/screens/wallet/account_screen.dart';
import 'package:the_wellbeing_protocol/ui/screens/wallet/backup_wallet_screen.dart';
import 'package:the_wellbeing_protocol/ui/screens/wallet/settings_screen.dart';
import 'package:the_wellbeing_protocol/ui/screens/wallet/transaction_history_screen.dart';
import 'package:the_wellbeing_protocol/ui/screens/wallet/wallet_screen.dart';
import 'package:the_wellbeing_protocol/ui/view_models/wallet_view_models.dart';

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

class BackupWalletConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, BackupWalletViewModel>(
      distinct: true,
      builder: (context, vm) => BackupWalletScreen(vm),
      converter: (store) => BackupWalletViewModel(
        mnemonic: store.state.user.mnemonic ?? [],
      ),
      onInit: (store) {
        store.dispatch(BeginLoadingMnemonic());
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
          context.router.navigateNamed('protect');
        },
        pushLanguageScreen: () {
          // TODO: Will we need this?
          throw UnimplementedError();
        },
        logoutUser: () {
          store.dispatch(Logout());
        },
        clearData: () {
          store.dispatch(BeginClearingData());
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
        currentTokenBalance: '0', //TODO: Re-implement.
        currentTokenSymbol: store.state.community.homeToken?.symbol ?? '',
        logoutUser: () {
          store.dispatch(Logout());
        },
        pushAccountScreen: () {
          context.router.pushNamed('account');
        },
        pushBackupWalletScreen: () {
          context.router.pushNamed('backup');
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
