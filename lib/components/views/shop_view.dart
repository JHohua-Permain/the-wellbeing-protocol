import 'package:flutter/material.dart';

class ShopView extends StatelessWidget {
  final Widget body;
  // final String appBarTitle;

  const ShopView({this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Select a shop',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
          leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          actions: [
            Icon(
              Icons.info,
              color: Colors.black,
            ),
          ],
        ),
        body: Container(
            decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Colors.black))),
            child: ListView.builder(
                padding: EdgeInsets.only(top: 20),
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[350],
                        radius: 30,
                        child: Icon(
                          Icons.person_rounded,
                          size: 40,
                          color: Colors.grey[600],
                        ),
                      ),
                      trailing: InkWell(
                        onTap: () => Navigator.of(context).pop(),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                      ),
                      title: Text('Fruit & Vegetable Co-op'));
                })));
  }
}
