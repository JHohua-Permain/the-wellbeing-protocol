import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/common/widgets/app_scaffold.dart';
import 'package:the_wellbeing_protocol/features/transactions/templates/send_to_template.dart';
import 'package:the_wellbeing_protocol/features/transactions/transaction_view_models.dart';

class SendToCommunityFundScreen extends StatelessWidget {
  final SendToCommunityFundViewModel vm;

  SendToCommunityFundScreen(this.vm);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Send to Community Fund',
      body: SendToTemplate(
        tokenSymbol: vm.tokenSymbol,
        onSubmit: vm.submitSendAmount,
      ),
    );
  }
}
