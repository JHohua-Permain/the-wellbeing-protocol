import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/core/states/auth_state.dart';
import 'package:the_wellbeing_protocol/core/states/community.dart';
import 'package:the_wellbeing_protocol/core/states/user.dart';
import 'package:the_wellbeing_protocol/features/authentication/redux/authentication_actions.dart';

AuthState authStateReducer(AuthState state, dynamic action) {
  if (action is UpdateAuthState) {
    return action.authState;
  } else {
    return state;
  }
}

List<Reducer<Community>> newAuthCommunityReducers() {
  return [
    TypedReducer<Community, SetCommunityAddress>((state, action) {
      return state.copyWith(communityAddress: action.communityAddress);
    }),
    TypedReducer<Community, SetCommunityHomeToken>((state, action) {
      return state.copyWith(homeToken: action.homeToken);
    }),
  ];
}

List<Reducer<User>> newAuthUserReducers() {
  return [
    TypedReducer<User, SetUserAccountAddress>((state, action) {
      return state.copyWith(accountAddress: action.accountAddress);
    }),
    TypedReducer<User, SetUserDisplayName>((state, action) {
      return state.copyWith(displayName: action.displayName);
    }),
    TypedReducer<User, SetUserJwt>((state, action) {
      return state.copyWith(jwt: action.jwt);
    }),
    TypedReducer<User, SetUserMnemonic>((state, action) {
      return state.copyWith(mnemonic: action.mnemonic);
    }),
    TypedReducer<User, SetUserPrimaryContactNum>((state, action) {
      return state.copyWith(primaryContactNum: action.primaryContactNum);
    }),
    TypedReducer<User, SetUserWalletAddress>((state, action) {
      return state.copyWith(walletAddress: action.walletAddress);
    }),
  ];
}
