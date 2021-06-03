// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    primaryContactNum: json['primaryContactNum'] as String?,
    accountAddress: json['accountAddress'] as String? ?? '',
    walletAddress: json['walletAddress'] as String? ?? '',
    displayName: json['displayName'] as String? ?? 'Anon',
    communities: (json['communities'] as List<dynamic>?)
            ?.map((e) => Community.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    wallet: (json['wallet'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, e as String),
        ) ??
        {},
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'primaryContactNum': instance.primaryContactNum,
      'accountAddress': instance.accountAddress,
      'walletAddress': instance.walletAddress,
      'displayName': instance.displayName,
      'communities': instance.communities.map((e) => e.toJson()).toList(),
      'wallet': instance.wallet,
    };
