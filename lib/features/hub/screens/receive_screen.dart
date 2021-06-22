import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/common/widgets/app_scaffold.dart';

class ReceiveScreen extends StatefulWidget {
  @override
  _ReceiveScreenState createState() => _ReceiveScreenState();
}

class _ReceiveScreenState extends State<ReceiveScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Receive',
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 30),
            Center(
              child: Text(
                'Scan the QR code to receive money',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                      left: 40,
                      right: 40,
                    ),
                    child: Placeholder(
                      fallbackHeight: 200,
                      fallbackWidth: 30,
                    ),
                  ),
                  Text("13fr56kjn456 WALLET-ADDRESS"),
                  SizedBox(height: 30),
                  Text(
                    "Copy to clipboard",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.lightBlue),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Color(0xFF801E48),
              clipBehavior: Clip.antiAlias,
              child: MaterialButton(
                minWidth: 218.0,
                height: 50,
                color: const Color(0xFFFFAD8B),
                child: Text(
                  'Share',
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
