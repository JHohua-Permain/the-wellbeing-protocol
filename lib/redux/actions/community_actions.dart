import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:the_wellbeing_protocol/generated/models/community_entity.dart';
import 'package:the_wellbeing_protocol/services.dart';

//******************************************************************************
//Mock/Experimental
final CommunityShop mockShop = CommunityShop(
  displayName: 'Fruit & Vegetable Co-op',
  walletAddress: '',
);

final List<CommunityMember> contributors = [
  CommunityMember(
      displayName: 'Deepa',
      communityFundContribution: 22,
      walletAddress: ''),
  CommunityMember(
      displayName: 'Deepa',
      communityFundContribution: 22,
      walletAddress: ''),
  CommunityMember(
      displayName: 'Deepa',
      communityFundContribution: 22,
      walletAddress: ''),
  CommunityMember(
      displayName: 'Deepa',
      communityFundContribution: 22,
      walletAddress: ''),
  CommunityMember(
      displayName: 'Deepa',
      communityFundContribution: 22,
      walletAddress: ''),
  CommunityMember(
      displayName: 'Deepa',
      communityFundContribution: 22,
      walletAddress: ''),
  CommunityMember(
      displayName: 'Deepa',
      communityFundContribution: 22,
      walletAddress: ''),
  CommunityMember(
      displayName: 'Deepa',
      communityFundContribution: 22,
      walletAddress: ''),
  CommunityMember(
      displayName: 'Deepa',
      communityFundContribution: 22,
      walletAddress: ''),
  CommunityMember(
      displayName: 'Deepa',
      communityFundContribution: 22,
      walletAddress: '')
];
//******************************************************************************

ThunkAction getCommunity(String communityAddress) => (Store store) async {
      var apiResp = await fuseAPIService.getCommunityData(communityAddress);
      Map<String, dynamic> communityData = apiResp as Map<String, dynamic>;

      var homeTokenAddress = communityData['homeTokenAddress'];
      var web3Resp = await fuseNetworkService.getTokenDetails(homeTokenAddress);
      var tokenData = web3Resp as Map<String, dynamic>;
      tokenData['address'] = homeTokenAddress;

      store.dispatch(SetCommunity(communityData, tokenData));
    };

//TODO: Implement proper functionality.
ThunkAction getMembers() => (Store store) async {
  store.dispatch(SetMembers(contributors));
};

//TODO: Implement proper functionality.
ThunkAction getShops() => (Store store) async {
  List<CommunityShop> shops = [];
  shops.add(mockShop);

  store.dispatch(SetShops(shops));
};

class SetCommunity {
  final Map<String, dynamic> communityData;
  final Map<String, dynamic> tokenData;

  SetCommunity(this.communityData, this.tokenData);
}

class SetMembers {
  List<CommunityEntity> members;

  SetMembers(this.members);
}

class SetShops {
  List<CommunityShop> shops;

  SetShops(this.shops);
}