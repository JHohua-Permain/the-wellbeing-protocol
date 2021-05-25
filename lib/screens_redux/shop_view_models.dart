import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:the_wellbeing_protocol/models/community_entity.dart';

class SelectShopViewModel extends Equatable {
  final List<CommunityShop> shops;
  final VoidCallback pushShopScreen;

  const SelectShopViewModel({
    required this.shops,
    required this.pushShopScreen,
  });

  @override
  List<Object?> get props => [shops];
}
