import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  // static Route<dynamic> route() => MaterialPageRoute(
  //       builder: (context) => ShopPage(),
  //     );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select a shop"),
      ),
      body: Center(
          // child: FlatButton(
          //   onPressed: () => Navigator.of(context).push(
          //     ProductDetailPage.route(),
          //   ),
          // child: Text("Navigate to Product Detail Page"),
          ),
    );
  }
}
