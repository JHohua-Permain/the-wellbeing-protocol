import 'dart:async';

import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/core/services/app_services.dart';
import 'package:the_wellbeing_protocol/core/states/app_state.dart';

class BeginAction {}

class CompleteAction {}

abstract class HandlerAction {
  final Completer completer;

  HandlerAction([Completer? completer]) : completer = completer ?? Completer();

  Future<dynamic> call(Store<AppState> store, AppServices services);
}
