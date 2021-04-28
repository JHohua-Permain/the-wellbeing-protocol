import 'package:flutter/material.dart';
import './constants.dart';
import './models/account_model.dart';
import './components/peripheral_components/common_app_bar.dart';
import './components/peripheral_components/app_bottom_navigation_bar.dart';
import './components/peripheral_components/app_drawer.dart';
import './components/views/wallet_view.dart';
import './components/views/shop_view.dart';
import './components/views/community_fund_view.dart';
import './components/views/account_view.dart';
import './components/views/transaction_history_view.dart';

//TODO Still structuring.

AccountModel _testAccount = AccountModel("Bob", "123 Fake St", "0123456789");

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageModel _currentPage = pageMapping[PageId.Wallet];

  void _navigate(PageId pageId) {
    setState(() {
      _currentPage = pageMapping[pageId];
    });
  }

  PreferredSizeWidget _buildAppBar() {
    if(_currentPage != null && _currentPage.id != PageId.Wallet) {
      return CommonAppBar(title: _currentPage.appBarTitle, toInfoScreen: _currentPage.appBarToInfoScreen);
    }
    //return WalletAppBar(() => {_navigate(PageId.TransactionHistory)});
    return null;
  }

  Widget _buildDrawer() {
    if(_currentPage != null && _currentPage.id == PageId.Wallet) {
      return AppDrawer(_testAccount, () => _navigate(PageId.Account));
    }
    return null;
  }

  Widget _buildBottomNavigationBar() {
    return AppBottomNavigationBar(
            (index) {
          switch (index) {
            case 0:
              _navigate(PageId.Wallet);
              break;
            case 1:
              _navigate(PageId.Shop);
              break;
            case 2:
              _navigate(PageId.CommunityFund);
              break;
          }
        }
    );
  }

  Widget _buildNavigator() {
    return Navigator(
      pages: [
        MaterialPage(child: WalletView(() => _navigate(PageId.TransactionHistory))),
        if(_currentPage.id == PageId.Shop) MaterialPage(child: ShopView()),
        if(_currentPage.id == PageId.CommunityFund) MaterialPage(child: CommunityFundView()),
        if(_currentPage.id == PageId.Account) MaterialPage(child: AccountView(_testAccount)),
        if(_currentPage.id == PageId.TransactionHistory) MaterialPage(child: TransactionHistoryView()),
      ],
      onPopPage: (route, result) {
        if(!route.didPop(result)) {
          return false;
        }
        return true;
      },
    );
  }

  @override
  void initState() {
    super.initState();
    //_tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      home: Scaffold(
        appBar: _buildAppBar(),
        drawer: _buildDrawer(),
        bottomNavigationBar: _buildBottomNavigationBar(),
        body: _buildNavigator(),
      ),
    );

  }

  @override
  void dispose() {
    super.dispose();
    //_tabController.dispose();
  }
}

// ThemeData _setThemeData() {
//   return ThemeData(
//     appBarTheme: AppBarTheme(
//       backgroundColor: Colors.grey,
//       centerTitle: true,
//     ),
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       selectedItemColor: Color(0xFF292929),
//       selectedLabelStyle: TextStyle(fontSize: 13),
//       showSelectedLabels: true,
//       type: BottomNavigationBarType.fixed,
//       unselectedLabelStyle: TextStyle(fontSize: 13),
//     ),
//   );
// }

// class WalletPage extends Page {
//   @override
//   Route createRoute(BuildContext context) {
//     return MaterialPageRoute(
//       settings: this,
//       builder: (context) => WalletView(),
//     );
//   }
// }

// class Shop extends Page {
//   @override
//   Route createRoute(BuildContext context) {
//     return MaterialPageRoute(
//       settings: this,
//       builder: (context) => ShopView(),
//     );
//   }
// }

enum PageId {
  Wallet,
  Shop,
  CommunityFund,
  Account,
  TransactionHistory,
}

class PageModel {
  final PageId id;
  final String appBarTitle;
  final VoidCallback appBarToInfoScreen;

  const PageModel(PageId id, {this.appBarTitle, this.appBarToInfoScreen})
      : id = id;
}

Map<PageId, PageModel> pageMapping = {
  PageId.Wallet: PageModel(PageId.Wallet),
  PageId.Shop: PageModel(PageId.Shop, appBarTitle: "Shop"),
  PageId.CommunityFund: PageModel(PageId.CommunityFund, appBarTitle: "Community Fund"),
  PageId.Account: PageModel(PageId.Account, appBarTitle: "Account"),
  PageId.TransactionHistory: PageModel(PageId.TransactionHistory, appBarTitle: "Transaction History"),
};