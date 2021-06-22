import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:the_wellbeing_protocol/core/models/community_entity.dart';
import 'package:the_wellbeing_protocol/core/models/shop_item.dart';

class SendToCommunityFundViewModel extends Equatable {
  final String tokenSymbol;
  final ValueSetter<String> submitSendAmount;

  const SendToCommunityFundViewModel({
    required this.tokenSymbol,
    required this.submitSendAmount,
  });

  @override
  List<Object> get props => [tokenSymbol];
}

class SendToContactViewModel extends Equatable {
  final CommunityEntity contact;
  final String tokenSymbol;
  final ValueSetter<String> submitSendAmount;

  const SendToContactViewModel({
    required this.contact,
    required this.tokenSymbol,
    required this.submitSendAmount,
  });

  @override
  List<Object> get props => [contact, tokenSymbol];
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
