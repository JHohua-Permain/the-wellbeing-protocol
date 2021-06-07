import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';

@immutable
@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.authenticated() = Authenticated;
  const factory AuthenticationState.awaitingLogin() = AwaitingLogin;
  const factory AuthenticationState.awaitingVerification(
    String phoneNumber, [
    String? verificationId,
  ]) = AwaitingVerification;
  const factory AuthenticationState.initial() = Initial;
  const factory AuthenticationState.unauthenticated() = Unauthenticated;
}
