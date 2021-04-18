import 'package:flutter/material.dart';
import '../widgets/main_scaffold.dart';
import '../features/home_screen.dart';

const PATH_HOME = "/";

final Map<String, WidgetBuilder> routes = {
    PATH_HOME: (context) => buildScaffold(HomeScreen())
};