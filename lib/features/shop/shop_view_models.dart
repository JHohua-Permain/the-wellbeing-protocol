import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:the_wellbeing_protocol/core/models/community_entity.dart';
import 'package:the_wellbeing_protocol/core/models/shop_item.dart';

class SelectShopViewModel extends Equatable {
  final List<CommunityShop> shops;
  final ValueSetter<int> selectShop;

  const SelectShopViewModel({
    required this.shops,
    required this.selectShop,
  });

  @override
  List<Object?> get props => [shops];
}

class ShopItemDetailsViewModel extends Equatable {
  final CommunityShop shop;
  final ShopItem shopItem;
  final String tokenSymbol;
  final void Function(int, String) checkout;

  const ShopItemDetailsViewModel({
    required this.shop,
    required this.shopItem,
    required this.tokenSymbol,
    required this.checkout,
  });

  @override
  List<Object?> get props => [shop, shopItem, tokenSymbol];
}

class ShopViewModel extends Equatable {
  final CommunityShop shop;
  final String tokenSymbol;
  final ValueSetter<int> selectItem;

  const ShopViewModel({
    required this.shop,
    required this.tokenSymbol,
    required this.selectItem,
  });

  @override
  List<Object?> get props => [shop, tokenSymbol];
}
