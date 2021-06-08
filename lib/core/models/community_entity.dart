import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'community_entity.freezed.dart';
part 'community_entity.g.dart';

Uint8List avatarFromJson(List<int>? json) {
  return Uint8List.fromList(json ?? []);
}

List<int> avatarToJson(Uint8List? avatar) {
  return avatar?.toList() ?? [];
}

@immutable
@freezed
class CommunityEntity with _$CommunityEntity {
  factory CommunityEntity.fromJson(Map<String, dynamic> json) =>
      _$CommunityEntityFromJson(json);

  const factory CommunityEntity.member({
    required String walletAddress,
    String? primaryContactNum,
    @Default('') String displayName,
    @Default(0) int communityFundContribution,
    @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson) Uint8List? avatar,
  }) = CommunityMember;

  const factory CommunityEntity.shop({
    required String walletAddress,
    String? primaryContactNum,
    @Default('') String displayName,
    @Default(0) int communityFundContribution,
    @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson) Uint8List? avatar,
  }) = CommunityShop;
}
