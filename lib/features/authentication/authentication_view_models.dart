import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:the_wellbeing_protocol/core/state/authentication_state.dart';

class LoginViewModel extends Equatable {
  final AuthenticationState authenticationState;
  final ValueSetter<String> login;

  const LoginViewModel({
    required this.authenticationState,
    required this.login,
  });

  @override
  List<Object?> get props => [authenticationState];
}

class RestoreViewModel extends Equatable {
  final AuthenticationState authenticationState;
  final ValueSetter<String> restore;

  const RestoreViewModel({
    required this.authenticationState,
    required this.restore,
  });

  @override
  List<Object?> get props => [authenticationState];
}

class SplashViewModel extends Equatable {
  final AuthenticationState authenticationState;

  const SplashViewModel({
    required this.authenticationState,
  });

  @override
  List<Object?> get props => [authenticationState];
}

class VerificationViewModel extends Equatable {
  final AuthenticationState authenticationState;
  final String phoneNum;
  final ValueSetter<String> verify;

  const VerificationViewModel({
    required this.authenticationState,
    required this.phoneNum,
    required this.verify,
  });

  @override
  List<Object?> get props => [authenticationState];
}

class WelcomeViewModel {
  final VoidCallback pushLoginScreen;
  final VoidCallback pushRestoreScreen;

  const WelcomeViewModel({
    required this.pushLoginScreen,
    required this.pushRestoreScreen,
  });
}
