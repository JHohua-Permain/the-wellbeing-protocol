import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:the_wellbeing_protocol/core/states/auth_state.dart';

class LoginViewModel extends Equatable {
  final AuthState authState;
  final ValueSetter<String> login;

  const LoginViewModel({
    required this.authState,
    required this.login,
  });

  @override
  List<Object?> get props => [authState];
}

class RestoreViewModel extends Equatable {
  final AuthState authState;
  final ValueSetter<String> restore;

  const RestoreViewModel({
    required this.authState,
    required this.restore,
  });

  @override
  List<Object?> get props => [authState];
}

class SplashViewModel extends Equatable {
  final AuthState authState;

  const SplashViewModel({
    required this.authState,
  });

  @override
  List<Object?> get props => [authState];
}

class VerificationViewModel extends Equatable {
  final AuthState authState;
  final String phoneNum;
  final ValueSetter<String> verify;

  const VerificationViewModel({
    required this.authState,
    required this.phoneNum,
    required this.verify,
  });

  @override
  List<Object?> get props => [authState];
}

class WelcomeViewModel {
  final VoidCallback pushLoginScreen;
  final VoidCallback pushRestoreScreen;

  const WelcomeViewModel({
    required this.pushLoginScreen,
    required this.pushRestoreScreen,
  });
}
