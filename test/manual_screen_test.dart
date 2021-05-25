import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/app_themes.dart' as Themes;

import 'mock_screen_builder.dart';

void main() {
  runApp(TestApp(
    // Placeholder(),
    mockLoginScreen(),
  ));
}

class TestApp extends StatelessWidget {
  final Widget home;

  TestApp(this.home);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.createAppTheme(),
      home: home,
    );
  }
}
