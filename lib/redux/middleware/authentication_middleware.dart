import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/models/authentication_method.dart';
import 'package:the_wellbeing_protocol/redux/actions/community_actions.dart';
import 'package:the_wellbeing_protocol/redux/actions/user_actions.dart';
import 'package:the_wellbeing_protocol/services/app_services.dart';
import 'package:the_wellbeing_protocol/ui_redux/authentication_actions.dart';
import 'package:the_wellbeing_protocol/ui_redux/wallet_actions.dart';

class AuthenticationMiddleware implements MiddlewareClass<AppState> {
  final FlutterSecureStorage storage;
  final AppServices services;

  AuthenticationMiddleware(this.storage, this.services);

  @override
  call(Store<AppState> store, dynamic action, NextDispatcher next) {
    // 'action is Logout' temp.
    if (action is StartDataWipe || action is Logout) {
      _processDataWipe(store);
    } else if (action is StartLogin) {
      _processLogin(store, action.phoneNum);
    } else if (action is StartReAuthentication) {
      _processReAuthentication(store);
    } else if (action is StartRestore) {
      _generateFuseNetworkCredentials(store, action.mnemonic);
    } else if (action is StartVerification) {
      _processVerification(store, action.phoneNum, action.verificationCode);
    } else {
      return next(action);
    }
  }

  Future<void> _generateFuseNetworkCredentials(
    Store<AppState> store,
    String? mnemonic,
  ) async {
    if (mnemonic == null) {
      print('Generating new Fuse Network account...');
      mnemonic = services.fuseNetworkService.generateMnemonic();
    } else {
      print('Restoring Fuse Network account...');
    }

    String privateKey = services.fuseNetworkService.generatePrivateKey(
      mnemonic,
    );

    //Set Fuse Network credentials.
    await services.fuseNetworkService.setCredentials(privateKey);

    await storage.write(key: 'mnemonic', value: mnemonic);
    await storage.write(key: 'privateKey', value: privateKey);

    String accountAddress = await services.fuseNetworkService.getAddress();

    store.dispatch(SetAccountAddress(accountAddress));
  }

  Future<void> _processDataWipe(Store<AppState> store) async {
    await storage.delete(key: 'mnemonic');
    await storage.delete(key: 'privateKey');
    await storage.delete(key: 'jwt');
    //TODO: Reset services.

    store.dispatch(CompleteDataWipe());
  }

  Future<void> _processLogin(Store<AppState> store, String phoneNum) async {
    if (store.state.user.accountAddress == '') {
      await _generateFuseNetworkCredentials(store, null);
    }

    phoneNum = phoneNum.replaceRange(0, 1, '+64');
    switch (services.authenticationMethod) {
      case AuthenticationMethod.Basic:
        await _processVerification(store, phoneNum);
        break;
      case AuthenticationMethod.Sms:
        await _processLoginWithSms(store, phoneNum);
        return store.dispatch(CompleteLogin(phoneNum, null));
      default:
        throw Exception('Authentication method not set...');
    }
  }

  Future<void> _processLoginWithSms(
    Store<AppState> store,
    String phoneNum,
  ) async {
    //TODO: Handle errors.
    await services.fuseAPIService.loginWithSMS(phoneNum);
  }

  Future<void> _processReAuthentication(Store<AppState> store) async {
    String? mnemonic = await storage.read(key: 'mnemonic');
    String? privateKey = await storage.read(key: 'privateKey');
    String? jwt = await storage.read(key: 'jwt');

    if (mnemonic != null && privateKey != null) {
      await services.fuseNetworkService.setCredentials(privateKey);

      if (jwt != null) {
        services.fuseAPIService.setJwtToken(jwt);
        store.dispatch(Authenticate());
      }
    }
  }

  Future<void> _processVerification(
    Store<AppState> store,
    String phoneNum, [
    String? smsCode,
  ]) async {
    String? jwt;
    //TODO: Handle errors.
    switch (services.authenticationMethod) {
      case AuthenticationMethod.Basic:
        jwt = await _processVerificationWithBasic(store, phoneNum);
        break;
      case AuthenticationMethod.Sms:
        jwt = await _processVerificationWithSms(store, phoneNum, smsCode!);
        break;
      default:
        throw Exception('Authentication method not set...');
    }

    if (jwt != null) {
      await storage.write(key: 'jwt', value: jwt);
      store.dispatch(CompleteVerification(phoneNum));
      String communityAddress =
          services.fuseNetworkService.getDefaultCommunity();
      store.dispatch(createWallet(communityAddress));
      store.dispatch(fetchCommunity(communityAddress));
      store.dispatch(Authenticate());
    }
  }

  Future<String?> _processVerificationWithBasic(
    Store<AppState> store,
    String phoneNum,
  ) async {
    //TODO: Handle errors.
    return services.fuseAPIService.requestToken(
      phoneNum,
      store.state.user.accountAddress,
    );
  }

  Future<String?> _processVerificationWithSms(
    Store<AppState> store,
    String phoneNum,
    String smsCode,
  ) async {
    //TODO: Handle errors.
    return services.fuseAPIService.verifySMS(
      smsCode,
      phoneNum,
      store.state.user.accountAddress,
    );
  }
}
