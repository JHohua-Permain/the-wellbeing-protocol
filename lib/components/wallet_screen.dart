import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/components/components.dart';
import './peripheral_components/app_bottom_navigation_bar.dart';
import '../widgets/app_drawer.dart';
import './views/wallet_view.dart';

// ignore: must_be_immutable
class WalletScreen extends StatelessWidget {
  final String? drawerName;
  final String? drawerPublicAddress;

  WalletScreen({this.drawerName, this.drawerPublicAddress});
  List _children = [
    WalletView(),
    TemplateScreen(appBarTitle: "Shop", body: ShopView()),
    TemplateScreen(
      appBarTitle: "Community View",
      body: CommunityFundView(),
      showBackArrow: false,
      showBottomBar: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    var displayName = drawerName ?? '';
    var walletAddress = drawerPublicAddress ?? '';

    return Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(),
      drawer: AppDrawer(displayName: displayName, walletAddress: walletAddress),
      drawerEdgeDragWidth: 0,
      drawerEnableOpenDragGesture: true,
      body: ValueListenableBuilder(
        valueListenable: globalCurrentIndex,
        builder: (BuildContext context, int value, Widget? child) {
          return _children[value];
        },
      ),
    );
  }
}
