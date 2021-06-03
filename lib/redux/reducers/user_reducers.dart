import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/models/authentication_state.dart';
import 'package:the_wellbeing_protocol/models/user.dart';
import 'package:the_wellbeing_protocol/redux/actions/user_actions.dart';

final Reducer<User> userReducer = combineReducers([
  TypedReducer<User, Authenticate>(authenticatedReducer),
  TypedReducer<User, CompleteLogin>(completeLoginReducer),
  TypedReducer<User, CompleteVerification>(completeVerificationReducer),
  TypedReducer<User, SetAccountAddress>(setAccountAddressReducer),
  TypedReducer<User, SetContacts>(setContactsReducer),
  TypedReducer<User, SetDisplayName>(setDisplayNameReducer),
  TypedReducer<User, SetWallet>(setWalletReducer),
]);

User authenticatedReducer(User state, Authenticate action) {
  return state.copyWith(
    authenticationState: AuthenticationState.authenticated(),
  );
}

User completeLoginReducer(User state, CompleteLogin action) {
  return state.copyWith(
    authenticationState: AuthenticationState.awaitingVerification(
      action.phoneNum,
      action.verificationId ?? '',
    ),
  );
}

User completeVerificationReducer(User state, CompleteVerification action) {
  return state.copyWith(
    primaryContactNum: action.phoneNum,
  );
}

User setAccountAddressReducer(User state, SetAccountAddress action) {
  return state.copyWith(
    accountAddress: action.accountAddress,
  );
}

User setContactsReducer(User state, SetContacts action) {
  return state.copyWith(
    contacts: action.contacts,
  );
}

User setDisplayNameReducer(User state, SetDisplayName action) {
  return state.copyWith(
    displayName: action.displayName,
  );
}

User setWalletReducer(User state, SetWallet action) {
  return state.copyWith(
    walletAddress: action.walletAddress,
  );
}
