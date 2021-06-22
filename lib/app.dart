import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/routing/auth_guard.dart';
import 'package:the_wellbeing_protocol/core/states/app_state.dart';
import 'package:the_wellbeing_protocol/routing/app_router.gr.dart';

class MyApp extends StatefulWidget {
  final String title;
  final ThemeData themeData;
  final Store<AppState> store;

  MyApp(this.title, this.themeData, this.store);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppRouter _router;
  late final StreamSubscription _subscription;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: widget.store,
      child: MaterialApp.router(
        title: widget.title,
        theme: widget.themeData,
        routerDelegate: _router.delegate(),
        routeInformationParser: _router.defaultRouteParser(),
      ),
    );
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _router = AppRouter(
      authGuard: AuthGuard(() => widget.store.state.authenticated),
    );
    _subscription = widget.store.onChange.listen(_stateChangeListener);
  }

  void _stateChangeListener(AppState state) {
    if (state.isHandling && !_router.isRouteActive(ProgressPopup.name)) {
      _router.push(ProgressPopup());
    } else if (!state.isHandling && _router.isRouteActive(ProgressPopup.name)) {
      _router.pop();
    } else if (!state.authenticated && _router.isPathActive('/hub')) {
      _router.navigateNamed('/');
    }
  }
}
