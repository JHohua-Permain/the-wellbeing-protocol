// import 'package:redux/redux.dart';
// import 'package:the_wellbeing_protocol/models/app_state.dart';
// import 'package:the_wellbeing_protocol/redux/app_redux.dart';
// import 'package:the_wellbeing_protocol/services.dart';
//
// class CompleterMiddleware extends MiddlewareClass<AppState> {
//   final AppServices services;
//
//   CompleterMiddleware(this.services);
//
//   @override
//   dynamic call(
//     Store<AppState> store,
//     dynamic action,
//     NextDispatcher next,
//   ) async {
//     if (action is AppAsyncAction) {
//       dynamic syncAction = await action.call(store, services);
//       store.dispatch(syncAction);
//       action.completer.complete();
//     } else {
//       return next(action);
//     }
//   }
// }
