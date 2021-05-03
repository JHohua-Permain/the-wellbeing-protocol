import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/components/components.dart';

import '../../_mocks.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize = Size.fromHeight(kToolbarHeight);
  final String title;
  final VoidCallback toInfoScreen;

  CommonAppBar({this.title, this.toInfoScreen});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(color: Colors.black)),
      shape: Border(bottom: BorderSide(width: 2)),
      automaticallyImplyLeading: false,
      leading: InkWell(
        onTap: () {
          Navigator.of(context).pop();
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) => WalletScreen(
          //         drawerName: testAccount.name,
          //         drawerPublicAddress: testAccount.publicAddress)));

          //Navigator.popUntil(context, defaultR => false);
          //Navigator.of(context).push();
          //Navigator.pushNamed(context, '/');
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => WalletScreen(
          //             drawerName: testAccount.name,
          //             drawerPublicAddress: testAccount.publicAddress)));

          //MaterialPageRoute(
          // builder: (context) => WalletScreen(
          //     drawerName: testAccount.name,
          //     drawerPublicAddress: testAccount.publicAddress))
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.info),
          onPressed: toInfoScreen,
        ),
      ],
    );
  }
}
