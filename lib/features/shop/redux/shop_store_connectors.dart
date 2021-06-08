import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/core/state/app_state.dart';
import 'package:the_wellbeing_protocol/features/shop/redux/shop_actions.dart';
import 'package:the_wellbeing_protocol/features/shop/screens/select_shop_screen.dart';
import 'package:the_wellbeing_protocol/features/shop/shop_view_models.dart';

class SelectShopConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SelectShopViewModel>(
      distinct: true,
      builder: (context, vm) => SelectShopScreen(vm),
      converter: (store) => SelectShopViewModel(
        shops: store.state.community.shops,
        pushShopScreen: () {
          //TODO: Implement.
        },
      ),
      onInit: (store) {
        store.dispatch(FetchShops());
      },
    );
  }
}
