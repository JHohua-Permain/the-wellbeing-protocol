import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'community_entity.freezed.dart';
part 'community_entity.g.dart';

Uint8List avatarFromJson(List<int>? json) {
  if (json == null) return Uint8List.fromList([]);
  return Uint8List.fromList(json);
}

List<int> avatarToJson(Uint8List? avatar) {
  if (avatar == null) return <int>[];
  return avatar.toList();
}

@immutable
@freezed
class CommunityEntity with _$CommunityEntity {
  factory CommunityEntity.fromJson(Map<String, dynamic> json) =>
      _$CommunityEntityFromJson(json);

  factory CommunityEntity.member({
    required String displayName,
    required String walletAddress,
    String? primaryContactNumber,
    @Default(0) int communityFundContribution,
    @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson) Uint8List? avatar,
  }) = CommunityMember;

  factory CommunityEntity.shop({
    required String displayName,
    required String walletAddress,
    String? primaryContactNumber,
    @Default(0) int communityFundContribution,
    @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson) Uint8List? avatar,
  }) = CommunityShop;

  factory CommunityEntity.userContact({
    required String displayName,
    required String walletAddress,
    String? primaryContactNumber,
    @Default(0) int communityFundContribution,
    @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson) Uint8List? avatar,
  }) = UserContact;
}
