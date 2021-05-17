import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:the_wellbeing_protocol/generated/models/token.dart';

part 'user_state.freezed.dart';
part 'user_state.g.dart';

@immutable
@freezed
class UserState with _$UserState {

  factory UserState({
    required String displayName,
    required bool authenticated,
    String? phoneNumber,
    String? accountAddress,
    String? walletAddress,
    Token? currentToken,
    String? currentTokenBalance,

  }) = _UserState;

  factory UserState.initial() => UserState(
    displayName: '',
    authenticated: false,
  );

  factory UserState.fromJson(Map<String, dynamic> json) => _$UserStateFromJson(json);
}