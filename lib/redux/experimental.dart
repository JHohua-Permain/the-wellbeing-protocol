import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/features/authentication/redux/authentication_actions.dart';
import 'package:the_wellbeing_protocol/features/community/redux/community_actions.dart';
import 'package:the_wellbeing_protocol/features/wallet/redux/wallet_actions.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/services/app_services.dart';

Future<dynamic> fetchHomeTokenData(
  AppServices services,
  dynamic communityData,
) async {
  final homeTokenAddress = communityData['homeTokenAddress'];
  final homeTokenData =
      await services.fuseNetworkService.getTokenDetails(homeTokenAddress);
  homeTokenData['address'] = homeTokenAddress;
  return homeTokenData;
}

Future<void> handlePreparingUser(
  Store<AppState> store,
  AppServices services,
) async {
  String communityAddress = services.fuseNetworkService.getDefaultCommunity();

  dynamic walletData = await services.fuseAPIService
      .createWallet(communityAddress: communityAddress);
  // await joinCommunity(services, walletData, communityAddress);
  dynamic communityData =
      await services.fuseAPIService.getCommunityData(communityAddress);
  dynamic homeTokenData = await fetchHomeTokenData(services, communityData);

  store.dispatch(SetWallet(walletData['walletAddress']));
  store.dispatch(SetCommunity(communityData, homeTokenData));
}

Future<void> handleUpdatingUser(
  Store<AppState> store,
  AppServices services,
) async {
  String communityAddress = services.fuseNetworkService.getDefaultCommunity();

  dynamic walletData = await services.fuseAPIService.getWallet();
  dynamic communityData =
      await services.fuseAPIService.getCommunityData(communityAddress);
  dynamic homeTokenData = await fetchHomeTokenData(services, communityData);

  store.dispatch(SetWallet(walletData['walletAddress']));
  store.dispatch(SetCommunity(communityData, homeTokenData));
}

Future<dynamic> joinCommunity(
  AppServices services,
  dynamic walletData,
  String communityAddress,
) async {
  return services.fuseAPIService.joinCommunity(
    services.fuseNetworkService,
    walletData['walletAddress'],
    communityAddress,
  );
}

class CommonMiddleware implements MiddlewareClass<AppState> {
  final AppServices services;

  CommonMiddleware(this.services);

  @override
  call(Store<AppState> store, action, NextDispatcher next) {
    if (action is CompleteVerification) {
      handlePreparingUser(store, services).then((_) => next(action));
    } else if (action is CompleteAuthentication) {
      handleUpdatingUser(store, services).then((_) => next(action));
    } else {
      return next(action);
    }
  }
}
