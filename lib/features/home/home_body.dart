import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/features/user/transaction_history_body.dart';
import 'package:the_wellbeing_protocol/widgets/general_screen.dart';
import 'package:the_wellbeing_protocol/widgets/qr_scan_page.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
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
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => GeneralScreen(
                              body: TransactionHistory(),
                              appBarTitle: "Transaction History")));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Your Balance",
              ),
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
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => GeneralScreen(
                              body: QRCreatePage(), appBarTitle: "Scan")));
                    },
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
