import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/common/redux/common_actions.dart';
import 'package:the_wellbeing_protocol/core/services/app_services.dart';
import 'package:the_wellbeing_protocol/core/states/app_state.dart';

class HandlerMiddleware extends MiddlewareClass<AppState> {
  final int HANDLER_DELAY = 500;
  final AppServices services;

  HandlerMiddleware(this.services);

  /// Actions of type [HandlerAction] are swallowed by this middleware.
  @override
  dynamic call(Store<AppState> store, dynamic action, NextDispatcher next) {
    if (action is HandlerAction) {
      Future.sync(() {
        store.dispatch(BeginAction());
      }).then((_) {
        return Future.delayed(Duration(milliseconds: HANDLER_DELAY));
      }).then((_) {
        return action.call(store, services);
      }).then((_) {
        store.dispatch(CompleteAction());
        action.completer.complete();
      });
    } else {
      return next(action);
    }
  }
}
