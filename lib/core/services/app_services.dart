import 'package:the_wellbeing_protocol/core/enums/auth_method.dart';
import 'package:the_wellbeing_protocol/core/services/fuse_api_service.dart';
import 'package:the_wellbeing_protocol/core/services/fuse_explorer_service.dart';
import 'package:the_wellbeing_protocol/core/services/fuse_network_service.dart';

class AppServices {
  // TODO: Move to a more appropriate place.
  final AuthMethod authMethod;

  final FuseAPIService fuseAPIService;
  final FuseNetworkService fuseNetworkService;
  final FuseExplorerService fuseExplorerService;

  AppServices(
    this.authMethod,
    this.fuseAPIService,
    this.fuseNetworkService,
    this.fuseExplorerService,
  );
}
