import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/generated/models/app_state.dart';
import 'package:the_wellbeing_protocol/generated/models/community_entity.dart';
import 'package:the_wellbeing_protocol/redux/actions/community_actions.dart';
import 'package:the_wellbeing_protocol/widgets/app_circle_avatar.dart';
import 'package:the_wellbeing_protocol/widgets/common_button.dart';
import 'package:the_wellbeing_protocol/widgets/currency_widget.dart';
import 'package:the_wellbeing_protocol/widgets/template_screen.dart';

class CommunityFundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreBuilder<AppState>(
      onInit: (store) {
        store.dispatch(getMembers());
      },
      builder: (context, store) {
        return TemplateScreen(
          title: 'Community Fund',
          body: _buildBody(context, store),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, Store<AppState> store) {
    var communityFund = store.state.community.communityFund;
    var tokenSymbol = store.state.community.homeToken.symbol;
    var tokenSymbolInitial = tokenSymbol[0].toLowerCase();
    List<CommunityEntity> members = store.state.community.members;
    List<CommunityEntity> contributors = members.where((element) {
      return element.communityFundContribution > 0;
    }).toList();
    //TODO: Implement.
    VoidCallback pushContributeScreen = () {};

    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
            child: Center(child: Text('Total Contributed')),
          ),
          CurrencyWidget(amount: communityFund, tokenSymbol: tokenSymbol),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
            child: CommonButton(
              label: 'Contribute',
              onPressed: pushContributeScreen,
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
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: contributors.length,
              itemBuilder: (context, index) {
                CommunityEntity contributor = contributors[index];
                String contributionStr = contributor.communityFundContribution.toString();
                String contribution = '$contributionStr $tokenSymbolInitial';
                //TODO: Implement.
                VoidCallback pushContributePage = () {};

                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(contributor.displayName),
                      trailing: Text(contribution),
                      leading: AppCircleAvatar(avatar: contributor.avatar),
                      onTap: pushContributePage,
                    ),
                  ],
                );
              },
              separatorBuilder: (context, int index) {
                return Divider(
                  height: 10,
                  thickness: 1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
