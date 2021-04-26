import 'package:flutter/material.dart';

class WalletView extends StatelessWidget {
  final VoidCallback toTransactionHistory;

  WalletView(this.toTransactionHistory);

  @override
  Widget build(BuildContext context) {
    //return Center(child: Text("Hello Wallet!"));
    return SafeArea(
      child: Column(
        children: [
          Container(
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
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Icon(
                        Icons.menu,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      child: Text(
                        "View Transactions",
                      ),
                      onTap: toTransactionHistory,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text("Your Balance"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '50.00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      ' CAN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      child: Image.asset('assets/images/QRCode.png'),
                      //TODO
                      onTap: () {
                        throw UnimplementedError();
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}