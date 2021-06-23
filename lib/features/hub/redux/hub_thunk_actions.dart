import 'package:the_wellbeing_protocol/common/redux/common_utils.dart';
import 'package:the_wellbeing_protocol/features/hub/redux/hub_actions.dart';

AppThunkAction changeDisplayName(String displayName) {
  return (store, services) async {
    await services.fuseAPIService.updateDisplayName(
      store.state.user.walletAddress!,
      displayName,
    );
    return store.dispatch(SetDisplayName(displayName));
  };
}

// AppThunkAction fetchTokenBalances() {
//   return (store, services) async {
//     String walletAddress = store.state.user.walletAddress!;
//     String tokenAddress = store.state.community.homeToken!.address;
//     var web3 = services.fuseNetworkService;
//
//     dynamic homeTokenBalanceData = await web3.getTokenBalance(
//       tokenAddress,
//       address: walletAddress,
//     );
//     String homeTokenBalance = homeTokenBalanceData.toString();
//     Map<String, String> tokenBalances = {tokenAddress: homeTokenBalance};
//
//     store.dispatch(SetTokenBalances(tokenBalances));
//   };
// }

// AppThunkAction fetchTokenBalance(String tokenAddress) {
//   return (store, services) async {
//     final tokenBalanceData = await services.fuseNetworkService.getTokenBalance(
//       tokenAddress,
//       address: store.state.user.accountAddress,
//     );
//     // TODO: Set data.
//   };
// }
