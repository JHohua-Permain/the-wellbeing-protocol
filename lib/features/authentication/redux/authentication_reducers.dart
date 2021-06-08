import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/core/models/user.dart';
import 'package:the_wellbeing_protocol/features/authentication/redux/authentication_actions.dart';

final List<Reducer<User>> Function() newAuthenticationReducers = () => [
      TypedReducer<User, CompleteAuthentication>(completeAuthenticationReducer),
      TypedReducer<User, CompleteLogin>(completeLoginReducer),
      TypedReducer<User, CompleteRestore>(completeRestoreReducer),
      TypedReducer<User, CompleteVerification>(completeVerificationReducer),
      TypedReducer<User, FailedAuthentication>(failedAuthenticationReducer),
    ];

User completeAuthenticationReducer(User state, CompleteAuthentication action) {
  return state.copyWith(
    authenticationState: action.authenticationState,
  );
}

User completeLoginReducer(User state, CompleteLogin action) {
  return state.copyWith(
    authenticationState: action.authenticationState,
  );
}

User completeRestoreReducer(User state, CompleteRestore action) {
  return state.copyWith(
    authenticationState: action.authenticationState,
  );
}

User completeVerificationReducer(User state, CompleteVerification action) {
  return state.copyWith(
    accountAddress: action.accountAddress,
    primaryContactNum: action.primaryContactNum,
    authenticationState: action.authenticationState,
  );
}

User failedAuthenticationReducer(User state, FailedAuthentication action) {
  return state.copyWith(
    authenticationState: action.authenticationState,
  );
}
