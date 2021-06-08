import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/features/community/community_view_models.dart';
import 'package:the_wellbeing_protocol/shared/widgets/app_scaffold.dart';
import 'package:the_wellbeing_protocol/shared/widgets/send_to_view.dart';

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
