import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:redux_persist/redux_persist.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:the_wellbeing_protocol/core/state/app_state.dart';
import 'package:the_wellbeing_protocol/features/authentication/redux/authentication_middleware.dart';
import 'package:the_wellbeing_protocol/features/wallet/redux/wallet_middleware.dart';
import 'package:the_wellbeing_protocol/redux/app_reducers.dart';
import 'package:the_wellbeing_protocol/redux/experimental.dart';
import 'package:the_wellbeing_protocol/redux/misc/mocks.dart' as Mocks;
import 'package:the_wellbeing_protocol/redux/persistor/persistor.dart';
import 'package:the_wellbeing_protocol/services/app_services.dart';
import 'package:the_wellbeing_protocol/variables.dart' as Variables;

typedef AppStore = Store<AppState>;

class AppStoreBuilder {
  static Future<AppStore> init(AppServices services) async {
    FlutterSecureStorage storage = FlutterSecureStorage();
    Persistor<AppState> persistor = buildPersistor(storage);

    AppState initialState = await _loadState(persistor);

    dynamic mockInjectorMiddleware =
        Variables.USE_MOCKS ? Mocks.mockInjectorMiddleware : null;

    return AppStore(
      appStateReducer,
      initialState: initialState,
      middleware: [
        AuthenticationMiddleware(services, storage),
        WalletMiddleware(services, storage),
        CommonMiddleware(services),
        ExtraArgumentThunkMiddleware<AppState, AppServices>(services),
        mockInjectorMiddleware,
        persistor.createMiddleware(),
        LoggingMiddleware.printer(),
      ],
    );
  }

  static Future<AppState> _loadState(Persistor<AppState> persistor) async {
    try {
      AppState? initialState = await persistor.load();
      return initialState != null ? initialState : AppState.initial();
    } catch (e) {
      return AppState.initial();
    }
  }
}
