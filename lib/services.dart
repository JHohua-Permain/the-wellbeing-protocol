import 'package:the_wellbeing_protocol/constants.dart' as Constants;
import 'package:the_wellbeing_protocol/models/authentication_method.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:wallet_core/wallet_core.dart';

class AppServices {
  final AuthenticationMethod authenticationMethod;
  final FuseAPIService fuseAPIService;
  final FuseNetworkService fuseNetworkService;

  AppServices(
    this.authenticationMethod,
    this.fuseAPIService,
    this.fuseNetworkService,
  );

  static AppServices init() {
    return AppServices(
      Constants.AUTH_METHOD,
      FuseAPIService(
        base: Constants.API_BASE_URL,
      ),
      FuseNetworkService(
        url: Constants.FUSE_RPC_URL,
        networkId: Constants.FUSE_CHAIN_ID,
        defaultCommunityAddress: Constants.DEFAULT_COMMUNITY_ADDRESS,
      ),
    );
  }
}

///A service used to connect to the Fuse Studio backend API.
class FuseAPIService extends API {
  FuseAPIService({required String base}) : super(base: base);
}

///A service used to connect to Fuse's RPC server.
///The RPC server allows us to interact with the Fuse Network/Blockchain.
class FuseNetworkService extends Web3 {
  FuseNetworkService({
    required String url,
    required int networkId,
    required String defaultCommunityAddress,
  }) : super(
          () async => true,
          url: url,
          networkId: networkId,
          defaultCommunityAddress: defaultCommunityAddress,
        );

  String generateMnemonic() {
    return Web3.generateMnemonic();
  }

  String generatePrivateKey(String mnemonic) {
    return Web3.privateKeyFromMnemonic(mnemonic);
  }
}
