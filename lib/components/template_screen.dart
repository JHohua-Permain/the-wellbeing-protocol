import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/components/components.dart';
import './peripheral_components/common_app_bar.dart';
import './peripheral_components/app_bottom_navigation_bar.dart';

class TemplateScreen extends StatelessWidget {
  final String appBarTitle;
  final bool showBackArrow;
  final VoidCallback appBarToInfoScreen;
  final Widget body;
  final bool showBottomBar;

  TemplateScreen(
      {this.appBarTitle,
      this.showBackArrow,
      this.appBarToInfoScreen,
      this.body,
      this.showBottomBar});
  static var receiver;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: appBarTitle,
        toInfoScreen: appBarToInfoScreen,
        showleading: showBackArrow ?? false,
      ),
      bottomNavigationBar: (showBottomBar ?? false) //null Check operator
          ? AppBottomNavigationBar(
              fromAnyOtherPage: (showBottomBar ?? false),
            )
          : null,
      body: body,
    );
  }
}
