// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

// import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

@deprecated
class QRCreatePage extends StatefulWidget {
  @override
  _QRCreatePageState createState() => _QRCreatePageState();
}

class _QRCreatePageState extends State<QRCreatePage> {
  final controller = TextEditingController();
  String qrCode = 'Unknown';

  @override
  Widget build(BuildContext context) {
    return Center(
      // ignore: deprecated_member_use
      child: RaisedButton(
        child: Text(
          'Press Me',
          style: TextStyle(fontSize: 24),
        ),
        shape: StadiumBorder(),
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        textColor: Colors.white,
        onPressed: () {
          scanQR();
        },
      ),
      // BarcodeWidget(
      //   barcode: Barcode.qrCode(),
      //   color: Colors.white,
      //   data: controller.text ?? 'Hello world',
      //   width: 200,
      //   height: 200,
      // ),
      // SizedBox(height: 40),
      // Row(
      //   children: [
      //     Expanded(child: buildTextField(context)),
      //     const SizedBox(width: 12),
      //     FloatingActionButton(
      //       backgroundColor: Theme.of(context).primaryColor,
      //       child: Icon(Icons.done, size: 30),
      //       onPressed: () => setState(() {}),
      //     )
      //   ],
      // ),
    );
  }

  Future<void> scanQR() async {
    //   // Platform messages may fail, so we use a try/catch PlatformException.
    //   try {
    //     final qrCode = await FlutterBarcodeScanner.scanBarcode(
    //         '#ff6666', 'Cancel', true, ScanMode.QR);
    //     print(qrCode);
    //   } on PlatformException {
    //     qrCode = 'Failed to get platform version.';
    //   }

    //   // If the widget was removed from the tree while the asynchronous platform
    //   // message was in flight, we want to discard the reply rather than calling
    //   // setState to update our non-existent appearance.
    //   if (!mounted) return;
    // }
    //
    Text('test');
  }
}
