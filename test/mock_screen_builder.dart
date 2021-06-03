import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/models/authentication_state.dart';
import 'package:the_wellbeing_protocol/ui/screens/authentication/login_screen.dart';
import 'package:the_wellbeing_protocol/ui/view_models/authentication_view_models.dart';

final ValueSetter mockValueSetter = (_) {};
final VoidCallback mockVoidCallback = () {};

LoginScreen mockLoginScreen() {
  LoginViewModel vm =  LoginViewModel(
    authenticationState: AuthenticationState.unauthenticated(),
    login: mockValueSetter,
  );

  return LoginScreen(vm);
}
