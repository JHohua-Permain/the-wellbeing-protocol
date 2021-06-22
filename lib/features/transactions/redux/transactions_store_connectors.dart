import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/core/states/app_state.dart';
import 'package:the_wellbeing_protocol/features/transactions/screens/send_to_community_fund_screen.dart';
import 'package:the_wellbeing_protocol/features/transactions/screens/send_to_contact_screen.dart';
import 'package:the_wellbeing_protocol/features/transactions/screens/shop_item_details_screen.dart';
import 'package:the_wellbeing_protocol/features/transactions/transaction_view_models.dart';

class SendToCommunityFundConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SendToCommunityFundViewModel>(
      distinct: true,
      builder: (context, vm) => SendToCommunityFundScreen(vm),
      converter: (store) => SendToCommunityFundViewModel(
        tokenSymbol: store.state.community.homeToken!.symbol,
        submitSendAmount: (amount) {
          // TODO
        },
      ),
    );
  }
}

class SendToContactConnector extends StatelessWidget {
  final String contactId;

  SendToContactConnector(@PathParam('contactId') this.contactId);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SendToContactViewModel>(
      distinct: true,
      builder: (context, vm) => SendToContactScreen(vm),
      converter: (store) => SendToContactViewModel(
        contact: store.state.user.contacts.singleWhere((contact) {
          return contact.walletAddress == contactId;
        }),
        tokenSymbol: store.state.community.homeToken!.symbol,
        submitSendAmount: (amount) {
          // TODO
        },
      ),
    );
  }
}

class ShopItemDetailsConnector extends StatelessWidget {
  final String shopId;
  final String itemId;

  ShopItemDetailsConnector(
    @PathParam('shopId') this.shopId,
    @PathParam('itemId') this.itemId,
  );

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ShopItemDetailsViewModel>(
      distinct: true,
      builder: (context, vm) => ShopItemDetailsScreen(vm),
      converter: (store) => ShopItemDetailsViewModel(
        shop: store.state.community.shops[shopId]!,
        shopItem: store.state.community.shops[shopId]!.items[itemId]!,
        tokenSymbol: store.state.community.homeToken!.symbol,
        checkout: (count, location) {
          // TODO.
        },
      ),
    );
  }
}
