import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/widgets/nav_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      drawerEdgeDragWidth: 0,
      drawerEnableOpenDragGesture: false,
    );
  }
}
