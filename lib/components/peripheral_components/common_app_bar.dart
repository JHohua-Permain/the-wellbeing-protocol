import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize = Size.fromHeight(kToolbarHeight);
  final String title;
  final VoidCallback toInfoScreen;

  CommonAppBar({this.title, this.toInfoScreen});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey,
      centerTitle: true,
      title: Text(title),
      automaticallyImplyLeading: false,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
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