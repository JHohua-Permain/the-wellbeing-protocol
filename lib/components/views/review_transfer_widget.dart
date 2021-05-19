import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/widgets/currency_widget.dart';
import 'package:the_wellbeing_protocol/widgets/common_button.dart';

@deprecated
class ReviewTransferWidget extends StatelessWidget {
  final String confirmAmount;
  final Row itemRow;
  final String passedButtonName;
  final VoidCallback buttonFunction;

  ReviewTransferWidget(
      {required this.confirmAmount,
        required this.itemRow,
        required this.passedButtonName,
        required this.buttonFunction});

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
                CurrencyWidget(amount: confirmAmount, tokenSymbol: 'CAN'),
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
              label: passedButtonName,
              onPressed: buttonFunction,
            ),
          )
        ],
      ),
    );
  }
}
