import 'package:flutter/material.dart';
import './components/components.dart';
import './app_themes.dart';
import './constants.dart';
import './_mocks.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      theme: ThemeData(
        appBarTheme: appBarTheme,
        bottomNavigationBarTheme: bottomNavigationBarThemeData,
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/shop':
            return MaterialPageRoute(builder: (context) => TemplateScreen(appBarTitle: "Shop", body: ShopView()));
          case '/community/fund':
            return MaterialPageRoute(builder: (context) => TemplateScreen(appBarTitle: "Community Fund", body: CommunityFundView()));
          case '/account':
            return MaterialPageRoute(builder: (context) => TemplateScreen(appBarTitle: "Account", body: AccountView()));
          case '/transactions/history':
            return MaterialPageRoute(builder: (context) => TemplateScreen(appBarTitle: "Transaction History", body: TransactionHistoryView()));
          default:
            return MaterialPageRoute(builder: (context) => WalletScreen(drawerName: testAccount.name, drawerPublicAddress: testAccount.publicAddress));
        }
      },
    );
  }
}