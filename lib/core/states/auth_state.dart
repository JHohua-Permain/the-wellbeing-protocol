import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@immutable
@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated() = Authenticated;

  const factory AuthState.awaitingLogin() = AwaitingLogin;

  const factory AuthState.awaitingVerification([
    String? verificationId,
  ]) = AwaitingVerification;

  const factory AuthState.initial() = Initial;

  const factory AuthState.unauthenticated() = Unauthenticated;
}
