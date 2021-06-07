import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/services/app_services.dart';

Future<dynamic> handleDataWipe(
  AppServices services,
  FlutterSecureStorage storage,
) async {
  await storage.delete(key: 'mnemonic');
  await storage.delete(key: 'privateKey');
  await storage.delete(key: 'jwt');
  //TODO: Reset entire application state including services, as they will still have credentials set.
}

class BeginDataWipe {}

class CompleteDataWipe {}

class DataWipeMiddleware implements MiddlewareClass<AppState> {
  final AppServices services;
  final FlutterSecureStorage storage;

  DataWipeMiddleware(this.services, this.storage);

  @override
  dynamic call(Store<AppState> store, dynamic action, NextDispatcher next) {
    if (action is BeginDataWipe) {
      handleDataWipe(services, storage)
          .then((_) => store.dispatch(CompleteDataWipe()));
    }

    return next(action);
  }
}
