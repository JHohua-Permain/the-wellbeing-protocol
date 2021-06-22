import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

class BackupWalletConfirmViewModel {
  final int firstWordIndex;
  final int secondWordIndex;
  final int thirdWordIndex;
  final Function(String, String, String) confirmBackup;

  const BackupWalletConfirmViewModel({
    required this.firstWordIndex,
    required this.secondWordIndex,
    required this.thirdWordIndex,
    required this.confirmBackup,
  });
}

class BackupWalletViewModel extends Equatable {
  final List<String> mnemonic;
  final VoidCallback pushBackupConfirmScreen;

  const BackupWalletViewModel({
    required this.mnemonic,
    required this.pushBackupConfirmScreen,
  });

  @override
  List<Object?> get props => [mnemonic];
}
