import 'package:get_it/get_it.dart';
import 'package:the_wellbeing_protocol/constants.dart' as Constants;

// ignore: import_of_legacy_library_into_null_safe
import 'package:wallet_core/wallet_core.dart';

///This file sets functionality for network services used through out the app.
///
///Each service is instantiated using a [GetIt] instance from the 'get_it' package.
///Using [GetIt], we can setup services as global singletons
/// which can be imported into a file and called whenever they are needed.
///
///A technique similar to IIFE's from JavaScript is used to instantiate the services.
///This is so we can avoid having to call a function to explicitly set them up.

///A service used to connect to the Fuse Studio backend API.
final API fuseAPIService = () {
  GetIt.instance.registerSingleton<API>(API(
    base: Constants.API_BASE_URL,
  ));
  return GetIt.instance<API>();
}();

///A service used to connect to Fuse's RPC server.
///The RPC server allows us to interact with the Fuse Network/Blockchain.
final Web3 fuseNetworkService = () {
  GetIt.instance.registerSingleton<Web3>(Web3(
    () async => true,
    url: Constants.FUSE_RPC_URL,
    networkId: Constants.FUSE_CHAIN_ID,
    defaultCommunityAddress: Constants.DEFAULT_COMMUNITY_ADDRESS,
  ));
  return GetIt.instance<Web3>();
}();

final Graph fuseGraphService = () {
  GetIt.instance.registerSingleton<Graph>(Graph(
    baseUrl: Constants.GRAPH_BASE_URL,
  ));
  return GetIt.instance<Graph>();
}();

///typedef used for the below function expression.
typedef ValueCallback<E> = E Function(E value);

///A private key retriever used so we can avoid importing wallet_core into relevant files.
ValueCallback<String> privateKeyRetrieverDelegate =
    (mnemonic) => Web3.privateKeyFromMnemonic(mnemonic);
