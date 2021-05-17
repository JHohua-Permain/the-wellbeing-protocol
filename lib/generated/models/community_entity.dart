import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'community_entity.freezed.dart';

@immutable
@freezed
class CommunityEntity with _$CommunityEntity {
  factory CommunityEntity.member({
    required String displayName,
    required String walletAddress,
    String? primaryContactNumber,
    String? communityFundContribution,
    Uint8List? avatar,
  }) = CommunityMember;

  factory CommunityEntity.store({
    required String displayName,
    required String walletAddress,
    String? primaryContactNumber,
    Uint8List? avatar,
  }) = CommunityStore;
}