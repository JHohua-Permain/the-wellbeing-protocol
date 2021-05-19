import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:the_wellbeing_protocol/generated/models/community_entity.dart';
import 'package:the_wellbeing_protocol/generated/models/token.dart';

part 'community.freezed.dart';
part 'community.g.dart';

@immutable
@freezed
class Community with _$Community {
  factory Community({
    required String address,
    required Token primaryToken,
    @Default('0') String communityFund,
    @Default([]) List<CommunityEntity> members,
  }) = _Community;

  factory Community.fromJson(Map<String, dynamic> json) =>
      _$CommunityFromJson(json);
}
