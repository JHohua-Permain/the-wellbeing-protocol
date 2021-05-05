import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/components/views/send_to_view.dart';
import './components/components.dart';
import './_mocks.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/shop':
      return MaterialPageRoute(
        builder: (context) => TemplateScreen(
          appBarTitle: "Shop",
          body: ShopView(),
        ),
      );
    case '/community/fund':
      return MaterialPageRoute(
        builder: (context) => TemplateScreen(
          appBarTitle: "Community Fund",
          body: CommunityFundView(),
        ),
      );
    case '/account':
      return MaterialPageRoute(
        builder: (context) => TemplateScreen(
          appBarTitle: "Account",
          body: AccountView(),
          showBottomBar: true,
        ),
      );
    case '/transactions/history':
      return MaterialPageRoute(
        builder: (context) => TemplateScreen(
          appBarTitle: "Transaction History",
          body: TransactionHistoryView(),
        ),
      );
    case '/sendtoview':
      return MaterialPageRoute(
        builder: (context) => TemplateScreen(
          appBarTitle: "Send to",
          body: SendToView(),
          showBottomBar: true,
        ),
      );
    default:
      return MaterialPageRoute(
          builder: (context) => WalletScreen(
              drawerName: testAccount.name,
              drawerPublicAddress: testAccount.publicAddress));
  }
}
