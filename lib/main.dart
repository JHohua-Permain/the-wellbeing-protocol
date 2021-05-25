import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:the_wellbeing_protocol/app.dart';
import 'package:the_wellbeing_protocol/mocks.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/redux/app_state_reducer.dart';
import 'package:the_wellbeing_protocol/redux/middleware/app_storage_middleware.dart';
import 'package:the_wellbeing_protocol/services.dart';
import 'package:the_wellbeing_protocol/services/app_storage_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AppServices services = AppServices.init();
  AppStorageService storage = await loadStorage(services);
  Store<AppState> store = await buildStore(storage, services);
  await Firebase.initializeApp();

  runApp(MyApp(store));
}

// FutureBuilder<Store<AppState>> buildApp(Future<Store<AppState>> initApp) {
//   return FutureBuilder(
//     future: initApp,
//     builder: (context, snapshot) {
//       switch (snapshot.connectionState) {
//         case ConnectionState.none:
//           throw Exception('Error initiating application...');
//         case ConnectionState.waiting:
//         case ConnectionState.active:
//           return SplashScreen();
//         case ConnectionState.done:
//           return MyApp(snapshot.data!);
//       }
//     },
//   );
// }

Future<Store<AppState>> buildStore(
  AppStorageService storage,
  AppServices services,
) async {
  //Load saved state from local storage.
  Map<String, dynamic>? jsonData = await storage.loadState();
  print(jsonData);

  //Set initial app state.
  AppState initialState;
  if (jsonData != null && jsonData.isNotEmpty) {
    try {
      initialState = AppState.fromJson(jsonData);
    } catch (e) {
      initialState = AppState.initial();
    }
  } else {
    initialState = AppState.initial();
  }

  return Store<AppState>(
    appStateReducer,
    initialState: initialState,
    middleware: [
      mockInjectorMiddleWare,
      ExtraArgumentThunkMiddleware<AppState, AppServices>(services),
      AppStorageMiddleware(storage),
      LoggingMiddleware.printer(),
    ],
  );
}

Future<AppStorageService> loadStorage(AppServices services) async {
  AppStorageService storage = AppStorageService();

  //Set Fuse API credentials if jwt is present in local storage.
  String? privateKey = await storage.loadPrivateKey();
  if (privateKey != null) {
    services.fuseNetworkService.setCredentials(privateKey);

    //Set Fuse API credentials if jwt is present in local storage.
    String? jwt = await storage.loadJwt();
    if (jwt != null) {
      services.fuseAPIService.setJwtToken(jwt);
    }
  }

  return storage;
}
