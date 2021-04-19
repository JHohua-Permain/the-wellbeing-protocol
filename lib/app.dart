import 'package:flutter/material.dart';
import './constants.dart';
import './features/home/home_screen.dart';

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      title: APP_NAME,
      home: HomeScreen()
    );
  }
}