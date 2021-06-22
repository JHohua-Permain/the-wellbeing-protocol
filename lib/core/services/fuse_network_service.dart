// ignore: import_of_legacy_library_into_null_safe
import 'package:wallet_core/wallet_core.dart';

///A service used to connect to Fuse's RPC server.
///The RPC server allows us to interact with the Fuse Network/Blockchain.
class FuseNetworkService extends Web3 {
  FuseNetworkService({
    required String url,
    required int networkId,
    required String defaultCommunityAddress,
    required String communityManagerAddress,
  }) : super(
          () async => true,
          url: url,
          networkId: networkId,
          defaultCommunityAddress: defaultCommunityAddress,
          communityManagerAddress: communityManagerAddress,
        );

  String generateMnemonic() {
    return Web3.generateMnemonic();
  }

  String generatePrivateKey(String mnemonic) {
    return Web3.privateKeyFromMnemonic(mnemonic);
  }

  Future<void> setCredentialsFromMnemonic(String mnemonic) async {
    String privateKey = generatePrivateKey(mnemonic);
    await setCredentials(privateKey);
  }
}
