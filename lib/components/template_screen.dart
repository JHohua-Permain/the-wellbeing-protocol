import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/components/components.dart';
import './peripheral_components/common_app_bar.dart';
import './peripheral_components/app_bottom_navigation_bar.dart';

class TemplateScreen extends StatelessWidget {
  final String appBarTitle;
  final bool showBackArrow;
  final VoidCallback? appBarToInfoScreen;
  final Widget body;
  final bool showBottomBar;
  final bool redirectToView;

  TemplateScreen(
      {required this.appBarTitle,
      this.showBackArrow = false,
      this.appBarToInfoScreen,
      required this.body,
      this.redirectToView = false,
      this.showBottomBar = false});
  static var receiver;

  @override
  Widget build(BuildContext context) {
    VoidCallback toInfoScreen = appBarToInfoScreen ?? () {};

    return Scaffold(
      appBar: CommonAppBar(
        title: appBarTitle,
        toInfoScreen: toInfoScreen,
        showleading: showBackArrow,
      ),
      bottomNavigationBar: (showBottomBar) //null Check operator
          ? AppBottomNavigationBar(
              fromAnyOtherPage: (showBottomBar),
              redirectToView: redirectToView,
            )
          : null,
      body: body,
    );
  }
}
