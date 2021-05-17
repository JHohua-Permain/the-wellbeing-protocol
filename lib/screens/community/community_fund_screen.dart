import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:the_wellbeing_protocol/generated/models/community_entity.dart';
import 'package:the_wellbeing_protocol/generated/app_router.gr.dart';

import 'package:the_wellbeing_protocol/widgets/currency_widget.dart';
import 'package:the_wellbeing_protocol/widgets/app_list_view.dart';
import 'package:the_wellbeing_protocol/widgets/common_button.dart';
import 'package:the_wellbeing_protocol/widgets/template_screen.dart';

//TODO

//******************************************************************************
// Mock/Experimental Values
//******************************************************************************

const String pool = '225';
const String tokenSymbol = 'CAN';
final CommunityMember communityFund = CommunityMember(displayName: 'Community Fund', walletAddress: '');

final List<CommunityMember> contributors = [
  CommunityMember(displayName: 'Deepa', communityFundContribution: '22 c', walletAddress: ''),
  CommunityMember(displayName: 'Deepa', communityFundContribution: '22 c', walletAddress: ''),
  CommunityMember(displayName: 'Deepa', communityFundContribution: '22 c', walletAddress: ''),
  CommunityMember(displayName: 'Deepa', communityFundContribution: '22 c', walletAddress: ''),
  CommunityMember(displayName: 'Deepa', communityFundContribution: '22 c', walletAddress: ''),
  CommunityMember(displayName: 'Deepa', communityFundContribution: '22 c', walletAddress: ''),
  CommunityMember(displayName: 'Deepa', communityFundContribution: '22 c', walletAddress: ''),
  CommunityMember(displayName: 'Deepa', communityFundContribution: '22 c', walletAddress: ''),
  CommunityMember(displayName: 'Deepa', communityFundContribution: '22 c', walletAddress: ''),
  CommunityMember(displayName: 'Deepa', communityFundContribution: '22 c', walletAddress: '')
];

//******************************************************************************
// End
//******************************************************************************

class CommunityFundScreen extends StatelessWidget {

  void _pushSendScreen(BuildContext context) {
    AutoRouter.of(context).push(SendPage(entity: communityFund));
  }

  @override
  Widget build(BuildContext context) {
    return TemplateScreen(
      title: 'Community Fund',
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
              child: Center(child: Text('Total Contributed')),
            ),
            CurrencyWidget(amount: pool, tokenSymbol: tokenSymbol),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: CommonButton(
                label: 'Contribute',
                onPressed: () => _pushSendScreen(context),
              ),
            ),
            Divider(
              height: 10,
              thickness: 1,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 300, 10),
              child: Text(
                'Contributors',
                //textAlign: TextAlign.left,
              ),
            ),
            AppListView(
                entityList: contributors,
                trailingWidgetBuilder: (CommunityMember entity) {
                  var trailingText = entity.communityFundContribution ?? '';
                  return Text(trailingText);
                },
            )
          ],
        ),
      ),
    );
  }
}