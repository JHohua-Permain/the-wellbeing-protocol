import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/ui/view_models/wallet_view_models.dart';
import 'package:the_wellbeing_protocol/ui/widgets/app_scaffold.dart';
import 'package:the_wellbeing_protocol/ui/widgets/send_to_view.dart';

class SendToContactScreen extends StatelessWidget {
  final SendToContactViewModel vm;

  SendToContactScreen(this.vm);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Send to ${vm.contact.displayName}',
      body: SendToView(
        tokenSymbol: vm.tokenSymbol,
        onSubmit: vm.submitSendAmount,
      ),
    );
  }
}
