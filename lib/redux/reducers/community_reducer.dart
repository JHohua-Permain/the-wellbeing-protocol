import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/generated/models/community.dart';
import 'package:the_wellbeing_protocol/generated/models/token.dart';
import 'package:the_wellbeing_protocol/redux/actions/community_actions.dart';

final Reducer<Community> communityReducer = combineReducers([
  TypedReducer<Community, SetCommunity>(_setCommunityReducer),
  TypedReducer<Community, SetMembers>(_setMembersReducer),
  TypedReducer<Community, SetShops>(_setShopsReducer)
]);

Community _setCommunityReducer(Community previous, SetCommunity action) {
  return previous.copyWith.call(
    communityAddress: action.communityData['communityAddress'],
    homeToken: Token.fromJson(action.tokenData),
  );
}

Community _setMembersReducer(Community previous, SetMembers action) {
  return previous.copyWith.call(members: action.members);
}

Community _setShopsReducer(Community previous, SetShops action) {
  return previous.copyWith.call(shops: action.shops);
}