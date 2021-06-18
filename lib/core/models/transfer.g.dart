// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transfer _$_$_TransferFromJson(Map<String, dynamic> json) {
  return _$_Transfer(
    type: _$enumDecode(_$TransferTypeEnumMap, json['type']),
    timestamp: json['timestamp'] as int,
    id: json['_id'] as String,
    name: json['name'] as String,
    txHash: json['txHash'] as String,
    status: json['status'] as String,
    blockNumber: json['blockNumber'] as int,
    tokenAddress: json['tokenAddress'] as String,
    from: json['from'] as String,
    to: json['to'] as String,
    value: BigInt.parse(json['value'] as String),
    tokenName: json['tokenName'] as String,
    tokenSymbol: json['tokenSymbol'] as String,
    tokenDecimal: json['tokenDecimal'] as int,
  );
}

Map<String, dynamic> _$_$_TransferToJson(_$_Transfer instance) =>
    <String, dynamic>{
      'type': _$TransferTypeEnumMap[instance.type],
      'timestamp': instance.timestamp,
      '_id': instance.id,
      'name': instance.name,
      'txHash': instance.txHash,
      'status': instance.status,
      'blockNumber': instance.blockNumber,
      'tokenAddress': instance.tokenAddress,
      'from': instance.from,
      'to': instance.to,
      'value': instance.value.toString(),
      'tokenName': instance.tokenName,
      'tokenSymbol': instance.tokenSymbol,
      'tokenDecimal': instance.tokenDecimal,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$TransferTypeEnumMap = {
  TransferType.SEND: 'SEND',
  TransferType.RECEIVE: 'RECEIVE',
};
