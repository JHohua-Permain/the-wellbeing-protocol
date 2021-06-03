import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/app.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/redux/app_store.dart';
import 'package:the_wellbeing_protocol/services/app_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AppServices services = AppServices.init();

  Store<AppState> store = await buildStore(services);

  await Firebase.initializeApp();

  runApp(MyApp(store));
}
