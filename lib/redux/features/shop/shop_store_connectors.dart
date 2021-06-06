import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/ui/screens/shop/select_shop_screen.dart';
import 'package:the_wellbeing_protocol/ui/view_models/shop_view_models.dart';
import 'package:the_wellbeing_protocol/redux/features/shop/shop_actions.dart';

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
        store.dispatch(fetchShops());
      },
    );
  }
}
