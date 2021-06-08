import 'package:the_wellbeing_protocol/core/models/community_entity.dart';

class BeginClearingData {}

class BeginLoadingMnemonic {}

class CompleteChangingDisplayName {
  final String displayName;
  CompleteChangingDisplayName(this.displayName);
}

class CompleteClearingData {}

class CompleteFetchingContacts {
  final List<CommunityEntity> contacts;
  CompleteFetchingContacts(this.contacts);
}

class CompleteLoadingMnemonic {
  final List<String> mnemonic;
  CompleteLoadingMnemonic(this.mnemonic);
}

class Logout {}

class SetSendToContact {
  final CommunityEntity contact;
  SetSendToContact(this.contact);
}

class SetWallet {
  final String walletAddress;
  SetWallet(this.walletAddress);
}

// class SetTokenBalance {
//   final Map<String, dynamic> tokenBalance;
//   SetTokenBalance(this.tokenBalance);
// }
