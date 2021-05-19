import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/widgets/currency_widget.dart';

class WalletView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      onTap: () => Navigator.of(context)
                          .pushNamed('/transactions/history'),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text("Your Balance"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CurrencyWidget(amount: '50.0', tokenSymbol: 'CAN',),
                    // Text(
                    //   '50.00',
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 25,
                    //     color: Colors.black,
                    //   ),
                    // ),
                    // Text(
                    //   ' CAN',
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 16,
                    //     color: Colors.black,
                    //   ),
                    // ),
                    Spacer(),
                    InkWell(
                      child: Image.asset('assets/images/QRCode.png'),
                      onTap: () {
                        throw UnimplementedError();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFFFAD8B),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text('Send',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  Text('pay someone for a product or service',
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.navigate_next),
                              iconSize: 36,
                              color: Colors.black,
                              onPressed: () {
                                Navigator.of(context).pushNamed('/sendtoview');
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFFFAD8B),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text('Receive',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  Text('Accept Token from someone',
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.navigate_next),
                              iconSize: 36,
                              color: Colors.black,
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xE0E0E0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text('Cashout',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  Text('Convert Cannons to NZD',
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.navigate_next,
                              size: 36,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
