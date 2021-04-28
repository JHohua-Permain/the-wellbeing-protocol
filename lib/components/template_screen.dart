import 'package:flutter/material.dart';
import './peripheral_components/common_app_bar.dart';
import './peripheral_components/app_bottom_navigation_bar.dart';

class TemplateScreen extends StatelessWidget {
  final String appBarTitle;
  final VoidCallback appBarToInfoScreen;
  final Widget body;

  TemplateScreen({this.appBarTitle, this.appBarToInfoScreen, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: appBarTitle, toInfoScreen: appBarToInfoScreen),
      bottomNavigationBar: AppBottomNavigationBar(),
      body: body,
    );
  }
}