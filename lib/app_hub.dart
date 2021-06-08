import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/routing/app_router.gr.dart';
import 'package:the_wellbeing_protocol/shared/widgets/app_bottom_navigation_bar.dart';

class AppHub extends StatelessWidget {
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
        bottomNavigationBar: AppBottomNavigationBar(
          currentIndex: context.tabsRouter.activeIndex,
          onTap: (index) => context.tabsRouter.setActiveIndex(index),
        ),
      ),
    );
  }
}
