import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:the_wellbeing_protocol/core/models/community_entity.dart';
import 'package:the_wellbeing_protocol/core/models/shop_item.dart';
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

class CommunityFundViewModel extends Equatable {
  final String communityFund;
  final String tokenSymbol;
  final List<CommunityEntity> contributors;
  final VoidCallback pushContributeScreen;

  const CommunityFundViewModel({
    required this.communityFund,
    required this.tokenSymbol,
    required this.contributors,
    required this.pushContributeScreen,
  });

  @override
  List<Object?> get props => [
        communityFund,
        tokenSymbol,
        contributors,
      ];
}

class SelectContactViewModel extends Equatable {
  final bool hasContacts;
  final List<CommunityEntity> contacts;
  final ValueSetter<CommunityEntity> selectContact;

  const SelectContactViewModel({
    required this.hasContacts,
    required this.contacts,
    required this.selectContact,
  });

  @override
  List<Object?> get props => [hasContacts, contacts];
}

class SelectShopViewModel extends Equatable {
  final List<CommunityShop> shops;
  final ValueSetter<int> selectShop;

  const SelectShopViewModel({
    required this.shops,
    required this.selectShop,
  });

  @override
  List<Object?> get props => [shops];
}

class SettingsViewModel {
  final VoidCallback pushAboutScreen;
  final VoidCallback pushProtectWalletScreen;
  final VoidCallback logoutUser;
  final VoidCallback clearData;

  const SettingsViewModel({
    required this.pushAboutScreen,
    required this.pushProtectWalletScreen,
    required this.logoutUser,
    required this.clearData,
  });
}

class ShopViewModel extends Equatable {
  final CommunityShop shop;
  final List<ShopItem> shopItems;
  final String tokenSymbol;
  final ValueSetter<int> selectItem;

  const ShopViewModel({
    required this.shop,
    required this.shopItems,
    required this.tokenSymbol,
    required this.selectItem,
  });

  @override
  List<Object?> get props => [shop, tokenSymbol];
}

class TransactionHistoryViewModel extends Equatable {
  final String tokenSymbol;
  final String tokenDecimals;
  final bool fetchingTransfers;
  final List<Transfer> transfers;

  const TransactionHistoryViewModel({
    required this.tokenSymbol,
    required this.tokenDecimals,
    required this.fetchingTransfers,
    required this.transfers,
  });

  @override
  List<Object?> get props => [
        tokenSymbol,
        tokenDecimals,
        fetchingTransfers,
        transfers,
      ];
}

class WalletViewModel extends Equatable {
  final String displayName;
  final String walletAddress;
  final String currentTokenBalance;
  final String currentTokenSymbol;
  final VoidCallback openQRScanner;
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
    required this.openQRScanner,
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
