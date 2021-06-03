// import 'dart:async';

import 'package:redux_thunk/redux_thunk.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/services/app_services.dart';

/// Utility type definition used to replace declarations of
/// 'CallableThunkActionWithExtraArgument<AppState, AppServices>' with
/// 'AppAsyncAction'.
typedef AppAsyncAction
    = CallableThunkActionWithExtraArgument<AppState, AppServices>;

/// Utility type definition used to replace declarations of
/// 'ThunkActionWithExtraArgument<AppState, AppServices>' with
/// 'AppThunkAction'.
typedef AppThunkAction = ThunkActionWithExtraArgument<AppState, AppServices>;

///
typedef JsonMap = Map<String, dynamic>;

// abstract class AppAsyncAction {
//   final Completer completer = Completer();
//
//   dynamic call(Store<AppState> store, AppServices services);
// }
