import 'package:flutter/material.dart';
import './constants.dart';
import 'common/router.dart';

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      title: APP_NAME,
      initialRoute: PATH_HOME,
      routes: routes,
    );
  }
}