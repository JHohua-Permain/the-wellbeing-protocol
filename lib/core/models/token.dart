import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@immutable
@freezed
class Token with _$Token {
  const factory Token({
    required String address,
    @Default('') String name,
    @Default('') String symbol,
    @Default('0') String decimals,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}
