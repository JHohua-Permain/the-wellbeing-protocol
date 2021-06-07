import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

class AccountViewModel extends Equatable {
  final String displayName;
  final String walletAddress;
  final String primaryContactNum;
  final ValueSetter<String> handleDisplayNameChange;

  const AccountViewModel({
    required this.displayName,
    required this.walletAddress,
    required this.primaryContactNum,
    required this.handleDisplayNameChange,
  });

  @override
  List<Object?> get props => [displayName, walletAddress, primaryContactNum];
}

class BackupWalletViewModel extends Equatable {
  final List<String> mnemonic;

  const BackupWalletViewModel({required this.mnemonic});

  @override
  List<Object?> get props => [mnemonic];
}

class SettingsViewModel {
  final VoidCallback pushAboutScreen;
  final VoidCallback pushProtectWalletScreen;
  final VoidCallback pushLanguageScreen;
  final VoidCallback logoutUser;
  final VoidCallback clearData;

  const SettingsViewModel({
    required this.pushAboutScreen,
    required this.pushProtectWalletScreen,
    required this.pushLanguageScreen,
    required this.logoutUser,
    required this.clearData,
  });
}

class WalletViewModel extends Equatable {
  final String displayName;
  final String walletAddress;
  final String currentTokenBalance;
  final String currentTokenSymbol;
  final VoidCallback logoutUser;
  final VoidCallback pushAccountScreen;
  final VoidCallback pushBackupWalletScreen;
  final VoidCallback pushSettingsScreen;
  final VoidCallback pushCashOutScreen;
  final VoidCallback pushReceiveScreen;
  final VoidCallback pushSelectContactScreen;
  final VoidCallback pushTransactionHistoryScreen;

  const WalletViewModel({
    required this.displayName,
    required this.walletAddress,
    required this.currentTokenBalance,
    required this.currentTokenSymbol,
    required this.logoutUser,
    required this.pushAccountScreen,
    required this.pushBackupWalletScreen,
    required this.pushSettingsScreen,
    required this.pushCashOutScreen,
    required this.pushReceiveScreen,
    required this.pushSelectContactScreen,
    required this.pushTransactionHistoryScreen,
  });

  List<Object?> get props => [
        displayName,
        walletAddress,
        currentTokenBalance,
        currentTokenSymbol,
      ];
}
