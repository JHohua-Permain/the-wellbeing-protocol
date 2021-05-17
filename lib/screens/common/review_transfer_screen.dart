import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:the_wellbeing_protocol/generated/models/community_entity.dart';
import 'package:the_wellbeing_protocol/widgets/currency_widget.dart';
import 'package:the_wellbeing_protocol/widgets/app_circle_avatar.dart';
import 'package:the_wellbeing_protocol/widgets/common_button.dart';
import 'package:the_wellbeing_protocol/widgets/template_screen.dart';

//TODO: Un-hardcode.
const String tokenSymbol = 'CAN';

class ReviewTransferScreen extends StatelessWidget {
  final String confirmAmount;
  final CommunityEntity entity;
  //final String passedButtonName;
  //final Row itemRow;
  //final Function buttonFunction;
  //Navigator.of(context, rootNavigator: true).pushNamed('/send/success');

  ReviewTransferScreen({
    required this.confirmAmount,
    required this.entity,
  });

  void _pushTransactionPendingScreen(BuildContext context) {
    AutoRouter.of(context).pushNamed('/transaction-pending');
  }

  @override
  Widget build(BuildContext context) {
    String displayName = entity.displayName;
    String primaryContactNumber = entity.primaryContactNumber ?? '';

    return TemplateScreen(
      title: 'Review Transfer',
      body: Container(
        child: Column(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 70),
              child: Text('Amount'),
            ),),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CurrencyWidget(amount: confirmAmount, tokenSymbol: tokenSymbol),
                ],
              ),
            ),
            const Divider(
              thickness: 1.5,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppCircleAvatar(avatar: entity.avatar),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(displayName),
                          Text(primaryContactNumber),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 1.5,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CommonButton(
                label: 'Send',
                onPressed: () => _pushTransactionPendingScreen(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}