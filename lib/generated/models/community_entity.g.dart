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
    communityFundContribution:
        json['communityFundContribution'] as String? ?? '0',
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

_$CommunityStore _$_$CommunityStoreFromJson(Map<String, dynamic> json) {
  return _$CommunityStore(
    displayName: json['displayName'] as String,
    walletAddress: json['walletAddress'] as String,
    primaryContactNumber: json['primaryContactNumber'] as String?,
    communityFundContribution:
        json['communityFundContribution'] as String? ?? '0',
    avatar: avatarFromJson(json['avatar'] as List<int>),
  );
}

Map<String, dynamic> _$_$CommunityStoreToJson(_$CommunityStore instance) =>
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
    avatar: avatarFromJson(json['avatar'] as List<int>),
  );
}

Map<String, dynamic> _$_$UserContactToJson(_$UserContact instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'walletAddress': instance.walletAddress,
      'primaryContactNumber': instance.primaryContactNumber,
      'avatar': avatarToJson(instance.avatar),
    };
