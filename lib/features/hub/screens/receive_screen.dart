import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:the_wellbeing_protocol/common/utils/address_shortener.dart';
import 'package:the_wellbeing_protocol/common/widgets/app_scaffold.dart';
import 'package:the_wellbeing_protocol/common/widgets/common_button.dart';

class ReceiveScreen extends StatefulWidget {
  final String walletAddress;
  final VoidCallback share;

  ReceiveScreen({required this.walletAddress, required this.share});

  @override
  _ReceiveScreenState createState() => _ReceiveScreenState();
}

class _ReceiveScreenState extends State<ReceiveScreen> {
  @override
  Widget build(BuildContext context) {
    String shortenedWalletAddress = shortenAddress(widget.walletAddress, 10);

    return AppScaffold(
      title: 'Receive',
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                'Scan the QR code to receive money',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
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
                    child: QrImage(
                      data: widget.walletAddress,
                      version: QrVersions.auto,
                      size: 250,
                    ),
                  ),
                  Text(shortenedWalletAddress),
                  SizedBox(height: 30),
                  Text(
                    "Copy to clipboard",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.lightBlue),
                  )
                ],
              ),
            ),
            CommonButton(label: 'Share', onPressed: widget.share),
          ],
        ),
      ),
    );
  }
}
