import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/components/views/send_to_view.dart';
import './components/components.dart';
import './_mocks.dart';
import 'components/views/send_to_contact.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/shop':
      return MaterialPageRoute(
        builder: (context) => TemplateScreen(
          appBarTitle: "Shop",
          showBackArrow: true,
          body: ShopView(),
        ),
      );
    case '/community/fund':
      return MaterialPageRoute(
        builder: (context) => TemplateScreen(
          showBackArrow: false,
          appBarTitle: "Community Fund",
          body: CommunityFundView(),
        ),
      );
    case '/account':
      return MaterialPageRoute(
        builder: (context) => TemplateScreen(
          showBackArrow: true,
          appBarTitle: "Account",
          body: AccountView(),
          showBottomBar: true,
        ),
      );
    case '/transactions/history':
      return MaterialPageRoute(
        builder: (context) => TemplateScreen(
          showBackArrow: true,
          appBarTitle: "Transaction History",
          body: TransactionHistoryView(),
        ),
      );
    case '/sendtoview':
      return MaterialPageRoute(
        builder: (context) => TemplateScreen(
          showBackArrow: true,
          appBarTitle: "Send to",
          body: SendToView(),
          showBottomBar: true,
        ),
      );
    case '/sendtocontact':
      return MaterialPageRoute(
        builder: (context) => TemplateScreen(
          showBackArrow: true,
          appBarTitle: "Send to",
          body: SendToContact(),
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
