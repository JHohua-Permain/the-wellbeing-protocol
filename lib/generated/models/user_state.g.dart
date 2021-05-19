// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserState _$_$_UserStateFromJson(Map<String, dynamic> json) {
  return _$_UserState(
    displayName: json['displayName'] as String,
    phoneNumber: json['phoneNumber'] as String,
    accountAddress: json['accountAddress'] as String,
    walletAddress: json['walletAddress'] as String,
    currentToken: json['currentToken'] == null
        ? null
        : Token.fromJson(json['currentToken'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserStateToJson(_$_UserState instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'phoneNumber': instance.phoneNumber,
      'accountAddress': instance.accountAddress,
      'walletAddress': instance.walletAddress,
      'currentToken': instance.currentToken,
    };
