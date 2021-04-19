import 'package:flutter/material.dart';
import '../widgets/home_screen.dart';

const PATH_HOME = "/";

final Map<String, WidgetBuilder> routes = {
    PATH_HOME: (context) => HomeScreen()
};