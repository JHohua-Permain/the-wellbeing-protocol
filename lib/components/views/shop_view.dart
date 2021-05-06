import 'package:flutter/material.dart';

class ShopView extends StatelessWidget {
  final Widget body;

  const ShopView({this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
