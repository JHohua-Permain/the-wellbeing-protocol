import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shop_item.freezed.dart';
part 'shop_item.g.dart';

@immutable
@freezed
class ShopItem with _$ShopItem {
  const factory ShopItem({
    required String id,
    required String name,
    required int cost,
    required int stock,
  }) = _ShopItem;

  factory ShopItem.fromJson(Map<String, dynamic> json) =>
      _$ShopItemFromJson(json);
}
