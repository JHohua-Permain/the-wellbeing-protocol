// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommunityMember _$_$CommunityMemberFromJson(Map<String, dynamic> json) {
  return _$CommunityMember(
    walletAddress: json['walletAddress'] as String,
    primaryContactNum: json['primaryContactNum'] as String?,
    displayName: json['displayName'] as String? ?? '',
    communityFundContribution: json['communityFundContribution'] as int? ?? 0,
    avatar: avatarFromJson(json['avatar'] as List<int>),
  );
}

Map<String, dynamic> _$_$CommunityMemberToJson(_$CommunityMember instance) =>
    <String, dynamic>{
      'walletAddress': instance.walletAddress,
      'primaryContactNum': instance.primaryContactNum,
      'displayName': instance.displayName,
      'communityFundContribution': instance.communityFundContribution,
      'avatar': avatarToJson(instance.avatar),
    };

_$CommunityShop _$_$CommunityShopFromJson(Map<String, dynamic> json) {
  return _$CommunityShop(
    walletAddress: json['walletAddress'] as String,
    locations:
        (json['locations'] as List<dynamic>).map((e) => e as String).toList(),
    primaryContactNum: json['primaryContactNum'] as String?,
    displayName: json['displayName'] as String? ?? '',
    items: (json['items'] as List<dynamic>?)
            ?.map((e) => ShopItem.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    communityFundContribution: json['communityFundContribution'] as int? ?? 0,
    avatar: avatarFromJson(json['avatar'] as List<int>),
  );
}

Map<String, dynamic> _$_$CommunityShopToJson(_$CommunityShop instance) =>
    <String, dynamic>{
      'walletAddress': instance.walletAddress,
      'locations': instance.locations,
      'primaryContactNum': instance.primaryContactNum,
      'displayName': instance.displayName,
      'items': instance.items,
      'communityFundContribution': instance.communityFundContribution,
      'avatar': avatarToJson(instance.avatar),
    };
