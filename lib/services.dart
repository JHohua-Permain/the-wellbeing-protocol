import 'package:get_it/get_it.dart';
import 'package:the_wellbeing_protocol/constants.dart' as Constants;

// ignore: import_of_legacy_library_into_null_safe
import 'package:wallet_core/wallet_core.dart';

final GetIt getIt = GetIt.instance;
late final API fuseAPIService;
late final Web3 fuseNetworkService;
typedef ValueCallback<E> = E Function(E value);

///A private key retriever used so we can avoid importing wallet_core into relevant files.
ValueCallback<String> privateKeyRetrieverDelegate =
    (mnemonic) => Web3.privateKeyFromMnemonic(mnemonic);

void setup() {
  getIt.registerSingleton<Web3>(Web3(
    () async => true,
    url: Constants.FUSE_RPC_URL,
    networkId: Constants.FUSE_CHAIN_ID,
  ));
  getIt.registerSingleton<API>(API(
    base: Constants.API_BASE_URL,
  ));
  fuseNetworkService = getIt<Web3>();
  fuseAPIService = getIt<API>();
}