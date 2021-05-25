import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/redux/app_actions.dart';
import 'package:the_wellbeing_protocol/redux/reducers/community_reducers.dart';
import 'package:the_wellbeing_protocol/redux/reducers/user_reducers.dart';

AppState appStateReducer(AppState state, dynamic action) {
  if (action is ClearData) {
    return AppState.initial();
  }
  return AppState(
    user: userReducer(state.user, action),
    community: communityReducer(state.community, action),
  );
}
