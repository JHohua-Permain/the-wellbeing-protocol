// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommunityMember _$_$CommunityMemberFromJson(Map<String, dynamic> json) {
  return _$CommunityMember(
    displayName: json['displayName'] as String,
    walletAddress: json['walletAddress'] as String,
    primaryContactNumber: json['primaryContactNumber'] as String?,
    communityFundContribution: json['communityFundContribution'] as int? ?? 0,
    avatar: avatarFromJson(json['avatar'] as List<int>),
  );
}

Map<String, dynamic> _$_$CommunityMemberToJson(_$CommunityMember instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'walletAddress': instance.walletAddress,
      'primaryContactNumber': instance.primaryContactNumber,
      'communityFundContribution': instance.communityFundContribution,
      'avatar': avatarToJson(instance.avatar),
    };

_$CommunityShop _$_$CommunityShopFromJson(Map<String, dynamic> json) {
  return _$CommunityShop(
    displayName: json['displayName'] as String,
    walletAddress: json['walletAddress'] as String,
    primaryContactNumber: json['primaryContactNumber'] as String?,
    communityFundContribution: json['communityFundContribution'] as int? ?? 0,
    avatar: avatarFromJson(json['avatar'] as List<int>),
  );
}

Map<String, dynamic> _$_$CommunityShopToJson(_$CommunityShop instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'walletAddress': instance.walletAddress,
      'primaryContactNumber': instance.primaryContactNumber,
      'communityFundContribution': instance.communityFundContribution,
      'avatar': avatarToJson(instance.avatar),
    };

_$UserContact _$_$UserContactFromJson(Map<String, dynamic> json) {
  return _$UserContact(
    displayName: json['displayName'] as String,
    walletAddress: json['walletAddress'] as String,
    primaryContactNumber: json['primaryContactNumber'] as String?,
    communityFundContribution: json['communityFundContribution'] as int? ?? 0,
    avatar: avatarFromJson(json['avatar'] as List<int>),
  );
}

Map<String, dynamic> _$_$UserContactToJson(_$UserContact instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'walletAddress': instance.walletAddress,
      'primaryContactNumber': instance.primaryContactNumber,
      'communityFundContribution': instance.communityFundContribution,
      'avatar': avatarToJson(instance.avatar),
    };
