import 'package:the_wellbeing_protocol/common/redux/common_utils.dart';
import 'package:the_wellbeing_protocol/features/hub/redux/hub_actions.dart';

AppThunkAction changeDisplayName(String displayName) {
  return (store, services) async {
    await services.fuseAPIService.updateDisplayName(
      store.state.user.accountAddress!,
      displayName,
    );
    return store.dispatch(SetDisplayName(displayName));
  };
}

// AppThunkAction fetchTokenBalance(String tokenAddress) {
//   return (store, services) async {
//     final tokenBalanceData = await services.fuseNetworkService.getTokenBalance(
//       tokenAddress,
//       address: store.state.user.accountAddress,
//     );
//     // TODO: Set data.
//   };
// }
