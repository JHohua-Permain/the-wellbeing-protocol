import 'package:flutter/material.dart';
import './router.dart';

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      title: "The Wellbeing Protocol", //TODO: Un-hardcode
      initialRoute: PATH_HOME,
      routes: routes,
    );
  }
}