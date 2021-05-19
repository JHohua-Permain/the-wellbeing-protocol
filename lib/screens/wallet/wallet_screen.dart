import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/generated/models/app_state.dart';
import 'package:the_wellbeing_protocol/widgets/app_drawer.dart';
import 'package:the_wellbeing_protocol/widgets/currency_widget.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreBuilder<AppState>(
      builder: (context, store) {
        var displayName = store.state.userState.displayName;
        var walletAddress = store.state.userState.walletAddress;

        return Scaffold(
          drawerEdgeDragWidth: 0,
          drawerEnableOpenDragGesture: true,
          drawer: AppDrawer(
            displayName: displayName,
            walletAddress: walletAddress,
          ),
          body: Builder(
            builder: (context) => SafeArea(
              child: Column(
                children: [
                  _buildAppBar(context, store),
                  _buildBody(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  ///Creates and returns the Wallet Screen's "AppBar".
  Widget _buildAppBar(BuildContext context, Store<AppState> store) {
    var walletBalance = store.state.userState.currentTokenBalance ?? '0';
    var tokenSymbol = store.state.community.homeToken.symbol;
    VoidCallback openDrawer = () => Scaffold.of(context).openDrawer();
    VoidCallback pushTransactionHistoryPage =
        () => AutoRouter.of(context).pushNamed('transactions');

    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.23,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: const Color(0xFFFFAD8B),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: openDrawer,
                child: Icon(Icons.menu),
              ),
              Spacer(),
              InkWell(
                child: Text("View Transactions"),
                onTap: pushTransactionHistoryPage,
              ),
            ],
          ),
          SizedBox(height: 30),
          Text("Your Balance"),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CurrencyWidget(amount: walletBalance, tokenSymbol: tokenSymbol),
              Spacer(),
              InkWell(child: Image.asset('assets/images/QRCode.png')),
            ],
          ),
        ],
      ),
    );
  }

  ///Creates and returns the WalletScreen's body.
  Widget _buildBody(BuildContext context) {
    VoidCallback pushSelectContactPage =
        () => AutoRouter.of(context).pushNamed('contacts');
    VoidCallback pushReceivePage =
        () => AutoRouter.of(context).pushNamed('receive');
    VoidCallback pushCashOutPage =
        () => AutoRouter.of(context).pushNamed('cash-out');

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildBodyCard(
              title: 'Send',
              description: 'Pay someone for a product or service.',
              colourHex: 0xFFFFAD8B,
              onPressed: pushSelectContactPage,
            ),
            _buildBodyCard(
              title: 'Receive',
              description: 'Accept Tokens from someone.',
              colourHex: 0xFFFFAD8B,
              onPressed: pushReceivePage,
            ),
            _buildBodyCard(
              title: 'CashOut',
              description: 'Convert Cannons to NZD.',
              colourHex: 0xE0E0E0,
              onPressed: pushCashOutPage,
            ),
          ],
        ),
      ),
    );
  }

  ///Creates and returns one of the Wallet Screen's body cards.
  Widget _buildBodyCard({
    required String title,
    required String description,
    required int colourHex,
    required VoidCallback onPressed,
  }) {
    return Center(
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 2,
            vertical: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(colourHex),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.navigate_next),
                iconSize: 36,
                color: Colors.black,
                onPressed: onPressed,
              )
            ],
          ),
        ),
      ),
    );
  }
}
