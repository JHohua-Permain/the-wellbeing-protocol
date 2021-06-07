import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/models/community.dart';
import 'package:the_wellbeing_protocol/models/user.dart';
import 'package:the_wellbeing_protocol/redux/common/common_actions.dart';
import 'package:the_wellbeing_protocol/redux/features/authentication/authentication_reducers.dart';
import 'package:the_wellbeing_protocol/redux/features/community/community_reducers.dart';
import 'package:the_wellbeing_protocol/redux/features/shop/shop_reducers.dart';
import 'package:the_wellbeing_protocol/redux/features/wallet/wallet_actions.dart';
import 'package:the_wellbeing_protocol/redux/features/wallet/wallet_reducers.dart';

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
