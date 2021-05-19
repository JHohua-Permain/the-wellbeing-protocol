// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Community _$_$_CommunityFromJson(Map<String, dynamic> json) {
  return _$_Community(
    address: json['address'] as String,
    primaryToken: Token.fromJson(json['primaryToken'] as Map<String, dynamic>),
    communityFund: json['communityFund'] as String? ?? '0',
    members: (json['members'] as List<dynamic>?)
            ?.map((e) => CommunityEntity.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_CommunityToJson(_$_Community instance) =>
    <String, dynamic>{
      'address': instance.address,
      'primaryToken': instance.primaryToken,
      'communityFund': instance.communityFund,
      'members': instance.members,
    };
