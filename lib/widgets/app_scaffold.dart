import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final VoidCallback? popScreen;
  final VoidCallback? pushInfoScreen;

  AppScaffold({
    required this.title,
    required this.body,
    this.popScreen,
    this.pushInfoScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: body,
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    Widget? leading;
    List<Widget>? actions;

    if (popScreen != null) {
      leading = InkWell(
        child: Icon(Icons.arrow_back_ios),
        onTap: popScreen,
      );
    }

    if (pushInfoScreen != null) {
      actions = [
        IconButton(
          icon: Icon(Icons.info),
          onPressed: pushInfoScreen,
        ),
      ];
    }

    return AppBar(
      shape: const Border(bottom: BorderSide(width: 2)),
      automaticallyImplyLeading: false,
      leading: leading,
      actions: actions,
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
        textScaleFactor: 0.8,
      ),
    );
  }
}
