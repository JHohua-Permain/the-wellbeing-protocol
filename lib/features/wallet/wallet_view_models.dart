import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:the_wellbeing_protocol/core/models/community_entity.dart';
import 'package:the_wellbeing_protocol/core/models/transfer.dart';

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

class SelectContactViewModel extends Equatable {
  final List<CommunityEntity> contacts;
  final ValueSetter<CommunityEntity> selectContact;

  const SelectContactViewModel({
    required this.contacts,
    required this.selectContact,
  });

  @override
  List<Object?> get props => [contacts];
}

class SendToContactReviewViewModel extends Equatable {
  final String amount;
  final String tokenSymbol;
  final CommunityEntity contact;
  final VoidCallback confirmTransfer;

  const SendToContactReviewViewModel({
    required this.amount,
    required this.tokenSymbol,
    required this.contact,
    required this.confirmTransfer,
  });

  @override
  List<Object?> get props => [amount, tokenSymbol, contact];
}

class SendToContactViewModel extends Equatable {
  final CommunityEntity contact;
  final String tokenSymbol;
  final ValueSetter<String> submitSendAmount;

  const SendToContactViewModel({
    required this.contact,
    required this.tokenSymbol,
    required this.submitSendAmount,
  });

  @override
  List<Object> get props => [contact, tokenSymbol];
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

class TransactionHistoryViewModel extends Equatable {
  final List<Transfer> transfers;

  const TransactionHistoryViewModel(this.transfers);

  @override
  List<Object?> get props => [transfers];
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
