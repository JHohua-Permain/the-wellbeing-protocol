import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

String decimalsFromJson(BigInt decimals) => decimals.toString();
BigInt decimalsToJson(String decimals) => BigInt.parse(decimals);

@immutable
@freezed
class Token with _$Token {
  factory Token({
    required String address,
    required String name,
    required String symbol,
    @JsonKey(fromJson: decimalsFromJson, toJson: decimalsToJson)
        required String decimals,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  factory Token.initial() => Token(
        address: '',
        name: '',
        symbol: '',
        decimals: '',
      );
}
