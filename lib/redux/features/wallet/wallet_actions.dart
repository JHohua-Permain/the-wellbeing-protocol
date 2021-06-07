import 'package:the_wellbeing_protocol/models/community_entity.dart';

class CompleteChangingDisplayName {
  final String displayName;
  CompleteChangingDisplayName(this.displayName);
}

class CompleteFetchingContacts {
  final List<CommunityEntity> contacts;
  CompleteFetchingContacts(this.contacts);
}

class Logout {}

class SetWallet {
  final String walletAddress;
  SetWallet(this.walletAddress);
}

// class SetTokenBalance {
//   final Map<String, dynamic> tokenBalance;
//   SetTokenBalance(this.tokenBalance);
// }
