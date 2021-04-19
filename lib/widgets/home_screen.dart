import 'package:flutter/material.dart';
import 'nav_drawer.dart';
import './general_screen.dart';
import './top_bar.dart';
import '../features/home/home_body.dart';
import '../features/user/transaction_history_body.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
          actions: [
            TextButton(
              child: Text("View Transactions"),
              onPressed: () =>
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => GeneralScreen(body: TransactionHistory(), appBar: buildAppBar(context, "Transaction History")))),
            )
          ],
          backgroundColor: const Color(0xFFFFAD8B),
        ),*/
        drawer: NavDrawer(),
        drawerEdgeDragWidth: 0,
        drawerEnableOpenDragGesture: true,
        body: HomeBody()
    );
  }
}