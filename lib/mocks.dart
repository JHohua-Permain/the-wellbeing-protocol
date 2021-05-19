import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/constants.dart' as Constants;
import 'package:the_wellbeing_protocol/generated/models/app_state.dart';
import 'package:the_wellbeing_protocol/generated/models/community_entity.dart';
import 'package:the_wellbeing_protocol/redux/actions/community_actions.dart';
import 'package:the_wellbeing_protocol/redux/actions/user_actions.dart';

//Variables needed and used by the app in the absence of a working local storage solution.
const String name = '';
const String phoneNum = '';
const String mnemonic = '';

Future<void> dummyAuthentication(Store<AppState> store) async {
  await store.dispatch(restoreWallet(mnemonic));
  await store.dispatch(
    login(name, phoneNum, store.state.userState.accountAddress),
  );
  await store.dispatch(getWallet());
}

Future<void> dummyLoadCommunity(Store<AppState> store) async {
  await store.dispatch(getCommunity(Constants.DEFAULT_COMMUNITY_ADDRESS));
}

const String pool = '225';
const String tokenSymbol = 'CAN';

final CommunityMember communityFund = CommunityMember(
  displayName: 'Community Fund',
  walletAddress: '',
);
