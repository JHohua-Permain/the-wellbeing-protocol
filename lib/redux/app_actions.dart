import 'package:redux/src/store.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/redux/actions/community_actions.dart';
import 'package:the_wellbeing_protocol/redux/actions/user_actions.dart';
import 'package:the_wellbeing_protocol/redux/app_redux.dart';
import 'package:the_wellbeing_protocol/services.dart';

class ClearData {
  const ClearData();
}

class PrepareUser extends AppAsyncAction {
  @override
  dynamic call(Store<AppState> store, AppServices services) {
    store.dispatch(createWallet());
    store.dispatch(fetchCommunity(
      services.fuseNetworkService.getDefaultCommunity(),
    ));
  }
}
