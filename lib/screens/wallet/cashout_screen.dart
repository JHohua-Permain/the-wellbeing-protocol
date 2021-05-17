import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/widgets/template_screen.dart';

class CashOutScreen extends StatelessWidget {
  final TextStyle cashOutTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 16.0,
    fontFamily: 'Roboto',
  );

  @override
  Widget build(BuildContext context) {
    return TemplateScreen(
      title: 'CashOut',
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: RichText(
            text: TextSpan(
              text:
                  'At the end of this pilot (~6 weeks) you can choose to cash-out your Cannons (CAN) for New Zealand dollars (NZD).\n\n',
              style: cashOutTextStyle,
              children: <TextSpan>[
                TextSpan(
                  style: cashOutTextStyle,
                  text:
                      'However if decide to do this you will only receive 50% of the amount.\n\n',
                ),
                TextSpan(
                  style: cashOutTextStyle,
                  text:
                      'For example - You have 20 Cannons left in your wallet at the end of the trial. You choose to cash-out all of it so you will receive \$ 10 NZD.\n\n',
                ),
                TextSpan(
                  style: cashOutTextStyle,
                  text:
                      'We will let you know the exact details of how to do this closer to the end of the pilot. If you have any questions in the mean time, please ask.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}