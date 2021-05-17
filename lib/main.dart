import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:the_wellbeing_protocol/app.dart';
import 'package:the_wellbeing_protocol/generated/models/app_state.dart';
import 'package:the_wellbeing_protocol/redux/reducers/app_state_reducer.dart';
import 'redux/actions/user_actions.dart';
import 'package:the_wellbeing_protocol/services.dart' as Services;
import 'package:the_wellbeing_protocol/constants.dart' as Constants;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const String name = "Jeremy";
const String phoneNum = '';
const String mnemonic = '';

//TODO
Future<void> dummyAuthenticate(Store<AppState> store) async {
  await store.dispatch(restoreWallet(mnemonic));
  await store
      .dispatch(login(name, phoneNum, store.state.userState.accountAddress!));
  await store.dispatch(getCurrentToken(Constants.JEZ_TOKEN_ADDRESS));
  await store.dispatch(getWallet());
}

void main() async {
  //Init services.
  Services.setup();

  //****************************************************************************
  //Init local storage
  FlutterSecureStorage storage = FlutterSecureStorage();
  Map<String, String> storedMap = await storage.readAll();
  //****************************************************************************
  //Init app data store.
  Store<AppState> store = Store(
    appStateReducer,
    initialState: AppState.initial(),
    middleware: [thunkMiddleware],
  );

  await dummyAuthenticate(store);

  runApp(MyApp(store));
}