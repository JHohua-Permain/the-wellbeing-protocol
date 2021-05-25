import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// WORK IN PROGRESS.
// May supplement with Persistor from the 'flutter_persistor' package.
//
// Fuse Wallet stores the mnemonic, private key and jwt
//  in the redux store, along with the rest of the app data.
// While this is more convenient since we don't have to manually read and write these values,
//  since they are read from and written to local storage along with the rest of the data,
//  is putting them in the redux store a secure way of doing things?
// Need to properly investigate and find out.

class AppStorageService {
  final FlutterSecureStorage storage = FlutterSecureStorage();

  Future<void> clearLocalStorage() async {
    await storage.deleteAll();
  }

  Future<String?> loadJwt() async {
    return storage.read(key: 'jwt');
  }

  Future<String?> loadMnemonic() async {
    return storage.read(key: 'mnemonic');
  }

  Future<String?> loadPrivateKey() async {
    return storage.read(key: 'privateKey');
  }

  Future<Map<String, dynamic>?> loadState() async {
    String? serializedData = await storage.read(key: 'data');
    return serializedData != null ? jsonDecode(serializedData) : null;
  }

  Future<void> saveJwt(String jwt) async {
    await storage.write(key: 'jwt', value: jwt);
  }

  Future<void> saveMnemonic(String mnemonic) async {
    await storage.write(key: 'mnemonic', value: mnemonic);
  }

  Future<void> savePrivateKey(String privateKey) async {
    await storage.write(key: 'privateKey', value: privateKey);
  }

  Future<void> saveState(Map<String, dynamic> data) async {
    await storage.write(key: 'data', value: jsonEncode(data));
  }
}
