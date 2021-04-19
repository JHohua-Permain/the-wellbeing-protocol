import 'package:flutter/material.dart';

class GeneralScreen extends StatelessWidget {
  GeneralScreen({this.body, this.appBarTitle});

  final Widget body;
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(appBarTitle),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: body,
    );
  }
}