import 'package:flutter/material.dart';

class ReceiveByQRCode extends StatefulWidget {
  @override
  _ReceiveByQRCodeState createState() => _ReceiveByQRCodeState();
}

class _ReceiveByQRCodeState extends State<ReceiveByQRCode> {
  @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                      child: Text(
                        'Scan the QR code to receive money',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )),
                  SizedBox(height: 30),
                  Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, bottom: 15, left: 40, right: 40),
                              child: Placeholder(
                                fallbackHeight: 200,
                                fallbackWidth: 30,
                              ),
                            ),
                            Text("13fr56kjn456 WALLET-ADDRESS"),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Copy to clipboard",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.lightBlue),
                            )
                          ])),
                  SizedBox(
                    height: 30,
                  ),
                  Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Color(0xFF801E48),
                    clipBehavior: Clip.antiAlias,
                    child: MaterialButton(
                      minWidth: 218.0,
                      height: 50,
                      color: const Color(0xFFFFAD8B),
                      child: new Text('Share',
                          style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                      onPressed: () {
                        // return Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => TemplateScreen(
                        //     appBarTitle: "Success",
                        //     body: Sucess(),
                        //     showBackArrow: false,
                        //     showBottomBar: true,
                        //   ),
                        // ));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ])));
  }
}
