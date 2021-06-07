import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:the_wellbeing_protocol/services/app_services.dart';

Future<dynamic> handleClearingData(
  AppServices services,
  FlutterSecureStorage storage,
) async {
  await storage.delete(key: 'mnemonic');
  await storage.delete(key: 'privateKey');
  await storage.delete(key: 'jwt');
  //TODO: Reset entire application state including services, as they will still have credentials set.
}

Future<List<String>> handleLoadingMnemonic(
  FlutterSecureStorage storage,
) async {
  String? mnemonic = await storage.read(key: 'mnemonic');
  if (mnemonic != null) {
    return mnemonic.split(' ');
  }
  return [];
}
