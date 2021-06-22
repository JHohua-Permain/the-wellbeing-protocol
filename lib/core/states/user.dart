import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:the_wellbeing_protocol/core/models/community_entity.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@immutable
@freezed
class User with _$User {
  const factory User({
    String? accountAddress,
    String? walletAddress,
    String? primaryContactNum,
    @Default('Anon') String displayName,
    @Default([]) List<String> communities,
    @Default({}) Map<String, String> wallet,
    String? mnemonic,
    String? jwt,
    @Default([]) @JsonKey(ignore: true) List<CommunityEntity> contacts,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.initial() => User();
}
