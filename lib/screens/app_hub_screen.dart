import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/generated/app_router.gr.dart';

class AppHubScreen extends StatefulWidget {
  @override
  _AppHubScreenState createState() => _AppHubScreenState();
}

class _AppHubScreenState extends State<AppHubScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        WalletRouter(),
        ShopRouter(),
        CommunityFundRouter(),
      ],
      //TODO: Configure tab change animations.
      builder: (context, child, animation) => Scaffold(
        body: child,
        bottomNavigationBar: _buildBottomNavigationBar(context),
      ),
    );
  }

  ///Helper method used to build the bottom navigation bar of the app.
  Widget _buildBottomNavigationBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(top: BorderSide(width: 2))),
      child: BottomNavigationBar(
        currentIndex: context.tabsRouter.activeIndex,
        onTap: (index) => context.tabsRouter.setActiveIndex(index),
        items: [
          _buildBottomNavigationBarItem('Wallet', 'assets/images/square.png'),
          _buildBottomNavigationBarItem('Shop', 'assets/images/square.png'),
          _buildBottomNavigationBarItem(
              'Community Fund', 'assets/images/square.png'),
        ],
      ),
    );
  }

  ///Helper method used to build the bottom navigation bar items.
  BottomNavigationBarItem _buildBottomNavigationBarItem(
    String label,
    String imageUri,
  ) {
    return BottomNavigationBarItem(
      label: label,
      icon: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ImageIcon(AssetImage(imageUri)),
      ),
    );
  }
}
