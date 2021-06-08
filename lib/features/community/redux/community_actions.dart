import 'package:the_wellbeing_protocol/core/models/community_entity.dart';

class CompleteFetchingMembers {
  final List<CommunityMember> members;
  CompleteFetchingMembers(this.members);
}

class FetchMembers {}

class SetCommunity {
  final Map<String, dynamic> communityData;
  final Map<String, dynamic> homeTokenData;

  SetCommunity(this.communityData, this.homeTokenData);
}
