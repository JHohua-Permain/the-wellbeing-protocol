import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class TemplateScreen extends StatelessWidget {
  final String title;
  final String? infoRoute;
  final Widget body;

  TemplateScreen({required this.title, this.infoRoute, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: body,
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    Widget? leading = AutoRouter.of(context).isRoot == true
        ? null
        : InkWell(onTap: () => Navigator.of(context).pop());

    List<Widget>? actions = infoRoute == null
        ? null
        : [
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () => AutoRouter.of(context).pushNamed(infoRoute!),
            ),
          ];

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