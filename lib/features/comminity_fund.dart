import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  // static Route<dynamic> route() => MaterialPageRoute(
  //       builder: (context) => CommunityPage(),
  //     );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Community Fund"),
      ),
      body: Center(
        child: Text("all fund related information"),
      ),
    );
  }
}
