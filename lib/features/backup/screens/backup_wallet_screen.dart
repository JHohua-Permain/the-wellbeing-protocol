import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/common/widgets/app_scaffold.dart';
import 'package:the_wellbeing_protocol/common/widgets/common_button.dart';
import 'package:the_wellbeing_protocol/features/backup/backup_view_models.dart';
//useful: https://pub.dev/packages/clipboard

class BackupWalletScreen extends StatelessWidget {
  final BackupWalletViewModel vm;

  BackupWalletScreen(this.vm);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Backup your Wallet',
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 5,
            ),
            Text(
                'Important! write down the words in order and\n keep them safe. You won\'t be able to recover your\n account without it.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
            SizedBox(
              height: 10,
            ),
            Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 4),
                      color: Color(0xFFF7F7F7),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 250,
                          child: GridView.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 65.0,
                            children: List.generate(
                              vm.mnemonic.length,
                              (index) => Center(
                                child: Text('$index. ${vm.mnemonic[index]}'),
                              ),
                            ),
                          ),
                        ),
                        // RaisedButton.icon(
                        // color: Colors.blue,
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 90, bottom: 10, top: 15),
                          child: Row(children: <Widget>[
                            Text(
                              "Copy to clipboard  ",
                              style: TextStyle(color: Colors.lightBlue),
                            ),
                            Icon(Icons.copy),
                          ]),
                        )
                      ],
                    )),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonButton(
                  label: 'Next',
                  onPressed: vm.pushBackupConfirmScreen,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

// class SelectText extends StatelessWidget {
//   final Word word;
//   const SelectText({Key? key, required this.word}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(word.number + ' ' + word.title);
//   }
// }

// class Word {
//   final String number;
//   final String title;
//   const Word({required this.title, required this.number});
// }
