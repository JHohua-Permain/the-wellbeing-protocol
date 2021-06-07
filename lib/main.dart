import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:the_wellbeing_protocol/app.dart';
import 'package:the_wellbeing_protocol/redux/app_store.dart';
import 'package:the_wellbeing_protocol/services/app_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppServices services = AppServicesBuilder.init();
  AppStore store = await AppStoreBuilder.init(services);
  await Firebase.initializeApp();
  runApp(MyApp(store));
}
