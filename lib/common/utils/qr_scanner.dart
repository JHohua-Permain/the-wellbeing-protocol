// import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

Future<String?> scanQRCode() async {
  // Platform messages may fail, so we use a try/catch PlatformException.
  try {
    return FlutterBarcodeScanner.scanBarcode(
      '#ff6666',
      'Cancel',
      true,
      ScanMode.QR,
    );
  } on PlatformException catch (_) {
    print('QR scanner error thrown...');
  }
}

// class _AppBarcodeWidget extends StatefulWidget {
//   @override
//   _AppBarcodeWidgetState createState() => _AppBarcodeWidgetState();
// }
//
// class _AppBarcodeWidgetState extends State<_AppBarcodeWidget> {
//   final TextEditingController _controller = TextEditingController();
//   String _qrCode = 'Unknown';
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         // BarcodeWidget(
//         //   barcode: Barcode.qrCode(),
//         //   color: Colors.white,
//         //   data: _controller.text ?? 'Hello world',
//         //   width: 200,
//         //   height: 200,
//         // ),
//         // SizedBox(height: 40),
//         // Row(
//         //   children: [
//         //     Expanded(child: buildTextField(context)),
//         //     const SizedBox(width: 12),
//         //     FloatingActionButton(
//         //       backgroundColor: Theme.of(context).primaryColor,
//         //       child: Icon(Icons.done, size: 30),
//         //       onPressed: () {},
//         //     ),
//         //   ],
//         // ),
//         );
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }
