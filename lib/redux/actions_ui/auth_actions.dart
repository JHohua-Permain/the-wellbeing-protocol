import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/models/authentication_method.dart';
import 'package:the_wellbeing_protocol/redux/app_redux.dart';
import 'package:the_wellbeing_protocol/services.dart';

AppThunkAction processRestore(String mnemonic) {
  return (store, services) async {
    String privateKey = services.fuseNetworkService.generatePrivateKey(
      mnemonic,
    );

    //Set Fuse Network credentials.
    await services.fuseNetworkService.setCredentials(privateKey);

    String accountAddress = await services.fuseNetworkService.getAddress();

    store.dispatch(CompleteRestore(mnemonic, privateKey, accountAddress));
  };
}

AppThunkAction processVerification(String phoneNum, String smsCode) {
  return (store, services) async {
    String jwt = await services.fuseAPIService.verifySMS(
      smsCode,
      phoneNum,
      store.state.user.accountAddress,
    );
    store.dispatch(CompleteVerification(phoneNum, jwt));
  };
}

class CompleteRestore {
  final String mnemonic;
  final String privateKey;
  final String accountAddress;

  const CompleteRestore(this.mnemonic, this.privateKey, this.accountAddress);
}

class CompleteVerification {
  final String phoneNum;
  final String jwt;

  const CompleteVerification(this.phoneNum, this.jwt);
}

class ProcessLogin extends AppAsyncAction {
  final String phoneNum;

  ProcessLogin(this.phoneNum);

  @override
  dynamic call(Store<AppState> store, AppServices services) async {
    switch (services.authenticationMethod) {
      case AuthenticationMethod.Basic:
        return store.dispatch(processBasicLogin(phoneNum));
      case AuthenticationMethod.Sms:
        return store.dispatch(processSmsLogin(phoneNum));
      default:
        throw Exception('Authentication method not set...');
    }
  }

  AppThunkAction processBasicLogin(String phoneNum) {
    return (store, services) async {
      String jwt = await services.fuseAPIService.requestToken(
        phoneNum,
        store.state.user.accountAddress,
      );
      store.dispatch(CompleteVerification(phoneNum, jwt));
    };
  }

  AppThunkAction processSmsLogin(String phoneNum) {
    return (store, services) async {
      await services.fuseAPIService.loginWithSMS(
        phoneNum,
      );
      store.dispatch(StartVerification(phoneNum, ''));
    };
  }
}

class Reauthenticate {
  const Reauthenticate();
}

class StartVerification {
  final String phoneNum;
  final String verificationCode;

  const StartVerification(this.phoneNum, this.verificationCode);
}
