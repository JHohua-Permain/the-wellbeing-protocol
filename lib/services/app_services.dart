import 'package:the_wellbeing_protocol/constants.dart' as Constants;
import 'package:the_wellbeing_protocol/models/authentication_method.dart';
import 'package:the_wellbeing_protocol/services/fuse_api_service.dart';
import 'package:the_wellbeing_protocol/services/fuse_network_service.dart';
import 'package:the_wellbeing_protocol/variables.dart' as Variables;

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
      Variables.AUTH_METHOD,
      FuseAPIService(
        base: Constants.FUSE_STUDIO_API_BASE_URL,
      ),
      FuseNetworkService(
        url: Constants.FUSE_NETWORK_RPC_URL,
        networkId: Constants.FUSE_NETWORK_CHAIN_ID,
        defaultCommunityAddress: Variables.DEFAULT_COMMUNITY_ADDRESS,
      ),
    );
  }
}
