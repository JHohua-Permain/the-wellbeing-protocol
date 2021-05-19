import 'package:flutter/material.dart';
import './app_navigation.dart';
import './app_themes.dart';
import './constants.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      theme: ThemeData(
        appBarTheme: appBarTheme,
        bottomNavigationBarTheme: bottomNavigationBarTheme,
      ),
      onGenerateRoute: onGenerateRoute,
    );
  }
}