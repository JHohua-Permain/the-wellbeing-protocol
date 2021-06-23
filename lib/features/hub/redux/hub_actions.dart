import 'package:the_wellbeing_protocol/core/models/community_entity.dart';
import 'package:the_wellbeing_protocol/core/models/token.dart';
import 'package:the_wellbeing_protocol/core/models/transfer.dart';

class ClearData {}

class FetchMembers {}

class FetchShops {}

class Logout {}

class SetCommunityAddress {
  final String communityAddress;

  SetCommunityAddress(this.communityAddress);
}

class SetContacts {
  final List<CommunityEntity> contacts;

  SetContacts(this.contacts);
}

class SetDisplayName {
  final String displayName;

  SetDisplayName(this.displayName);
}

class SetHomeToken {
  final Token homeToken;

  SetHomeToken(this.homeToken);
}

class SetMembers {
  final List<CommunityMember> members;

  SetMembers(this.members);
}

class SetShops {
  final Map<String, CommunityShop> shops;

  SetShops(this.shops);
}

class SetTokenBalances {
  final Map<String, String> tokenBalances;

  SetTokenBalances(this.tokenBalances);
}


class SetTransfers {
  List<Transfer> transfers;

  SetTransfers(this.transfers);
}

class SetWalletAddress {
  final String walletAddress;

  SetWalletAddress(this.walletAddress);
}

// class SetTokenBalance {
//   final Map<String, dynamic> tokenBalance;
//   SetTokenBalance(this.tokenBalance);
// }
