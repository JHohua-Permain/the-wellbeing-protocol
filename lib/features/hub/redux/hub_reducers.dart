import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/core/states/community.dart';
import 'package:the_wellbeing_protocol/core/states/user.dart';
import 'package:the_wellbeing_protocol/features/hub/redux/hub_actions.dart';

List<Reducer<Community>> newHubCommunityReducers() {
  return [
    TypedReducer<Community, SetCommunityAddress>((state, action) {
      return state.copyWith(communityAddress: action.communityAddress);
    }),
    TypedReducer<Community, SetHomeToken>((state, action) {
      return state.copyWith(homeToken: action.homeToken);
    }),
    TypedReducer<Community, SetMembers>((state, action) {
      return state.copyWith(members: action.members);
    }),
    TypedReducer<Community, SetShops>((state, action) {
      return state.copyWith(shops: action.shops);
    }),
  ];
}

List<Reducer<User>> newHubUserReducers() {
  return [
    TypedReducer<User, SetContacts>((state, action) {
      return state.copyWith(contacts: action.contacts);
    }),
    TypedReducer<User, SetDisplayName>((state, action) {
      return state.copyWith(displayName: action.displayName);
    }),
    TypedReducer<User, SetTransfers>((state, action) {
      return state.copyWith(transfers: action.transfers);
    }),
    TypedReducer<User, SetWalletAddress>((state, action) {
      return state.copyWith(walletAddress: action.walletAddress);
    }),
  ];
}
