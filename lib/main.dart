import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/app.dart';
import 'package:the_wellbeing_protocol/core/services/app_services.dart';
import 'package:the_wellbeing_protocol/core/services/fuse_api_service.dart';
import 'package:the_wellbeing_protocol/core/services/fuse_network_service.dart';
import 'package:the_wellbeing_protocol/core/states/app_state.dart';
import 'package:the_wellbeing_protocol/redux/app_store.dart';

import 'app_themes.dart' as Themes;
import 'constants.dart' as Constants;
import 'variables.dart' as Variables;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AppServices services = AppServices(
    Variables.AUTH_METHOD,
    FuseAPIService(
      base: Constants.FUSE_STUDIO_API_BASE_URL,
    ),
    FuseNetworkService(
      url: Constants.FUSE_NETWORK_RPC_URL,
      networkId: Constants.FUSE_NETWORK_CHAIN_ID,
      defaultCommunityAddress: Variables.DEFAULT_COMMUNITY_ADDRESS,
      communityManagerAddress: Variables.DEFAULT_COMMUNITY_MANAGER_ADDRESS,
    ),
  );

  Store<AppState> store = await initAppStore(
    services,
    Variables.USE_MOCKS,
    Variables.CLEAR_INIT,
  );

  await Firebase.initializeApp();
  runApp(MyApp(Constants.APP_NAME, Themes.createAppTheme(), store));
}
