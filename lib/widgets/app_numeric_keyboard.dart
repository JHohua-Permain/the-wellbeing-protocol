import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:the_wellbeing_protocol/widgets/currency_widget.dart';

//TODO
class AppNumericKeyboard extends StatefulWidget {
  final String tokenSymbol;
  final ValueChanged onTap;

  AppNumericKeyboard({required this.tokenSymbol, required this.onTap});

  @override
  _AppNumericKeyboardState createState() => _AppNumericKeyboardState();
}

class _AppNumericKeyboardState extends State<AppNumericKeyboard> {
  String _amountText = '0.0';

  void _onKeyboardTap(String value) {
    if (_amountText == "0.0") _amountText = "";
    setState(() {
      _amountText = _amountText + value;
    });
    widget.onTap(_amountText);
  }

  void _onLeftButtonPressed() {
    if (_amountText.contains('.')) return;
    _onKeyboardTap('.');
  }

  void _onRightButtonPressed() {
    setState(() {
      _amountText = _amountText.substring(0, _amountText.length - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CurrencyWidget(amount: _amountText, tokenSymbol: widget.tokenSymbol),
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
              textColor: Colors.black,
              onKeyboardTap: _onKeyboardTap,
              leftButtonFn: _onLeftButtonPressed,
              rightButtonFn: _onRightButtonPressed,
              leftIcon: Icon(
                Icons.fiber_manual_record,
                color: Colors.black,
                size: 12,
              ),
              rightIcon: Icon(
                Icons.backspace,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}