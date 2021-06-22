import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/common/widgets/app_circle_avatar.dart';
import 'package:the_wellbeing_protocol/common/widgets/app_scaffold.dart';
import 'package:the_wellbeing_protocol/common/widgets/common_button.dart';
import 'package:the_wellbeing_protocol/common/widgets/currency_widget.dart';
import 'package:the_wellbeing_protocol/features/transactions/templates/review_transfer_template.dart';
import 'package:the_wellbeing_protocol/features/transactions/transaction_view_models.dart';

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
        avatarWidget: AppCircleAvatar(), // TODO: Remove?
        receiverInfoWidget: Padding(
          // TODO: Remove?
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Community Fund'),
            ],
          ),
        ),
        confirmWidget: CommonButton(
          label: 'Send',
          onPressed: vm.confirmTransfer,
        ),
      ),
    );
  }
}
