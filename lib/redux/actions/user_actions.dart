import 'package:the_wellbeing_protocol/models/community_entity.dart';
import 'package:the_wellbeing_protocol/redux/app_redux.dart';

AppThunkAction createWallet(String communityAddress) {
  return (store, services) async {
    dynamic walletData = await services.fuseAPIService.createWallet(
      communityAddress: communityAddress,
    );
    store.dispatch(SetWallet(walletData['walletAddress']));
  };
}

AppThunkAction fetchTokenBalance(String tokenAddress) {
  return (store, services) async {
    final tokenBalanceData = await services.fuseNetworkService.getTokenBalance(
      tokenAddress,
      address: store.state.user.accountAddress,
    );
    print('Token Balance Data: $tokenBalanceData');
  };
}

AppThunkAction fetchWallet() {
  //TODO: Finish implementation.
  return (store, services) async {
    final walletData = await services.fuseAPIService.getWallet();
    store.dispatch(SetWallet(walletData['walletAddress']));
  };
}

class Authenticate {
  const Authenticate();
}

class CompleteDataWipe {
  const CompleteDataWipe();
}

class CompleteLogin {
  final String phoneNum;
  final String? verificationId;

  const CompleteLogin(this.phoneNum, this.verificationId);
}

class CompleteVerification {
  final String phoneNum;

  const CompleteVerification(this.phoneNum);
}

class SetAccountAddress {
  final String accountAddress;

  const SetAccountAddress(this.accountAddress);
}

class SetContacts {
  final List<CommunityEntity> contacts;

  const SetContacts(this.contacts);
}

class SetDisplayName {
  final String displayName;

  const SetDisplayName(this.displayName);
}

class SetTokenBalance {
  final Map<String, dynamic> tokenBalance;

  const SetTokenBalance(this.tokenBalance);
}

class SetWallet {
  final String walletAddress;

  const SetWallet(this.walletAddress);
}
