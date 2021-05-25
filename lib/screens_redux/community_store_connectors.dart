import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/redux/actions/community_actions.dart';
import 'package:the_wellbeing_protocol/screens/community/community_fund_screen.dart';
import 'package:the_wellbeing_protocol/screens_redux/community_view_models.dart';

class CommunityFundConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CommunityFundViewModel>(
      distinct: true,
      builder: (context, vm) => CommunityFundScreen(vm),
      converter: (store) => CommunityFundViewModel(
        communityFund: store.state.community.communityFund,
        tokenSymbol: store.state.community.homeToken?.symbol ?? '',
        contributors: store.state.community.members
            .where((member) => member.communityFundContribution > 0)
            .toList(),
        pushContributeScreen: () {
          //TODO: Implement.
        },
      ),
      onInit: (store) {
        store.dispatch(fetchMembers());
      },
    );
  }
}
