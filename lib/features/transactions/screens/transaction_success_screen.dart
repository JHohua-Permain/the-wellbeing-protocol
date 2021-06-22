import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TransactionSuccessScreen extends StatefulWidget {
  final VoidCallback popScreen;

  TransactionSuccessScreen({required this.popScreen});

  @override
  _TransactionSuccessScreenState createState() =>
      _TransactionSuccessScreenState();
}

class _TransactionSuccessScreenState extends State<TransactionSuccessScreen> {
  // TODO: Implement.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          FutureBuilder<ByteData>(
            future: _wait3SecAndLoadImage(),
            builder: (BuildContext context, AsyncSnapshot<ByteData> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  heightFactor: 13,
                  child: const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.grey)),
                );
              } else if (snapshot.hasError) {
                return const Text('Error has happened in the future!');
              } else {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 90, 20, 30),
                      child: const Text(
                        'Transaction Sent',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Image.asset('assets/images/success.png'),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: const Text(
                        'It can take up to 30 seconds to show as received in the other persons wallet.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      shape: const Border(bottom: BorderSide(width: 2)),
      automaticallyImplyLeading: false,
      leading: InkWell(
        child: Icon(Icons.arrow_back_ios),
        onTap: widget.popScreen,
      ),
      title: Text(
        'Success',
        style: TextStyle(color: Colors.black),
        textScaleFactor: 0.8,
      ),
    );
  }

  Future<ByteData> _wait3SecAndLoadImage() async {
    await Future.delayed(const Duration(seconds: 3));
    return rootBundle.load('assets/images/success.png');
  }
}
