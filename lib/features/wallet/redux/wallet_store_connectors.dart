import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/core/models/community_entity.dart';
import 'package:the_wellbeing_protocol/core/state/app_state.dart';
import 'package:the_wellbeing_protocol/features/wallet/redux/wallet_actions.dart';
import 'package:the_wellbeing_protocol/features/wallet/redux/wallet_thunk_actions.dart';
import 'package:the_wellbeing_protocol/features/wallet/screens/account_screen.dart';
import 'package:the_wellbeing_protocol/features/wallet/screens/backup_wallet_screen.dart';
import 'package:the_wellbeing_protocol/features/wallet/screens/cash_out_screen.dart';
import 'package:the_wellbeing_protocol/features/wallet/screens/select_contact_screen.dart';
import 'package:the_wellbeing_protocol/features/wallet/screens/send_to_contact_review_screen.dart';
import 'package:the_wellbeing_protocol/features/wallet/screens/send_to_contact_screen.dart';
import 'package:the_wellbeing_protocol/features/wallet/screens/settings_screen.dart';
import 'package:the_wellbeing_protocol/features/wallet/screens/transaction_history_screen.dart';
import 'package:the_wellbeing_protocol/features/wallet/screens/wallet_screen.dart';
import 'package:the_wellbeing_protocol/features/wallet/wallet_view_models.dart';
import 'package:the_wellbeing_protocol/routing/app_router.gr.dart';

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

class CashOutConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreBuilder<AppState>(
      rebuildOnChange: false,
      builder: (context, store) => CashOutScreen(),
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
          contacts: store.state.user.contacts,
          selectContact: (contact) {
            context.router
                .navigate(SendToContactPage(contact: contact.toJson()));
          }),
      onInit: (store) {
        store.dispatch(fetchContacts());
      },
    );
  }
}

class SendToContactConnector extends StatelessWidget {
  final Map<String, dynamic> contact;

  SendToContactConnector(this.contact);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SendToContactViewModel>(
      distinct: true,
      builder: (context, vm) => SendToContactScreen(vm),
      converter: (store) => SendToContactViewModel(
        contact: CommunityEntity.fromJson(contact),
        tokenSymbol: store.state.community.homeToken!.symbol,
        submitSendAmount: (amount) {
          context.router.navigate(
            SendToContactReviewPage(contact: contact, amount: amount),
          );
        },
      ),
    );
  }
}

class SendToContactReviewConnector extends StatelessWidget {
  final Map<String, dynamic> contact;
  final String amount;

  SendToContactReviewConnector(this.contact, this.amount);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SendToContactReviewViewModel>(
      distinct: true,
      builder: (context, vm) => SendToContactReviewScreen(vm),
      converter: (store) => SendToContactReviewViewModel(
        contact: CommunityEntity.fromJson(contact),
        amount: amount,
        tokenSymbol: store.state.community.homeToken!.symbol,
        confirmTransfer: () {
          // TODO
        },
      ),
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
    return StoreConnector<AppState, TransactionHistoryViewModel>(
      rebuildOnChange: false,
      builder: (context, vm) => TransactionHistoryScreen(vm),
      converter: (store) => TransactionHistoryViewModel(
        store.state.user.transfers,
      ),
      onInit: (store) {
        store.dispatch(fetchTransfers());
      },
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
