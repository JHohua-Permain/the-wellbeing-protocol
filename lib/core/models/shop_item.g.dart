// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopItem _$_$_ShopItemFromJson(Map<String, dynamic> json) {
  return _$_ShopItem(
    id: json['id'] as String,
    name: json['name'] as String,
    cost: json['cost'] as int,
    stock: json['stock'] as int,
  );
}

Map<String, dynamic> _$_$_ShopItemToJson(_$_ShopItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cost': instance.cost,
      'stock': instance.stock,
    };
