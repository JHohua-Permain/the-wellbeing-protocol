import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/generated/models/token.dart';
import 'package:the_wellbeing_protocol/generated/models/user_state.dart';
import 'package:the_wellbeing_protocol/redux/actions/user_actions.dart';

final Reducer<UserState> userStateReducer = combineReducers([
  TypedReducer<UserState, LoginSuccess>(_loginSuccessReducer),
  TypedReducer<UserState, RestoreWalletSuccess>(_restoreWalletReducer),
  TypedReducer<UserState, SetCurrentToken>(_setCurrentTokenReducer),
  TypedReducer<UserState, SetWallet>(_setWalletReducer),
]);

UserState _loginSuccessReducer(UserState previous, LoginSuccess action) {
  return previous.copyWith
      .call(displayName: action.displayName,authenticated: true, phoneNumber: action.phoneNumber,);
}

UserState _restoreWalletReducer(
  UserState previous,
  RestoreWalletSuccess action,
) {
  return previous.copyWith.call(accountAddress: action.accountAddress);
}

UserState _setCurrentTokenReducer(UserState previous, SetCurrentToken action) {
  return previous.copyWith.call(currentToken: Token.fromJson(action.tokenJson));
}

UserState _setWalletReducer(UserState previous, SetWallet action) {
  return previous.copyWith.call(walletAddress: action.walletAddress);
}