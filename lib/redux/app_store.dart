import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:redux_persist/redux_persist.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:the_wellbeing_protocol/common/redux/common_middleware.dart';
import 'package:the_wellbeing_protocol/core/services/app_services.dart';
import 'package:the_wellbeing_protocol/core/states/app_state.dart';
import 'package:the_wellbeing_protocol/redux//app_mock_middleware.dart';
import 'package:the_wellbeing_protocol/redux/app_reducers.dart';
import 'package:the_wellbeing_protocol/redux/app_storage_engine.dart';

Future<Store<AppState>> initAppStore(
  AppServices services,
  bool useMocks,
  bool clearInit,
) async {
  Persistor<AppState> persistor = _initPersistor();
  AppState initialState =
      clearInit ? AppState.initial() : await _loadState(persistor);

  List<Middleware<AppState>> middleware = [
    HandlerMiddleware(services),
    ExtraArgumentThunkMiddleware<AppState, AppServices>(services),
    persistor.createMiddleware(),
    LoggingMiddleware.printer(),
  ];

  if (useMocks) {
    middleware.add(AppMockInjectorMiddleware());
  }

  return Store<AppState>(
    appStateReducer,
    initialState: initialState,
    middleware: middleware,
  );
}

Persistor<AppState> _initPersistor() {
  FlutterSecureStorage storage = FlutterSecureStorage();
  StorageEngine storageEngine = AppStorageEngine(storage);
  JsonSerializer<AppState> serializer =
      JsonSerializer((json) => AppState.fromJson(json));
  return Persistor(storage: storageEngine, serializer: serializer);
}

Future<AppState> _loadState(Persistor<AppState> persistor) async {
  try {
    AppState? initialState = await persistor.load();
    return initialState != null ? initialState : AppState.initial();
  } catch (e) {
    return AppState.initial();
  }
}
