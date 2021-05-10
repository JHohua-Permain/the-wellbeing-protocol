import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/components/views/sucess.dart';

import '../template_screen.dart';

class ReviewTransfer extends StatelessWidget {
  final String confirmAmount;
  final Contact contact;
  ReviewTransfer({this.confirmAmount, this.contact});

  @override
  Widget build(BuildContext context) {
    // Directly returning a list of widgets is not common practice.
    // People usually use ListView.builder, c.f. "ListView.builder" example.
    // Here we mainly demostrate ListTile.
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40, bottom: 30),
            child: Text('Amount'),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  confirmAmount ?? "",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 4),
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
          const Divider(
            thickness: 1.5,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: ListTile(
                title: Text(contact.displayName),
                subtitle: new Text(contact.phones.length > 0
                    ? contact.phones.elementAt(0).value
                    : ''),
                leading: (contact.avatar != null && contact.avatar.length > 0)
                    ? CircleAvatar(
                        backgroundImage: MemoryImage(contact.avatar),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          child: Image.asset('assets/images/anom.png'),
                          backgroundColor: Colors.grey,
                        ),
                      ),
              ),
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
            child: Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Color(0xFF801E48),
              clipBehavior: Clip.antiAlias,
              child: MaterialButton(
                minWidth: 200.0,
                height: 50,
                color: const Color(0xFFFFAD8B),
                child: new Text('Send',
                    style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                onPressed: () {
                  return Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TemplateScreen(
                      appBarTitle: "Success",
                      body: Sucess(),
                      showBackArrow: false,
                      showBottomBar: true,
                    ),
                  ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
