import 'dart:typed_data';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:redux_persist/redux_persist.dart';

class AppStorageEngine extends StorageEngine {
  final FlutterSecureStorage storage;

  AppStorageEngine(this.storage);

  @override
  Future<Uint8List?> load() async {
    String? serializedData = await storage.read(key: 'data');
    return stringToUint8List(serializedData);
  }

  @override
  Future<void> save(Uint8List? data) async {
    await storage.write(key: 'data', value: uint8ListToString(data));
  }
}
