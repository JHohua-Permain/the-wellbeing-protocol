import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/core/models/community_entity.dart';
import 'package:the_wellbeing_protocol/core/models/shop_item.dart';
import 'package:the_wellbeing_protocol/core/state/app_state.dart';
import 'package:the_wellbeing_protocol/features/shop/redux/shop_actions.dart';
import 'package:the_wellbeing_protocol/features/shop/screens/select_shop_screen.dart';
import 'package:the_wellbeing_protocol/features/shop/screens/shop_item_details_screen.dart';
import 'package:the_wellbeing_protocol/features/shop/screens/shop_screen.dart';
import 'package:the_wellbeing_protocol/features/shop/shop_view_models.dart';
import 'package:the_wellbeing_protocol/routing/app_router.gr.dart';

class SelectShopConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SelectShopViewModel>(
      distinct: true,
      builder: (context, vm) => SelectShopScreen(vm),
      converter: (store) => SelectShopViewModel(
        shops: store.state.community.shops,
        selectShop: (index) {
          AutoRouter.of(context).navigate(ShopPage(
            selectedShop: store.state.community.shops[index],
          ));
        },
      ),
      onInit: (store) {
        store.dispatch(FetchShops());
      },
    );
  }
}

class ShopConnector extends StatelessWidget {
  final CommunityShop selectedShop;

  ShopConnector(this.selectedShop);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ShopViewModel>(
      distinct: true,
      builder: (context, vm) => ShopScreen(vm),
      converter: (store) => ShopViewModel(
        shop: selectedShop,
        tokenSymbol: store.state.community.homeToken!.symbol,
        selectItem: (index) {
          AutoRouter.of(context).navigate(ShopItemDetailsPage(
            selectedShop: selectedShop,
            shopItem: selectedShop.items[index],
          ));
        },
      ),
    );
  }
}

class ShopItemDetailsConnector extends StatelessWidget {
  final CommunityShop selectedShop;
  final ShopItem shopItem;

  ShopItemDetailsConnector(this.selectedShop, this.shopItem);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ShopItemDetailsViewModel>(
      distinct: true,
      builder: (context, vm) => ShopItemDetailsScreen(vm),
      converter: (store) => ShopItemDetailsViewModel(
        shop: selectedShop,
        shopItem: shopItem,
        tokenSymbol: store.state.community.homeToken!.symbol,
        checkout: (count, location) {
          // TODO.
        },
      ),
    );
  }
}
