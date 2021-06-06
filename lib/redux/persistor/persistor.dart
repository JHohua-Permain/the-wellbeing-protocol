import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:redux_persist/redux_persist.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/redux/persistor/storage_engine.dart';

Persistor<AppState> buildPersistor(FlutterSecureStorage secureStorage) {
  StorageEngine storageEngine = AppStorageEngine(secureStorage);
  JsonSerializer<AppState> serializer =
      JsonSerializer((json) => AppState.fromJson(json));
  return Persistor(storage: storageEngine, serializer: serializer);
}
