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
