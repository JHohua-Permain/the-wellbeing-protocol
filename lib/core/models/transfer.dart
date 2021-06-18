import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transfer.freezed.dart';
part 'transfer.g.dart';

@immutable
@freezed
class Transfer with _$Transfer {
  const factory Transfer({
    required TransferType type,
    required int timestamp,
    @JsonKey(name: '_id') required String id,
    required String name,
    required String txHash,
    required String status,
    required int blockNumber,
    required String tokenAddress,
    required String from,
    required String to,
    required BigInt value,
    required String tokenName,
    required String tokenSymbol,
    required int tokenDecimal,
  }) = _Transfer;

  factory Transfer.fromJson(Map<String, dynamic> json) =>
      _$TransferFromJson(json);
}

enum TransferType { SEND, RECEIVE }
