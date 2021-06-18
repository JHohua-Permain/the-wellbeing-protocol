// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    accountAddress: json['accountAddress'] as String?,
    walletAddress: json['walletAddress'] as String?,
    primaryContactNum: json['primaryContactNum'] as String?,
    displayName: json['displayName'] as String? ?? 'Anon',
    communities: (json['communities'] as List<dynamic>?)
            ?.map((e) => Community.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    wallet: (json['wallet'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, e as String),
        ) ??
        {},
    transfers: (json['transfers'] as List<dynamic>?)
            ?.map((e) => Transfer.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'accountAddress': instance.accountAddress,
      'walletAddress': instance.walletAddress,
      'primaryContactNum': instance.primaryContactNum,
      'displayName': instance.displayName,
      'communities': instance.communities.map((e) => e.toJson()).toList(),
      'wallet': instance.wallet,
      'transfers': instance.transfers.map((e) => e.toJson()).toList(),
    };
