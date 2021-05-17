import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/generated/models/app_state.dart';
import 'package:the_wellbeing_protocol/redux/reducers/user_state_reducer.dart';

AppState appStateReducer(AppState previous, dynamic action) {
  return AppState(
    userState: userStateReducer(previous.userState, action),
  );
}