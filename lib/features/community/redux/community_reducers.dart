import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/features/community/redux/community_actions.dart';
import 'package:the_wellbeing_protocol/models/community.dart';
import 'package:the_wellbeing_protocol/models/token.dart';

final List<Reducer<Community>> Function() newCommunityReducers = () => [
      TypedReducer<Community, CompleteFetchingMembers>(fetchMembersReducer),
      TypedReducer<Community, SetCommunity>(setCommunityReducer),
    ];

Community fetchMembersReducer(Community state, CompleteFetchingMembers action) {
  return state.copyWith(members: action.members);
}

Community setCommunityReducer(Community state, SetCommunity action) {
  return state.copyWith(
    communityAddress: action.communityData['communityAddress'],
    homeToken: Token.fromJson(action.homeTokenData),
  );
}
