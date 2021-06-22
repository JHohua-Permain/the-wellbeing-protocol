// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Community _$_$_CommunityFromJson(Map<String, dynamic> json) {
  return _$_Community(
    communityAddress: json['communityAddress'] as String?,
    homeToken: json['homeToken'] == null
        ? null
        : Token.fromJson(json['homeToken'] as Map<String, dynamic>),
    communityFund: json['communityFund'] as String? ?? '0',
  );
}

Map<String, dynamic> _$_$_CommunityToJson(_$_Community instance) =>
    <String, dynamic>{
      'communityAddress': instance.communityAddress,
      'homeToken': instance.homeToken?.toJson(),
      'communityFund': instance.communityFund,
    };
