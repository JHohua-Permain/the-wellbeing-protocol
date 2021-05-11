import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/components/views/review_contact%20_transfer.dart';
import 'package:the_wellbeing_protocol/widgets/comon_button.dart';
import 'package:the_wellbeing_protocol/widgets/numeric_keyboard_widget.dart';
import '../template_screen.dart';

// ignore: must_be_immutable
class SendToContact extends StatefulWidget {
  final Contact contactPassed;

  SendToContact({
    this.contactPassed,
  });

  @override
  _SendToContactState createState() => _SendToContactState();
}

class _SendToContactState extends State<SendToContact> {
  String amountText = "";

  ListTile itemTile() {
    return ListTile(
      title: Text(widget.contactPassed.displayName),
      subtitle: new Text(widget.contactPassed.phones.length > 0
          ? widget.contactPassed.phones.elementAt(0).value
          : ''),
      leading: (widget.contactPassed.avatar != null &&
              widget.contactPassed.avatar.length > 0)
          ? CircleAvatar(
              backgroundImage: MemoryImage(widget.contactPassed.avatar),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('How much?'),
          ),
          NumericKeyboardWidget(onTap: (s) {
            setState(() {
              // print('s is $s');
              amountText = s;
              // print('amountText is $amountText');
            });
          }),
          CommonButton(
              buttonName: 'Continue',
              onButtonPressed: () {
                return Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TemplateScreen(
                    appBarTitle: "Review Transfer",
                    showBackArrow: true,
                    body: ReviewContactTransfer(
                      confirmAmount: amountText,
                      contact: widget.contactPassed,
                    ),
                    showBottomBar: false,
                  ),
                ));
              }),
        ],
      ),
    );
  }
}
