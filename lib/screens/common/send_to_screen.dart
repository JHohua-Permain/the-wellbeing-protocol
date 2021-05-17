import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:the_wellbeing_protocol/widgets/app_circle_avatar.dart';
import 'package:the_wellbeing_protocol/widgets/common_button.dart';
import 'package:the_wellbeing_protocol/widgets/app_numeric_keyboard.dart';
import 'package:the_wellbeing_protocol/widgets/template_screen.dart';
import 'package:the_wellbeing_protocol/generated/app_router.gr.dart';
import 'package:the_wellbeing_protocol/generated/models/community_entity.dart';

//TODO: Un-hardcode
const String tokenSymbol = 'CAN';

class SendScreen extends StatefulWidget {
  final CommunityEntity entity;

  SendScreen({
    required this.entity,
  });

  @override
  _SendScreenState createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {
  String _amountText = "";

  // ListTile _itemTile() {
  //   return ListTile(
  //     title: Text(widget.contactPassed.displayName!),
  //     subtitle: Text(
  //       (widget.contactPassed.phones!.length > 0
  //           ? widget.contactPassed.phones!.elementAt(0).value
  //           : '')!,
  //     ),
  //     leading: CircleAvatarWidget(
  //       phoneContact: widget.contactPassed,
  //     ),
  //   );
  //   return ListTile(
  //     title: Text(widget.contributerPassed.name),
  //     leading: Container(
  //       decoration: BoxDecoration(
  //         shape: BoxShape.circle,
  //       ),
  //       child: CircleAvatar(
  //         child: Image.asset('assets/images/anon.png'),
  //         backgroundColor: Colors.grey,
  //       ),
  //     ),
  //   );
  // }

  void _pushReviewTransferScreen(BuildContext context) {
    AutoRouter.of(context).push(
      ReviewTransferPage(
        entity: widget.entity,
        confirmAmount: _amountText,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TemplateScreen(
      title: 'Send to ${widget.entity.displayName}',
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('How much?'),
            ),
            AppNumericKeyboard(
              tokenSymbol: tokenSymbol,
              onTap: (s) {
                setState(() {
                  _amountText = s;
                  // print('s is $s');
                  // print('amountText is $amountText');
                });
              },
            ),
            CommonButton(
              label: 'Continue',
              onPressed: () => _pushReviewTransferScreen(context),
            ),
          ],
        ),
      ),
    );
  }
}