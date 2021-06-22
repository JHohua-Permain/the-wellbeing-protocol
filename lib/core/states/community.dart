import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:the_wellbeing_protocol/core/models/community_entity.dart';
import 'package:the_wellbeing_protocol/core/models/token.dart';

part 'community.freezed.dart';
part 'community.g.dart';

@immutable
@freezed
class Community with _$Community {
  const factory Community({
    String? communityAddress,
    Token? homeToken,
    @Default('0') String communityFund,
    @Default([]) @JsonKey(ignore: true) List<CommunityMember> members,
    @Default({}) @JsonKey(ignore: true) Map<String, CommunityShop> shops,
  }) = _Community;

  factory Community.fromJson(Map<String, dynamic> json) =>
      _$CommunityFromJson(json);

  factory Community.initial() => Community();
}
