import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/features/community/community_view_models.dart';
import 'package:the_wellbeing_protocol/shared/widgets/app_circle_avatar.dart';
import 'package:the_wellbeing_protocol/shared/widgets/app_scaffold.dart';
import 'package:the_wellbeing_protocol/shared/widgets/common_button.dart';
import 'package:the_wellbeing_protocol/shared/widgets/currency_widget.dart';
import 'package:the_wellbeing_protocol/shared/widgets/review_transfer_template.dart';

class SendToCommunityFundReviewScreen extends StatelessWidget {
  final SendToCommunityFundReviewViewModel vm;

  SendToCommunityFundReviewScreen(this.vm);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Review Transfer',
      body: ReviewTransferTemplate(
        currencyWidget: CurrencyWidget(
          amount: vm.amount,
          tokenSymbol: vm.tokenSymbol,
        ),
        // Originally used to wrap avatar and receiverInfo.
        // decoration: BoxDecoration(
        //   shape: BoxShape.circle,
        // ),
        avatar: AppCircleAvatar(), // TODO: Remove?
        receiverInfo: Padding(
          // TODO: Remove?
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(''),
            ],
          ),
        ),
        confirmButton: CommonButton(
          label: 'Send',
          onPressed: vm.confirmTransfer,
        ),
      ),
    );
  }
}
