import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/models/authentication_method.dart';
import 'package:the_wellbeing_protocol/models/authentication_state.dart';
import 'package:the_wellbeing_protocol/redux/features/authentication/authentication_actions.dart';
import 'package:the_wellbeing_protocol/redux/features/authentication/authentication_utils.dart';
import 'package:the_wellbeing_protocol/services/app_services.dart';

Future<dynamic> handleAuthentication(
  Store<AppState> store,
  AppServices services,
  FlutterSecureStorage storage,
) async {
  String? mnemonic = await storage.read(key: 'mnemonic');
  String? privateKey = await storage.read(key: 'privateKey');
  if (mnemonic != null && privateKey != null) {
    await services.fuseNetworkService.setCredentials(privateKey);

    String? jwt = await storage.read(key: 'jwt');
    if (jwt != null) {
      services.fuseAPIService.setJwtToken(jwt);
      return store.dispatch(CompleteAuthentication());
    }
  }

  return store.dispatch(FailedAuthentication());
}

Future<dynamic> handleLogin(
  Store<AppState> store,
  AppServices services,
  FlutterSecureStorage storage,
  BeginLogin action,
) async {
  String phoneNum = action.phoneNum.replaceRange(0, 1, '+64');
  switch (services.authenticationMethod) {
    case AuthenticationMethod.Basic:
      return store.dispatch(
        BeginVerification(AuthenticationState.awaitingVerification(phoneNum)),
      );
    case AuthenticationMethod.Sms:
      try {
        await services.fuseAPIService.loginWithSMS(phoneNum);
        return store.dispatch(CompleteLogin(phoneNum));
      } catch (e) {
        // TODO: Handle failed login attempt.
        throw UnimplementedError();
      }
    default:
      throw 'Authentication method not set...';
  }
}

Future<dynamic> handleRestore(
  Store<AppState> store,
  AppServices services,
  FlutterSecureStorage storage,
  BeginRestore action,
) async {
  await createFuseNetworkCredentials(services, storage, action.mnemonic);
  store.dispatch(CompleteRestore());
}

Future<dynamic> handleVerification(
  Store<AppState> store,
  AppServices services,
  FlutterSecureStorage storage,
  BeginVerification action,
) async {
  String? mnemonic = await storage.read(key: 'mnemonic');
  String? privateKey = await storage.read(key: 'privateKey');
  if (mnemonic == null) {
    privateKey = await createFuseNetworkCredentials(services, storage);
  }
  await services.fuseNetworkService.setCredentials(privateKey);
  String accountAddress = await services.fuseNetworkService.getAddress();

  String phoneNum =
      (action.authenticationState as AwaitingVerification).phoneNumber;
  String? verificationCode = action.verificationCode;
  String jwt = await createFuseAPICredentials(
    services,
    storage,
    accountAddress,
    phoneNum,
    verificationCode,
  );
  services.fuseAPIService.setJwtToken(jwt);

  return store.dispatch(CompleteVerification(accountAddress, phoneNum));
}
