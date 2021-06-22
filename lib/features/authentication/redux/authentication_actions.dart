import 'package:the_wellbeing_protocol/core/models/token.dart';
import 'package:the_wellbeing_protocol/core/states/auth_state.dart';

class SetCommunityAddress {
  final String communityAddress;

  SetCommunityAddress(this.communityAddress);
}

class SetCommunityHomeToken {
  final Token homeToken;

  SetCommunityHomeToken(this.homeToken);
}

class SetUserAccountAddress {
  final String accountAddress;

  SetUserAccountAddress(this.accountAddress);
}

class SetUserDisplayName {
  final String displayName;

  SetUserDisplayName(this.displayName);
}

class SetUserJwt {
  final String jwt;

  SetUserJwt(this.jwt);
}

class SetUserMnemonic {
  final String mnemonic;

  SetUserMnemonic(this.mnemonic);
}

class SetUserPrimaryContactNum {
  final String primaryContactNum;

  SetUserPrimaryContactNum(this.primaryContactNum);
}

class SetUserWalletAddress {
  final String walletAddress;

  SetUserWalletAddress(this.walletAddress);
}

class UpdateAuthState {
  final AuthState authState;

  UpdateAuthState(this.authState);
}
