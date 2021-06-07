import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/ui/widgets/app_scaffold.dart';

class CashOutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Cash-out',
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: RichText(
            text: TextSpan(
              text:
                  'At the end of this pilot (~6 weeks) you can choose to cashout your Cannons (CAN) for New Zealand dollars (NZD).\n\n',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontFamily: 'Roboto',
              ),
              children: <TextSpan>[
                _buildTextSpan(
                  context,
                  'However if decide to do this you will only receive 50% of the amount.\n\n',
                ),
                _buildTextSpan(
                  context,
                  'For example - You have 20 Cannons left in your wallet at the end of the trial. You choose to cashout all of it so you will receive \$ 10 NZD.\n\n',
                ),
                _buildTextSpan(
                  context,
                  'We will let you know the excat details of how to do this closer to the end of the pilot. If you have any questions in the mean time, please ask.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextSpan _buildTextSpan(BuildContext context, String text) {
    return TextSpan(
      text: text,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16.0,
        fontFamily: 'Roboto',
      ),
    );
  }
}
