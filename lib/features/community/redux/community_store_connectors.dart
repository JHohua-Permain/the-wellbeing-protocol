import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/core/state/app_state.dart';
import 'package:the_wellbeing_protocol/features/community/community_view_models.dart';
import 'package:the_wellbeing_protocol/features/community/redux/community_actions.dart';
import 'package:the_wellbeing_protocol/features/community/screens/community_fund_screen.dart';
import 'package:the_wellbeing_protocol/features/community/screens/send_to_community_fund_review_screen.dart';
import 'package:the_wellbeing_protocol/features/community/screens/send_to_community_fund_screen.dart';
import 'package:the_wellbeing_protocol/routing/app_router.gr.dart';

class CommunityFundConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CommunityFundViewModel>(
      distinct: true,
      builder: (context, vm) => CommunityFundScreen(vm),
      converter: (store) => CommunityFundViewModel(
        communityFund: store.state.community.communityFund,
        tokenSymbol: store.state.community.homeToken!.symbol,
        //TODO: Change from displaying each members total contribution, to each single contribution made.
        contributors: store.state.community.members
            .where((member) => member.communityFundContribution > 0)
            .toList(),
        pushContributeScreen: () {
          context.router.navigateNamed('community/fund/contribute');
        },
      ),
      onInit: (store) {
        store.dispatch(FetchMembers());
      },
    );
  }
}

class SendToCommunityFundConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SendToCommunityFundViewModel>(
      distinct: true,
      builder: (context, vm) => SendToCommunityFundScreen(vm),
      converter: (store) => SendToCommunityFundViewModel(
        tokenSymbol: store.state.community.homeToken!.symbol,
        submitSendAmount: (amount) {
          context.router
              .navigate(SendToCommunityFundReviewPage(amount: amount));
        },
      ),
    );
  }
}

class SendToCommunityFundReviewConnector extends StatelessWidget {
  final String amount;

  SendToCommunityFundReviewConnector(this.amount);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SendToCommunityFundReviewViewModel>(
      distinct: true,
      builder: (context, vm) => SendToCommunityFundReviewScreen(vm),
      converter: (store) => SendToCommunityFundReviewViewModel(
        amount: amount,
        tokenSymbol: store.state.community.homeToken!.symbol,
        confirmTransfer: () {
          // TODO
        },
      ),
    );
  }
}
