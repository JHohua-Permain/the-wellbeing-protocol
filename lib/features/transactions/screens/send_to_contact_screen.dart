import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/common/widgets/app_scaffold.dart';
import 'package:the_wellbeing_protocol/features/transactions/templates/send_to_template.dart';
import 'package:the_wellbeing_protocol/features/transactions/transaction_view_models.dart';

class SendToContactScreen extends StatelessWidget {
  final SendToContactViewModel vm;

  SendToContactScreen(this.vm);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Send to ${vm.contact.displayName}',
      body: SendToTemplate(
        tokenSymbol: vm.tokenSymbol,
        onSubmit: vm.submitSendAmount,
      ),
    );
  }
}
