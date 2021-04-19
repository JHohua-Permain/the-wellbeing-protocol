import 'package:flutter/material.dart';
import '../features/home/home_screen.dart';

const PATH_HOME = "/";

final Map<String, WidgetBuilder> routes = {
    PATH_HOME: (context) => HomeScreen()
};