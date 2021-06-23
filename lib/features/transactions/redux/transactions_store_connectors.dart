import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/core/states/app_state.dart';
import 'package:the_wellbeing_protocol/features/transactions/screens/send_to_community_fund_review_screen.dart';
import 'package:the_wellbeing_protocol/features/transactions/screens/send_to_community_fund_screen.dart';
import 'package:the_wellbeing_protocol/features/transactions/screens/send_to_contact_review_screen.dart';
import 'package:the_wellbeing_protocol/features/transactions/screens/send_to_contact_screen.dart';
import 'package:the_wellbeing_protocol/features/transactions/screens/shop_checkout_review_screen.dart';
import 'package:the_wellbeing_protocol/features/transactions/screens/shop_item_details_screen.dart';
import 'package:the_wellbeing_protocol/features/transactions/screens/transaction_success_screen.dart';
import 'package:the_wellbeing_protocol/features/transactions/transaction_view_models.dart';
import 'package:the_wellbeing_protocol/routing/app_router.gr.dart';

class SendToCommunityFundConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SendToCommunityFundViewModel>(
      distinct: true,
      builder: (context, vm) => SendToCommunityFundScreen(vm),
      converter: (store) => SendToCommunityFundViewModel(
        tokenSymbol: store.state.community.homeToken!.symbol,
        submitSendAmount: (amount) {
          context.router.navigate(
            SendToCommunityFundReviewPage(amount: amount),
          );
        },
      ),
    );
  }
}

class SendToCommunityFundReviewConnector extends StatelessWidget {
  final String amount;

  SendToCommunityFundReviewConnector(this.amount);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SendToCommunityFundReviewViewModel>(
      distinct: true,
      builder: (context, vm) => SendToCommunityFundReviewScreen(vm),
      converter: (store) => SendToCommunityFundReviewViewModel(
        amount: amount,
        tokenSymbol: store.state.community.homeToken!.symbol,
        confirmTransfer: () {
          // TODO.
          context.router.navigate(TransactionSuccessPage());
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
          context.router.navigate(
            SendToContactReviewPage(contactId: contactId, amount: amount),
          );
        },
      ),
    );
  }
}

class SendToContactReviewConnector extends StatelessWidget {
  final String contactId;
  final String amount;

  SendToContactReviewConnector(this.contactId, this.amount);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SendToContactReviewViewModel>(
      distinct: true,
      builder: (context, vm) => SendToContactReviewScreen(vm),
      converter: (store) => SendToContactReviewViewModel(
        contact: store.state.user.contacts.singleWhere((contact) {
          return contact.walletAddress == contactId;
        }),
        amount: amount,
        tokenSymbol: store.state.community.homeToken!.symbol,
        confirmTransfer: () {
          // TODO.
          context.router.navigate(TransactionSuccessPage());
        },
      ),
    );
  }
}

class ShopCheckoutReviewConnector extends StatelessWidget {
  final String shopId;
  final String itemId;
  final int count;
  final String location;
  late final String amount;

  ShopCheckoutReviewConnector(
    this.shopId,
    this.itemId,
    this.count,
    this.location,
  );

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ShopCheckoutReviewViewModel>(
      distinct: true,
      builder: (context, vm) => ShopCheckoutReviewScreen(vm),
      converter: (store) => ShopCheckoutReviewViewModel(
        shop: store.state.community.shops[shopId]!,
        shopItem: store.state.community.shops[shopId]!.items[itemId]!,
        tokenSymbol: store.state.community.homeToken!.symbol,
        amount: () {
          return (store.state.community.shops[shopId]!.items[itemId]!.cost *
                  count)
              .toString();
        }(),
        confirmTransfer: () {
          // TODO.
          context.router.navigate(TransactionSuccessPage());
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
          context.router.navigate(ShopCheckoutReviewPage(
            shopId: shopId,
            itemId: itemId,
            count: count,
            location: location,
          ));
        },
      ),
    );
  }
}

class TransactionSuccessConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreBuilder<AppState>(
      rebuildOnChange: false,
      builder: (context, vm) => TransactionSuccessScreen(
        popScreen: () {
          context.router.popUntilRouteWithName('AppHubRoute');
          TabsRouter? hubRouter =
              context.router.innerRouterOf<TabsRouter>('AppHubRoute');
          if (hubRouter != null) {
            hubRouter.setActiveIndex(0);
            StackRouter walletRouter =
                hubRouter.innerRouterOf<StackRouter>('WalletRouter')!;
            walletRouter.navigateNamed('wallet');
          }
        },
      ),
    );
  }
}
