import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/common/widgets/app_circle_avatar.dart';

class TransferWidget extends StatelessWidget {
  final String displayName;
  final String amount;
  final String tokenSymbol;
  final String type;
  final VoidCallback select;

  TransferWidget({
    required this.displayName,
    required this.amount,
    required this.tokenSymbol,
    required this.type,
    required this.select,
  });

  @override
  Widget build(BuildContext context) {
    Widget icon;
    if (type == 'SEND') {
      icon = InkWell(child: Icon(Icons.arrow_upward, color: Colors.deepOrange));
    } else if (type == 'RECEIVE') {
      icon = InkWell(child: Icon(Icons.arrow_downward, color: Colors.green));
    } else {
      icon = Container();
    }

    return ListTile(
      title: Text(displayName),
      trailing: FittedBox(
        alignment: Alignment.centerRight,
        child: Row(
          children: [
            Text('${amount} ${tokenSymbol}'),
            icon,
          ],
        ),
      ),
      leading: AppCircleAvatar(),
      onTap: select,
    );
  }
}
