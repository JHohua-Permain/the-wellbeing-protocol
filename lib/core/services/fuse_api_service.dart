import 'package:the_wellbeing_protocol/core/models/token.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:wallet_core/wallet_core.dart';

///A service used to connect to the Fuse Studio backend API.
class FuseAPIService extends API {
  FuseAPIService({required String base}) : super(base: base);

  Future<Token> fetchCommunityHomeToken(
    Web3 web3,
    String communityAddress,
  ) async {
    dynamic communityData = await getCommunityData(communityAddress);
    String homeTokenAddress = communityData['homeTokenAddress'];
    dynamic homeTokenData = await web3.getTokenDetails(homeTokenAddress);
    homeTokenData['address'] = homeTokenAddress;
    return Token.fromJson(homeTokenData);
  }

  Future<dynamic> prepareUserDataForDb(
    String walletAddress,
    String displayName,
  ) async {
    Map<String, dynamic> userData = {
      "accountAddress": walletAddress,
      "email": 'wallet-user@fuse.io',
      "provider": 'HDWallet',
      "subscribe": false,
      "source": 'wallet-v2',
      "displayName": displayName
    };
    return saveUserToDb(userData);
  }
}
