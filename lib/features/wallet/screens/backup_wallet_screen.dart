import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/features/wallet/wallet_view_models.dart';
import 'package:the_wellbeing_protocol/shared/widgets/app_scaffold.dart';
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
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  'Important! write down the words in order and\n keep them safe. You won\'t be able to recover your\n account without it.',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
                top: 30,
                bottom: 40,
              ),
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 350,
                        child: GridView.count(
                          crossAxisCount: 3,
                          crossAxisSpacing: 40.0,
                          // mainAxisSpacing: 4,
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
                        padding: const EdgeInsets.only(left: 90, bottom: 30),
                        child: Row(children: <Widget>[
                          Text("Copy to clipboard  "),
                          Icon(Icons.copy),
                        ]),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Color(0xFF801E48),
                    clipBehavior: Clip.antiAlias,
                    child: MaterialButton(
                      minWidth: 218.0,
                      height: 50,
                      color: const Color(0xFFFFAD8B),
                      child: Text(
                        'Next',
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
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
