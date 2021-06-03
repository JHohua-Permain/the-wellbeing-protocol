import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:the_wellbeing_protocol/models/authentication_state.dart';

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
  final String accountAddress;
  final ValueSetter<String> restore;

  const RestoreViewModel({
    required this.accountAddress,
    required this.restore,
  });

  @override
  List<Object?> get props => [accountAddress];
}

class VerificationViewModel extends Equatable {
  final AuthenticationState authenticationState;
  final ValueSetter<String> verify;

  const VerificationViewModel({
    required this.authenticationState,
    required this.verify,
  });

  @override
  List<Object?> get props => [authenticationState];
}

class WelcomeViewModel extends Equatable {
  final AuthenticationState authenticationState;
  final VoidCallback pushLoginScreen;
  final VoidCallback pushRestoreScreen;

  const WelcomeViewModel({
    required this.authenticationState,
    required this.pushLoginScreen,
    required this.pushRestoreScreen,
  });

  @override
  List<Object?> get props => [authenticationState];
}
