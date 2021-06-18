import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:the_wellbeing_protocol/core/models/community.dart';
import 'package:the_wellbeing_protocol/core/models/community_entity.dart';
import 'package:the_wellbeing_protocol/core/models/transfer.dart';
import 'package:the_wellbeing_protocol/core/state/authentication_state.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@immutable
@freezed
class User with _$User {
  @JsonSerializable(explicitToJson: true)
  const factory User({
    String? accountAddress,
    String? walletAddress,
    String? primaryContactNum,
    @Default('Anon') String displayName,
    @Default([]) List<Community> communities,
    @Default({}) Map<String, String> wallet,
    @Default([]) List<Transfer> transfers,
    @Default([]) @JsonKey(ignore: true) List<CommunityEntity> contacts,
    @JsonKey(ignore: true) CommunityEntity? sendToContact,
    @Default(AuthenticationState.initial())
    @JsonKey(ignore: true)
        AuthenticationState authenticationState,
    @JsonKey(ignore: true) List<String>? mnemonic,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.initial() => User();

  const User._();

  bool get authenticated => (authenticationState is Authenticated);
}
