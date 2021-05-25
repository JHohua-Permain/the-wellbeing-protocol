import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/models/authentication_state.dart';
import 'package:the_wellbeing_protocol/models/user.dart';
import 'package:the_wellbeing_protocol/redux/actions/user_actions.dart';
import 'package:the_wellbeing_protocol/redux/actions_ui/auth_actions.dart';

final Reducer<User> userReducer = combineReducers([
  TypedReducer<User, CompleteRestore>(completeRestoreReducer),
  TypedReducer<User, CompleteVerification>(completeVerificationReducer),
  TypedReducer<User, SetContacts>(setContactsReducer),
  TypedReducer<User, SetWallet>(setWalletReducer),
  TypedReducer<User, StartVerification>(startVerificationReducer),
]);

User completeRestoreReducer(User state, CompleteRestore action) {
  return state.copyWith(
    accountAddress: action.accountAddress,
  );
}

User completeVerificationReducer(User state, CompleteVerification action) {
  return state.copyWith(
    primaryContactNum: action.phoneNum,
    authenticationState: AuthenticationState.authenticated(),
  );
}

User setContactsReducer(User state, SetContacts action) {
  return state.copyWith(
    contacts: action.contacts,
  );
}

User setWalletReducer(User state, SetWallet action) {
  return state.copyWith(
    walletAddress: action.walletAddress,
  );
}

User startVerificationReducer(User state, StartVerification action) {
  return state.copyWith(
    authenticationState: AuthenticationState.awaitingVerification(
      action.phoneNum,
      action.verificationCode,
    ),
  );
}
