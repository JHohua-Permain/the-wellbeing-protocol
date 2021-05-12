import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/components/components.dart';
import 'package:the_wellbeing_protocol/components/views/review_contributer_transfer.dart';
import 'package:the_wellbeing_protocol/widgets/comon_button.dart';
import 'package:the_wellbeing_protocol/widgets/numeric_keyboard_widget.dart';

class SendToCommunityFund extends StatefulWidget {
  final Contributer contributerPassed;

  const SendToCommunityFund({this.contributerPassed});

  @override
  _SendToCommunityFundState createState() => _SendToCommunityFundState();
}

class _SendToCommunityFundState extends State<SendToCommunityFund> {
  String amountText = "";

  ListTile itemTile() {
    return ListTile(
      title: Text(widget.contributerPassed.name),
      leading: Container(
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
                    body: ReviewContributerTransfer(
                      confirmAmount: amountText,
                      contributer: widget.contributerPassed,
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
