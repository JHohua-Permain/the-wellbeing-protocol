import 'package:flutter/material.dart';

class ReviewTransferTemplate extends StatelessWidget {
  final Widget currencyWidget;
  final Widget avatarWidget;
  final Widget receiverInfoWidget;
  final Widget confirmWidget;

  ReviewTransferTemplate({
    required this.currencyWidget,
    required this.avatarWidget,
    required this.receiverInfoWidget,
    required this.confirmWidget,
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
                avatarWidget,
                receiverInfoWidget,
              ],
            ),
          ),
          const Divider(thickness: 1.5),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: confirmWidget,
          )
        ],
      ),
    );
  }
}
