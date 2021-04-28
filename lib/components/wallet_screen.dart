import 'package:flutter/material.dart';
import './peripheral_components/app_bottom_navigation_bar.dart';
import './peripheral_components/app_drawer.dart';
import './views/wallet_view.dart';

class WalletScreen extends StatelessWidget {
  final String drawerName;
  final String drawerPublicAddress;

  WalletScreen({this.drawerName, this.drawerPublicAddress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(),
      drawer: AppDrawer(name: drawerName, publicAddress: drawerPublicAddress),
      drawerEdgeDragWidth: 0,
      drawerEnableOpenDragGesture: true,
      body: WalletView(),
    );
  }
}