import 'package:flutter/material.dart';

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
              height: MediaQuery.of(context).size.height * 0.21,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xFFFFAD8B),
                // gradient: LinearGradient(
                //   colors: [Colors.green[200], Colors.yellow[200]],
                // ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Icon(
                      Icons.menu,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Hello DDjm",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Your Balance",
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            '20.00 \CAN', //String interpolation CAN is used
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            //  Text(
                            //   "20.00 BEE",
                            // ),
                          )),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                          // CircleAvatar(
                          //     radius: 20,
                          //     backgroundColor: Colors.blue[200],
                          //child: Icon(Icons.qr_code))),

                          Image.asset('assets/images/QRCode.png')),
                    ],
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}