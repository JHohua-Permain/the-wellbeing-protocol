import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/core/states/app_state.dart';
import 'package:the_wellbeing_protocol/core/utils/mnemonic_utils.dart';
import 'package:the_wellbeing_protocol/features/backup/backup_view_models.dart';
import 'package:the_wellbeing_protocol/features/backup/screens/backup_wallet_confirm_screen.dart';
import 'package:the_wellbeing_protocol/features/backup/screens/backup_wallet_screen.dart';

class BackupWalletConfirmConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, BackupWalletConfirmViewModel>(
      rebuildOnChange: false,
      builder: (context, vm) => BackupWalletConfirmScreen(vm),
      converter: (store) {
        // TODO: Move to a more appropriate place.
        List<String> mnemonicList =
            convertMnemonicToList(store.state.user.mnemonic!);
        List<int> wordIndexes = [];
        Random rng = Random();
        while (wordIndexes.length < 3) {
          int wordIndex = rng.nextInt(mnemonicList.length);
          if (!wordIndexes.contains(wordIndex)) {
            wordIndexes.add(wordIndex);
          }
        }
        wordIndexes.sort();

        return BackupWalletConfirmViewModel(
          firstWordIndex: wordIndexes[0],
          secondWordIndex: wordIndexes[1],
          thirdWordIndex: wordIndexes[2],
          confirmBackup: (firstWord, secondWord, thirdWord) {},
        );
      },
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
          mnemonic: convertMnemonicToList(store.state.user.mnemonic!),
          pushBackupConfirmScreen: () {
            AutoRouter.of(context).navigateNamed('/backup/confirm');
          }),
    );
  }
}
