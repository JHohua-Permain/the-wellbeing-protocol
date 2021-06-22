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
            ?.map((e) => e as String)
            .toList() ??
        [],
    wallet: (json['wallet'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, e as String),
        ) ??
        {},
    mnemonic: json['mnemonic'] as String?,
    jwt: json['jwt'] as String?,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'accountAddress': instance.accountAddress,
      'walletAddress': instance.walletAddress,
      'primaryContactNum': instance.primaryContactNum,
      'displayName': instance.displayName,
      'communities': instance.communities,
      'wallet': instance.wallet,
      'mnemonic': instance.mnemonic,
      'jwt': instance.jwt,
    };
