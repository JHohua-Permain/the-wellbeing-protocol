import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/widgets/amount_widget.dart';
import 'package:the_wellbeing_protocol/widgets/comon_button.dart';

class ReviewTransferWidget extends StatelessWidget {
  final String confirmAmount;
  final Row itemRow;
  final String passedButtonName;
  final Function buttonFunction;

  ReviewTransferWidget(
      {this.confirmAmount,
      this.itemRow,
      this.passedButtonName,
      this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 70),
            child: Text('Amount'),
          )),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Amount(amount: confirmAmount),
                //     Text(
                //       confirmAmount ?? "",
                //       style: TextStyle(
                //         fontSize: 40,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(left: 10, bottom: 8),
                //       child: Text(
                //         'CAN',
                //         style: TextStyle(
                //           fontSize: 18,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ),
              ],
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: itemRow,
          ),
          const Divider(
            thickness: 1.5,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CommonButton(
              buttonName: passedButtonName,
              onButtonPressed: buttonFunction,
            ),
          )
        ],
      ),
    );
  }
}
