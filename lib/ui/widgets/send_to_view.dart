import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:the_wellbeing_protocol/ui/widgets/common_button.dart';
import 'package:the_wellbeing_protocol/ui/widgets/currency_widget.dart';

class SendToView extends StatefulWidget {
  final String tokenSymbol;
  final ValueSetter<String> onSubmit;

  SendToView({
    required this.tokenSymbol,
    required this.onSubmit,
  });

  @override
  _SendToViewState createState() => _SendToViewState();
}

class _SendToViewState extends State<SendToView> {
  String _amountText = '0.0';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('How much?'),
          ),
          _buildNumericKeyboard(context),
          CommonButton(
            label: 'Continue',
            onPressed: () => widget.onSubmit(_amountText),
          ),
        ],
      ),
    );
  }

  Widget _buildNumericKeyboard(BuildContext context) {
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
                CurrencyWidget(
                  amount: _amountText,
                  tokenSymbol: widget.tokenSymbol,
                ),
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
              leftButtonFn: _leftButtonFn,
              rightButtonFn: _rightButtonFn,
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

  void _leftButtonFn() {
    if (!_amountText.contains('.')) {
      _onKeyboardTap('.');
    }
  }

  void _onKeyboardTap(String value) {
    if (_amountText == "0.0") _amountText = "";
    setState(() {
      _amountText = _amountText + value;
    });
  }

  void _rightButtonFn() {
    setState(() {
      _amountText = _amountText.substring(0, _amountText.length - 1);
    });
  }
}
