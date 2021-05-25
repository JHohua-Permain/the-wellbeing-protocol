import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/models/community.dart';
import 'package:the_wellbeing_protocol/models/token.dart';
import 'package:the_wellbeing_protocol/redux/actions/community_actions.dart';

final Reducer<Community> communityReducer = combineReducers([
  TypedReducer<Community, SetCommunity>(setCommunityReducer),
  TypedReducer<Community, SetMembers>(setMembersReducer),
  TypedReducer<Community, SetShops>(setShopsReducer)
]);

Community setCommunityReducer(Community state, SetCommunity action) {
  return state.copyWith(
    communityAddress: action.communityData['communityAddress'],
    homeToken: Token.fromJson(action.homeTokenData),
  );
}

Community setMembersReducer(Community state, SetMembers action) {
  return state.copyWith(members: action.members);
}

Community setShopsReducer(Community state, SetShops action) {
  return state.copyWith(shops: action.shops);
}
