import 'package:flutter/material.dart';

class CommunityFund extends StatelessWidget {
  // final String confirmAmount;
  // final Contact contact;
  // ReviewTransfer({this.confirmAmount, this.contact});

  @override
  Widget build(BuildContext context) {
    // Directly returning a list of widgets is not common practice.
    // People usually use ListView.builder, c.f. "ListView.builder" example.
    // Here we mainly demostrate ListTile.
    return Scaffold(
        body: Container(
            child: Column(children: <Widget>[
      Container(
        padding: EdgeInsets.only(top: 24),
        child: Text('Total Contributed'),
      ),
      Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '252.23',
              // confirmAmount ?? "",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'CAN',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            color: Color(0xFF801E48),
            clipBehavior: Clip.antiAlias,
            child: MaterialButton(
              minWidth: 200.0,
              height: 50,
              color: const Color(0xFFFFAD8B),
              child: new Text('Contribute',
                  style: new TextStyle(fontSize: 16.0, color: Colors.black)),
              onPressed: () {
                // return Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => TemplateScreen(
                //     appBarTitle: "Success",
                //     body: Sucess(),
                //     showBackArrow: false,
                //     showBottomBar: true,
                //   ),
                // ));
              },
            ),
          )
        ]),
      ),
      const Divider(
        height: 5,
        thickness: 3,
        color: Colors.black,
      ),
      Row(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text('Contributer'),
        )
      ]),
      Divider(
        height: 10,
        thickness: 1,
      ),
      Expanded(
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[350],
                    radius: 30,
                    child: Icon(
                      Icons.person_rounded,
                      size: 20,
                      color: Colors.grey[600],
                    ),
                  ),
                  title: Text('name'),
                  trailing: Wrap(
                    spacing: 16,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Text('12 c',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
          separatorBuilder: (context, int index) {
            return Divider(
              height: 10,
              thickness: 1,
            );
          },
        ),
      )
    ])));
  }
}
