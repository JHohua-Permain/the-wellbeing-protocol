import 'package:flutter/material.dart';

class GeneralScreen extends StatelessWidget {
  GeneralScreen({this.body, this.appBar});

  final AppBar appBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }
}