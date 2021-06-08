import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/core/models/community.dart';
import 'package:the_wellbeing_protocol/core/models/user.dart';
import 'package:the_wellbeing_protocol/core/state/app_state.dart';
import 'package:the_wellbeing_protocol/features/authentication/redux/authentication_reducers.dart';
import 'package:the_wellbeing_protocol/features/community/redux/community_reducers.dart';
import 'package:the_wellbeing_protocol/features/shop/redux/shop_reducers.dart';
import 'package:the_wellbeing_protocol/features/wallet/redux/wallet_actions.dart';
import 'package:the_wellbeing_protocol/features/wallet/redux/wallet_reducers.dart';
import 'package:the_wellbeing_protocol/redux/common/common_actions.dart';

final Reducer<Community> communityReducer = combineReducers([
  ...newCommunityReducers(),
  ...newShopReducers(),
]);

final Reducer<User> userReducer = combineReducers([
  ...newAuthenticationReducers(),
  ...newWalletReducers(),
]);

AppState appStateReducer(AppState state, dynamic action) {
  if (action is CompleteClearingData) {
    return AppState.initial();
  } else {
    return AppState(
      user: userReducer(state.user, action),
      community: communityReducer(state.community, action),
      isHandling: isHandlingReducer(state.isHandling, action),
    );
  }
}

bool isHandlingReducer(bool state, dynamic action) {
  if (action is BeginningAction) {
    return true;
  } else if (action is CompletingAction) {
    return false;
  } else {
    return state;
  }
}
