import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/screens_redux/community_view_models.dart';
import 'package:the_wellbeing_protocol/widgets/app_circle_avatar.dart';
import 'package:the_wellbeing_protocol/widgets/app_scaffold.dart';
import 'package:the_wellbeing_protocol/widgets/common_button.dart';
import 'package:the_wellbeing_protocol/widgets/currency_widget.dart';

class CommunityFundScreen extends StatelessWidget {
  final CommunityFundViewModel vm;

  CommunityFundScreen(this.vm);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Community Fund',
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
              child: Center(child: Text('Total Contributed')),
            ),
            CurrencyWidget(
              amount: vm.communityFund,
              tokenSymbol: vm.tokenSymbol,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: CommonButton(
                label: 'Contribute',
                onPressed: vm.pushContributeScreen,
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
                itemCount: vm.contributors.length,
                itemBuilder: (context, index) {
                  String contributionStr = vm
                      .contributors[index].communityFundContribution
                      .toString();
                  String contribution =
                      '$contributionStr ${vm.tokenSymbol.toLowerCase()}';
                  //TODO: Implement.
                  VoidCallback pushContributePage = () {};

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(vm.contributors[index].displayName),
                        trailing: Text(contribution),
                        leading: AppCircleAvatar(
                          avatar: vm.contributors[index].avatar,
                        ),
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
      ),
    );
  }
}
