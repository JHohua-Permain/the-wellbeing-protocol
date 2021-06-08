import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/ui/view_models/community_view_models.dart';
import 'package:the_wellbeing_protocol/ui/widgets/app_scaffold.dart';
import 'package:the_wellbeing_protocol/ui/widgets/send_to_view.dart';

class SendToCommunityFundScreen extends StatelessWidget {
  final SendToCommunityFundViewModel vm;

  SendToCommunityFundScreen(this.vm);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Send to Community Fund',
      body: SendToView(
        tokenSymbol: vm.tokenSymbol,
        onSubmit: vm.submitSendAmount,
      ),
    );
  }
}
