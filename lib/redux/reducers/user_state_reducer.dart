import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/generated/models/token.dart';
import 'package:the_wellbeing_protocol/generated/models/user_state.dart';
import 'package:the_wellbeing_protocol/redux/actions/user_actions.dart';

final Reducer<UserState> userStateReducer = combineReducers([
  TypedReducer<UserState, GetContactsSuccess>(_getContactsSuccessReducer),
  TypedReducer<UserState, LoginSuccess>(_loginSuccessReducer),
  TypedReducer<UserState, RestoreWalletSuccess>(_restoreWalletReducer),
  TypedReducer<UserState, SetToken>(_setCurrentTokenReducer),
  TypedReducer<UserState, SetWallet>(_setWalletReducer),
]);

UserState _getContactsSuccessReducer(
  UserState previous,
  GetContactsSuccess action,
) {
  return previous.copyWith.call(contacts: action.contacts);
}

UserState _loginSuccessReducer(UserState previous, LoginSuccess action) {
  return previous.copyWith.call(
    displayName: action.displayName,
    phoneNumber: action.phoneNumber,
    authenticated: true,
  );
}

//TODO: Store mnemonic and private key locally.
UserState _restoreWalletReducer(
  UserState previous,
  RestoreWalletSuccess action,
) {
  return previous.copyWith.call(accountAddress: action.accountAddress);
}

UserState _setCurrentTokenReducer(UserState previous, SetToken action) {
  return previous.copyWith.call(currentToken: Token.fromJson(action.tokenData));
}

UserState _setWalletReducer(UserState previous, SetWallet action) {
  return previous.copyWith.call(walletAddress: action.walletAddress);
}
