import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/core/state/authentication_state.dart';
import 'package:the_wellbeing_protocol/features/authentication/screens/login_screen.dart';
import 'package:the_wellbeing_protocol/features/authentication/authentication_view_models.dart';

final ValueSetter mockValueSetter = (_) {};
final VoidCallback mockVoidCallback = () {};

LoginScreen mockLoginScreen() {
  LoginViewModel vm =  LoginViewModel(
    authenticationState: AuthenticationState.unauthenticated(),
    login: mockValueSetter,
  );

  return LoginScreen(vm);
}
