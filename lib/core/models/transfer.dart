import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transfer.freezed.dart';
part 'transfer.g.dart';

@immutable
@freezed
class Transfer with _$Transfer {
  const factory Transfer({
    required String from,
    // required String isSwap,
    required String to,
    required String tokenAddress,
    String? txHash,
    required BigInt value,
    required int timestamp,
    required String status,
    int? blockNumber,
    required String type,
  }) = _Transfer;

  factory Transfer.fromJson(Map<String, dynamic> json) =>
      _$TransferFromJson(json);

//   const factory Transfer({
//     @Default(0) int timestamp,
//     @JsonKey(name: '_id') required String id,
//     required String name,
//     @Default(null) String? txHash,
//     required String status,
//     @Default(0) int? blockNumber,
//     required String tokenAddress,
//     required String from,
//     required String to,
//     required BigInt value,
//     required String tokenName,
//     required String tokenSymbol,
//     required int tokenDecimal,
//   }) = _Transfer;
}
