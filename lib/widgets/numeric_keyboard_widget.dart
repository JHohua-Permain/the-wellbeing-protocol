import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:the_wellbeing_protocol/widgets/amount_widget.dart';

// ignore: must_be_immutable
class NumericKeyboardWidget extends StatefulWidget {
  Function onTap;

  NumericKeyboardWidget({this.onTap});

  @override
  _NumericKeyboardWidgetState createState() => _NumericKeyboardWidgetState();
}

class _NumericKeyboardWidgetState extends State<NumericKeyboardWidget> {
  String amountText = '0.0';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Amount(amount: amountText),
                // Text(
                //   amountText ?? "",
                //   style: TextStyle(
                //     fontSize: 30,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 10, bottom: 4),
                //   child: Text(
                //     'CAN',
                //     style: TextStyle(
                //       fontSize: 16,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                //),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 10,
            ),
            child: Divider(
              thickness: 2.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: NumericKeyboard(
              onKeyboardTap: _onKeyboardTap,
              textColor: Colors.black,
              rightButtonFn: () {
                setState(() {
                  amountText = amountText.substring(0, amountText.length - 1);
                });
              },
              rightIcon: Icon(
                Icons.backspace,
                color: Colors.black,
              ),
              leftButtonFn: () {
                if (amountText.contains('.')) return;
                _onKeyboardTap('.');
              },
              leftIcon: Icon(
                Icons.fiber_manual_record,
                color: Colors.black,
                size: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _onKeyboardTap(String value) {
    if (amountText == "0.0") amountText = "";
    setState(() {
      amountText = amountText + value;
    });
    widget.onTap(amountText);
  }
}
