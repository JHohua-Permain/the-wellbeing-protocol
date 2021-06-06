import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:redux_persist/redux_persist.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/redux/features/authentication/authentication_middleware.dart';
import 'package:the_wellbeing_protocol/redux/misc/mocks_middleware.dart'
    as Mocks;
import 'package:the_wellbeing_protocol/redux/persistor/persistor.dart';
import 'package:the_wellbeing_protocol/redux/reducers/app_state_reducer.dart';
import 'package:the_wellbeing_protocol/services/app_services.dart';
import 'package:the_wellbeing_protocol/variables.dart' as Variables;

Future<Store<AppState>> buildStore(AppServices services) async {
  dynamic mockInjectorMiddleware =
      Variables.USE_MOCKS ? Mocks.mockInjectorMiddleware : null;

  FlutterSecureStorage storage = FlutterSecureStorage();

  Persistor<AppState> persistor = buildPersistor(storage);

  AppState initialState = await _loadState(persistor);

  return Store<AppState>(
    appStateReducer,
    initialState: initialState,
    middleware: [
      AuthenticationMiddleware(storage, services),
      ExtraArgumentThunkMiddleware<AppState, AppServices>(services),
      persistor.createMiddleware(),
      mockInjectorMiddleware,
      LoggingMiddleware.printer(),
    ],
  );
}

Future<AppState> _loadState(Persistor<AppState> persistor) async {
  try {
    AppState? initialState = await persistor.load();
    return initialState != null ? initialState : AppState.initial();
  } catch (e) {
    return AppState.initial();
  }
}
