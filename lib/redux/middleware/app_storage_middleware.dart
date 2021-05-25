import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/redux/actions_ui/auth_actions.dart';
import 'package:the_wellbeing_protocol/redux/app_actions.dart';
import 'package:the_wellbeing_protocol/services/app_storage_service.dart';

// Need to tidy up a lot.

///Middleware used to save app state to local storage.
class AppStorageMiddleware extends MiddlewareClass<AppState> {
  final AppStorageService appStorageService;

  AppStorageMiddleware(this.appStorageService);

  @override
  dynamic call(
    Store<AppState> store,
    dynamic action,
    NextDispatcher next,
  ) {
    if (action is ClearData) {
      appStorageService.clearLocalStorage();
      return next(action);
    }

    if (action is CompleteRestore) {
      appStorageService.saveMnemonic(action.mnemonic);
      appStorageService.savePrivateKey(action.privateKey);
    } else if (action is CompleteVerification) {
      appStorageService.saveJwt(action.jwt);
    }

    appStorageService.saveState(store.state.toJson());
    return next(action);
  }
}
