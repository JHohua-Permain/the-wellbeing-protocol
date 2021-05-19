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
    Widget? leading = null;
    List<Widget>? actions = null;

    if (AutoRouter.of(context).canPopSelfOrChildren) {
      leading = InkWell(
        child: Icon(Icons.arrow_back_ios),
        onTap: () => AutoRouter.of(context).pop(),
      );
    }

    if (infoRoute != null) {
      actions = [
        IconButton(
          icon: Icon(Icons.info),
          onPressed: () => AutoRouter.of(context).pushNamed(infoRoute!),
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
