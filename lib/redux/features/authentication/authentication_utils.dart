import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:the_wellbeing_protocol/models/authentication_method.dart';
import 'package:the_wellbeing_protocol/services/app_services.dart';

Future<String> createFuseAPICredentials(
  AppServices services,
  FlutterSecureStorage storage,
  String accountAddress,
  String phoneNum, [
  String? verificationCode,
]) async {
  String? jwt;

  if (services.authenticationMethod == AuthenticationMethod.Basic) {
    jwt = await services.fuseAPIService.requestToken(
      phoneNum,
      accountAddress,
    );
  } else if (services.authenticationMethod == AuthenticationMethod.Sms) {
    jwt = await services.fuseAPIService.verifySMS(
      verificationCode!,
      phoneNum,
      accountAddress,
    );
  } else {
    throw 'Authentication method not set...';
  }

  await storage.write(key: 'jwt', value: jwt);

  return jwt;
}

Future<String> createFuseNetworkCredentials(
  AppServices services,
  FlutterSecureStorage storage, [
  String? mnemonic,
]) async {
  if (mnemonic == null) {
    print('Creating new fuse network credentials...');
    mnemonic = services.fuseNetworkService.generateMnemonic();
  } else {
    print('Restoring fuse network credentials...');
  }

  String privateKey = services.fuseNetworkService.generatePrivateKey(mnemonic);

  print('Writing fuse network credentials to storage...');
  await storage.write(key: 'mnemonic', value: mnemonic);
  await storage.write(key: 'privateKey', value: privateKey);
  return privateKey;
}
