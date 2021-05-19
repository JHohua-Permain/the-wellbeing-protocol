import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:the_wellbeing_protocol/generated/models/community_entity.dart';
import 'package:the_wellbeing_protocol/generated/models/token.dart';

part 'user_state.freezed.dart';
part 'user_state.g.dart';

@immutable
@freezed
class UserState with _$UserState {
  factory UserState({
    required String displayName,
    required String phoneNumber,
    @JsonKey(ignore: true) @Default(<UserContact>[]) List<UserContact> contacts,

    //Users web3 data.
    required String accountAddress,

    //Flags
    @JsonKey(ignore: true) @Default(false) bool authenticated,

    //TODO: Maybe move these into a separate model.
    //Users wallet data.
    required String walletAddress,
    Token? currentToken,
    @JsonKey(ignore: true) String? currentTokenBalance,
  }) = _UserState;

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);

  factory UserState.initial() => UserState(
        displayName: '',
        phoneNumber: '',
        accountAddress: '',
        walletAddress: '',
      );
}
