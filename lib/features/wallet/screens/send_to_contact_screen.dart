import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/features/wallet/wallet_view_models.dart';
import 'package:the_wellbeing_protocol/shared/widgets/app_scaffold.dart';
import 'package:the_wellbeing_protocol/shared/widgets/send_to_view.dart';

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
