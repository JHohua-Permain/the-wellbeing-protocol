import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/constants.dart' as Constants;
import 'package:the_wellbeing_protocol/app_themes.dart' as Themes;
import 'package:the_wellbeing_protocol/generated/app_router.gr.dart';
import 'package:the_wellbeing_protocol/generated/models/app_state.dart';

class MyApp extends StatefulWidget {
  final Store<AppState> store;

  MyApp(this.store);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = AppRouter();
  final ThemeData _theme = ThemeData(
    appBarTheme: Themes.appBarTheme,
    bottomNavigationBarTheme: Themes.bottomNavigationBarTheme,
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: widget.store,
      child: MaterialApp.router(
        title: Constants.APP_NAME,
        theme: _theme,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}