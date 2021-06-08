import 'package:the_wellbeing_protocol/core/state/authentication_state.dart';
import 'package:the_wellbeing_protocol/redux/common/common_actions.dart';

class BeginAuthentication implements BeginningAction {}

class BeginLogin implements BeginningAction {
  final String phoneNum;
  BeginLogin(this.phoneNum);
}

class BeginRestore implements BeginningAction {
  final String mnemonic;
  BeginRestore(this.mnemonic);
}

class BeginVerification implements BeginningAction {
  final AuthenticationState authenticationState;
  final String? verificationCode;
  BeginVerification(
    this.authenticationState, [
    this.verificationCode,
  ]);
}

class CompleteAuthentication implements CompletingAction {
  final AuthenticationState authenticationState =
      AuthenticationState.authenticated();
}

class CompleteLogin implements CompletingAction {
  final AuthenticationState authenticationState;

  CompleteLogin(String phoneNum, [String? verificationId])
      : authenticationState = AuthenticationState.awaitingVerification(
          phoneNum,
          verificationId,
        );
}

class CompleteRestore implements CompletingAction {
  final AuthenticationState authenticationState =
      AuthenticationState.awaitingLogin();
}

class CompleteVerification implements CompletingAction {
  final String accountAddress;
  final String primaryContactNum;
  final AuthenticationState authenticationState =
      AuthenticationState.authenticated();

  CompleteVerification(this.accountAddress, this.primaryContactNum);
}

class FailedAuthentication implements CompletingAction {
  final AuthenticationState authenticationState =
      AuthenticationState.unauthenticated();
}
