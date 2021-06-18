import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/shared/widgets/app_circle_avatar.dart';
import 'package:the_wellbeing_protocol/shared/widgets/common_button.dart';
import 'package:the_wellbeing_protocol/shared/widgets/currency_widget.dart';

class ReviewTransferTemplate extends StatelessWidget {
  final CurrencyWidget currencyWidget;
  final AppCircleAvatar avatar;
  final Widget receiverInfo;
  final CommonButton confirmButton;

  ReviewTransferTemplate({
    required this.currencyWidget,
    required this.avatar,
    required this.receiverInfo,
    required this.confirmButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 70),
              child: Text('Amount'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [currencyWidget],
            ),
          ),
          const Divider(thickness: 1.5),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                avatar,
                receiverInfo,
              ],
            ),
          ),
          const Divider(thickness: 1.5),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: confirmButton,
          )
        ],
      ),
    );
  }
}
