import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/redux/actions/user_actions.dart';
import 'package:the_wellbeing_protocol/screens/wallet/account_screen.dart';
import 'package:the_wellbeing_protocol/screens/wallet/transaction_history_screen.dart';
import 'package:the_wellbeing_protocol/screens/wallet/wallet_screen.dart';
import 'package:the_wellbeing_protocol/screens_redux/wallet_view_models.dart';

class AccountConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AccountViewModel>(
      distinct: true,
      builder: (context, vm) => AccountScreen(vm),
      converter: (store) => AccountViewModel(
        displayName: store.state.user.displayName,
        walletAddress: store.state.user.walletAddress,
        primaryContactNum: store.state.user.primaryContactNum ?? '',
        handleDisplayNameChange: (newDisplayName) {
          //TODO: Implement.
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
        walletAddress: store.state.user.walletAddress,
        currentTokenBalance: '0', //TODO: Re-implement.
        currentTokenSymbol: store.state.community.homeToken?.symbol ?? '',
        logoutUser: () => store.dispatch(processLogout()),
        pushAccountScreen: () => context.router.pushNamed('account'),
        pushCashOutScreen: () => context.router.pushNamed('cash-out'),
        pushReceiveScreen: () => context.router.pushNamed('receive'),
        pushSelectContactScreen: () => context.router.pushNamed('contacts'),
        pushTransactionHistoryScreen: () =>
            context.router.pushNamed('transactions'),
      ),
    );
  }
}
