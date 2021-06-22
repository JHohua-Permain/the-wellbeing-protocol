import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/common/widgets/app_scaffold.dart';

class ProtectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Protect your wallet',
      body: ListView(
        children: ListTile.divideTiles(context: context, tiles: [
          ListTile(
            leading: Icon(
              Icons.fingerprint,
              size: 20,
              color: Colors.black,
            ),
            title: Text('Touch ID'),
            // trailing: InkWell(
            //   child: Icon(
            //     Icons.check,
            //     color: Colors.green,
            //   ),
            // ),
          ),
          ListTile(
            leading: Icon(
              Icons.keyboard,
              size: 20,
              color: Colors.black,
            ),
            title: Text('Pin Code'),
          ),
        ]).toList(),
      ),
    );
  }
}
