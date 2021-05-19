import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:the_wellbeing_protocol/app.dart';
import 'package:the_wellbeing_protocol/generated/models/app_state.dart';
import 'package:the_wellbeing_protocol/redux/reducers/app_state_reducer.dart';

import 'mocks.dart' as Mocks;

void main() async {
  //Init the applications data store.
  Store<AppState> store = Store(
    appStateReducer,
    initialState: AppState.initial(),
    middleware: [thunkMiddleware],
  );

  //****************************************************************************
  //Temporary. Used for authentication in the absence of a register/login screen.
  await Mocks.dummyAuthentication(store);
  //Temporary. Used to load a community.
  await Mocks.dummyLoadCommunity(store);
  //****************************************************************************

  runApp(MyApp(store));
}
