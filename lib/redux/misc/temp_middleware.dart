import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/redux/features/wallet/wallet_actions.dart';
import 'package:the_wellbeing_protocol/redux/misc/data_wipe.dart';

dynamic tempMiddleware(
  Store<AppState> store,
  dynamic action,
  NextDispatcher next,
) {
  //TODO: Set Logout action to clear all user data from local storage.
  //TODO: Eventually implement a more standard user logout when a more concrete process for clearing user data is implemented.
  if (action is Logout) {
    store.dispatch(BeginDataWipe());
  }

  return next(action);
}
