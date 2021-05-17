import 'package:flutter/material.dart';

class CurrencyWidget extends StatelessWidget {
  final String amount;
  final String tokenSymbol;

  CurrencyWidget({required this.amount, required this.tokenSymbol});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          amount,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 8),
          child: Text(
            tokenSymbol,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}