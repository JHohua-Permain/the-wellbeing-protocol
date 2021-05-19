import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/components/views/review_transfer_widget.dart';

import '../../widgets/template_screen.dart';
import 'success.dart';

@deprecated
class ReviewContactTransfer extends StatelessWidget {
  final String confirmAmount;
  final Contact contact;

  const ReviewContactTransfer({required this.confirmAmount, required this.contact});

  Row contactRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        (contact.avatar != null && contact.avatar!.length > 0)
            ? CircleAvatar(
                backgroundImage: MemoryImage(contact.avatar!),
              )
            : Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  child: Image.asset('assets/images/anom.png'),
                  backgroundColor: Colors.grey,
                ),
              ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(contact.displayName ?? ''),
              Text(contact.phones?.elementAt(0).value ?? ''),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ReviewTransferWidget(
      confirmAmount: confirmAmount,
      itemRow: contactRow(),
      passedButtonName: 'Send',
      buttonFunction: () {},
    );
  }
}
