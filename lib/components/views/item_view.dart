import 'package:flutter/material.dart';

class ItemView extends StatelessWidget {
  final Widget body;

  const ItemView({this.body});

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
                        size: 20,
                        color: Colors.grey[600],
                      ),
                    ),
                    title: Text('Fruit & Vegetable Co-op'),
                    trailing: Wrap(
                      spacing: 12,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Text('12 CAN',
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ),
                        InkWell(
                          onTap: () => Navigator.of(context).pop(),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                })));
  }
}
