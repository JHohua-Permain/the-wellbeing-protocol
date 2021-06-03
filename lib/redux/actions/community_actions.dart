import 'package:the_wellbeing_protocol/models/community_entity.dart';
import 'package:the_wellbeing_protocol/redux/app_redux.dart';

AppThunkAction fetchCommunity(String communityAddress) {
  return (store, services) async {
    final communityData =
        await services.fuseAPIService.getCommunityData(communityAddress);

    final homeTokenAddress = communityData['homeTokenAddress'];

    final homeTokenData =
        await services.fuseNetworkService.getTokenDetails(homeTokenAddress);

    homeTokenData['address'] = homeTokenAddress;

    await store.dispatch(SetCommunity(communityData, homeTokenData));
  };
}

class SetCommunity {
  final Map<String, dynamic> communityData;
  final Map<String, dynamic> homeTokenData;

  const SetCommunity(this.communityData, this.homeTokenData);
}

class SetMembers {
  final List<CommunityMember> members;

  const SetMembers(this.members);
}

class SetShops {
  final List<CommunityShop> shops;

  const SetShops(this.shops);
}
