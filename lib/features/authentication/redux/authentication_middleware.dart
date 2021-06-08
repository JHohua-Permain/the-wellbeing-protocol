import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/core/state/app_state.dart';
import 'package:the_wellbeing_protocol/features/authentication/redux/authentication_actions.dart';
import 'package:the_wellbeing_protocol/features/authentication/redux/authentication_handlers.dart';
import 'package:the_wellbeing_protocol/services/app_services.dart';

class AuthenticationMiddleware implements MiddlewareClass<AppState> {
  final AppServices services;
  final FlutterSecureStorage storage;

  AuthenticationMiddleware(this.services, this.storage);

  @override
  call(Store<AppState> store, dynamic action, NextDispatcher next) {
    if (action is BeginAuthentication) {
      handleAuthentication(store, services, storage);
    } else if (action is BeginLogin) {
      handleLogin(store, services, storage, action);
    } else if (action is BeginRestore) {
      handleRestore(store, services, storage, action);
    } else if (action is BeginVerification) {
      handleVerification(store, services, storage, action);
    }

    return next(action);
  }
}
