import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/common/redux/common_actions.dart';
import 'package:the_wellbeing_protocol/core/states/app_state.dart';
import 'package:the_wellbeing_protocol/core/states/community.dart';
import 'package:the_wellbeing_protocol/core/states/user.dart';
import 'package:the_wellbeing_protocol/features/authentication/redux/authentication_reducers.dart';
import 'package:the_wellbeing_protocol/features/hub/redux/hub_actions.dart';
import 'package:the_wellbeing_protocol/features/hub/redux/hub_reducers.dart';

final Reducer<Community> communityReducer = combineReducers([
  ...newAuthCommunityReducers(),
  ...newHubCommunityReducers(),
]);

final Reducer<User> userReducer = combineReducers([
  ...newAuthUserReducers(),
  ...newHubUserReducers(),
]);

AppState appStateReducer(AppState state, dynamic action) {
  if (action is ClearData) {
    return AppState.initial();
  } else {
    return AppState(
      user: userReducer(state.user, action),
      community: communityReducer(state.community, action),
      authState: authStateReducer(state.authState, action),
      isHandling: isHandlingReducer(state.isHandling, action),
    );
  }
}

bool isHandlingReducer(bool state, dynamic action) {
  if (action is BeginAction) {
    return true;
  } else if (action is CompleteAction) {
    return false;
  } else {
    return state;
  }
}
