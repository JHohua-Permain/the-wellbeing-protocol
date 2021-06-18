import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/features/wallet/wallet_view_models.dart';
import 'package:the_wellbeing_protocol/shared/widgets/app_circle_avatar.dart';
import 'package:the_wellbeing_protocol/shared/widgets/app_scaffold.dart';
import 'package:the_wellbeing_protocol/shared/widgets/common_button.dart';
import 'package:the_wellbeing_protocol/shared/widgets/currency_widget.dart';
import 'package:the_wellbeing_protocol/shared/widgets/review_transfer_template.dart';

class SendToContactReviewScreen extends StatelessWidget {
  final SendToContactReviewViewModel vm;

  SendToContactReviewScreen(this.vm);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Review Transfer',
      body: ReviewTransferTemplate(
        currencyWidget: CurrencyWidget(
          amount: vm.amount,
          tokenSymbol: vm.tokenSymbol,
        ),
        avatar: AppCircleAvatar(
          avatar: vm.contact.avatar,
        ),
        receiverInfo: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(vm.contact.displayName),
              Text(vm.contact.primaryContactNum!), // TODO: Change implementation.
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
