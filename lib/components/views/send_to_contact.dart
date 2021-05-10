import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/widgets/numeric_keyboard_widget.dart';
import '../template_screen.dart';
import 'review_transfer.dart';

// ignore: must_be_immutable
class SendToContact extends StatefulWidget {
  final Contact contactPassed;

  SendToContact({
    this.contactPassed,
  });

  @override
  _SendToContactState createState() => _SendToContactState();
}

class _SendToContactState extends State<SendToContact> {
  String amountText = "";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Builder(builder: (BuildContext context) {
            return widget.contactPassed.avatar.isEmpty == null
                ? Center(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          child: Image.asset('assets/images/anom.png'),
                          backgroundColor: Colors.grey,
                        ),
                      ),
                    ),
                  )
                : Center(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: CircleAvatar(
                        backgroundImage: MemoryImage(
                          widget.contactPassed.avatar,
                        ),
                        //backgroundImage: Image(Image.memory(contactImage)),
                      ),
                    ),
                  );
          }),
          Container(
            child: widget.contactPassed.displayName == null
                ? Text('Unknown')
                : Container(child: Text(this.widget.contactPassed.displayName)),
          ),
          NumericKeyboardWidget(onTap: (s) {
            setState(() {
              amountText = s;
            });
          }),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
            child: Material(
              //Wrap with Material
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              //elevation: 18.0,
              color: Color(0xFF801E48),
              clipBehavior: Clip.antiAlias, // Add This
              child: MaterialButton(
                minWidth: 200.0,
                height: 50,
                color: const Color(0xFFFFAD8B),
                child: new Text('Continue',
                    style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                onPressed: () {
                  return Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TemplateScreen(
                      appBarTitle: "Review Transfer",
                      showBackArrow: true,
                      body: ReviewTransfer(
                          contact: widget.contactPassed,
                          confirmAmount: amountText),
                      showBottomBar: false,
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
