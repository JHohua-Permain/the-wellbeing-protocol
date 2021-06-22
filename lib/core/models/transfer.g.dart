// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transfer _$_$_TransferFromJson(Map<String, dynamic> json) {
  return _$_Transfer(
    from: json['from'] as String,
    to: json['to'] as String,
    tokenAddress: json['tokenAddress'] as String,
    txHash: json['txHash'] as String?,
    value: BigInt.parse(json['value'] as String),
    timestamp: json['timestamp'] as int,
    status: json['status'] as String,
    blockNumber: json['blockNumber'] as int?,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$_$_TransferToJson(_$_Transfer instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'tokenAddress': instance.tokenAddress,
      'txHash': instance.txHash,
      'value': instance.value.toString(),
      'timestamp': instance.timestamp,
      'status': instance.status,
      'blockNumber': instance.blockNumber,
      'type': instance.type,
    };
