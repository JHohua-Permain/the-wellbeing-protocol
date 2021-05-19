import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize = Size.fromHeight(kToolbarHeight);
  final String title;
  final VoidCallback? toInfoScreen;
  bool showleading;

  CommonAppBar({required this.title, this.toInfoScreen, this.showleading = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
        ),
        textScaleFactor: 0.8,
      ),
      shape: Border(bottom: BorderSide(width: 2)),
      leading: showleading == true
          ? InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            )
          : null,
      actions: [
        IconButton(
          icon: Icon(Icons.info),
          onPressed: toInfoScreen,
        ),
      ],
    );
  }
}
