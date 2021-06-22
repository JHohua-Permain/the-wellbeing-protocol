import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/core/states/auth_state.dart';
import 'package:the_wellbeing_protocol/features/authentication/authentication_view_models.dart';
import 'package:the_wellbeing_protocol/features/authentication/screens/login_screen.dart';

final ValueSetter mockValueSetter = (_) {};
final VoidCallback mockVoidCallback = () {};

LoginScreen mockLoginScreen() {
  LoginViewModel vm = LoginViewModel(
    authState: AuthState.unauthenticated(),
    login: mockValueSetter,
  );

  return LoginScreen(vm);
}
