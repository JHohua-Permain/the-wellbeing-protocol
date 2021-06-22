import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/core/states/app_state.dart';
import 'package:the_wellbeing_protocol/core/utils/mnemonic_utils.dart';
import 'package:the_wellbeing_protocol/features/backup/backup_view_models.dart';
import 'package:the_wellbeing_protocol/features/backup/screens/backup_wallet_screen.dart';

class BackupWalletConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, BackupWalletViewModel>(
      distinct: true,
      builder: (context, vm) => BackupWalletScreen(vm),
      converter: (store) => BackupWalletViewModel(
        mnemonic: convertMnemonicToList(store.state.user.mnemonic!),
      ),
    );
  }
}
