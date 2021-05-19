// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Community _$_$_CommunityFromJson(Map<String, dynamic> json) {
  return _$_Community(
    communityAddress: json['communityAddress'] as String,
    homeToken: Token.fromJson(json['homeToken'] as Map<String, dynamic>),
    communityFund: json['communityFund'] as String? ?? '0',
    members: (json['members'] as List<dynamic>?)
            ?.map((e) => CommunityEntity.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    shops: (json['shops'] as List<dynamic>?)
            ?.map((e) => CommunityShop.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_CommunityToJson(_$_Community instance) =>
    <String, dynamic>{
      'communityAddress': instance.communityAddress,
      'homeToken': instance.homeToken,
      'communityFund': instance.communityFund,
      'members': instance.members,
      'shops': instance.shops,
    };
