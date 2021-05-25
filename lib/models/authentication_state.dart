import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';

@immutable
@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.authenticated() = Authenticated;
  const factory AuthenticationState.awaitingVerification(
    String phoneNumber,
    String verificationCode,
  ) = AwaitingVerification;
  const factory AuthenticationState.unauthenticated() = Unauthenticated;
}
