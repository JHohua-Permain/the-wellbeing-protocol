import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/common/widgets/app_scaffold.dart';
import 'package:the_wellbeing_protocol/common/widgets/common_button.dart';
import 'package:the_wellbeing_protocol/features/backup/backup_view_models.dart';

class BackupWalletConfirmScreen extends StatefulWidget {
  final BackupWalletConfirmViewModel vm;

  BackupWalletConfirmScreen(this.vm);

  @override
  _BackupWalletConfirmScreenState createState() =>
      _BackupWalletConfirmScreenState();
}

class _BackupWalletConfirmScreenState extends State<BackupWalletConfirmScreen> {
  final TextEditingController _firstWordController = TextEditingController();
  final TextEditingController _secondWordController = TextEditingController();
  final TextEditingController _thirdWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String firstWordIndex = widget.vm.firstWordIndex.toString();
    String secondWordIndex = widget.vm.secondWordIndex.toString();
    String thirdWordIndex = widget.vm.thirdWordIndex.toString();

    return AppScaffold(
      title: 'Backup Wallet',
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
              child: Text(
                'Please write down words\n $firstWordIndex, $secondWordIndex and $thirdWordIndex',
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  left: 60,
                  right: 60,
                  top: 30,
                  bottom: 40,
                ),
                child: Container(
                  height: 236,
                  child: Column(children: [
                    TextFormField(
                      controller: _firstWordController,
                      decoration: InputDecoration(
                        labelText: "Word $firstWordIndex",
                        labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 10.0,
                          ),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _secondWordController,
                      decoration: InputDecoration(
                        labelText: "Word $secondWordIndex",
                        labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _thirdWordController,
                      decoration: InputDecoration(
                        labelText: "Word $thirdWordIndex",
                        labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ]),
                )),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonButton(
                    label: 'Next',
                    onPressed: () => widget.vm.confirmBackup(
                      _firstWordController.value.text,
                      _secondWordController.value.text,
                      _thirdWordController.value.text,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _firstWordController.dispose();
    _secondWordController.dispose();
    _thirdWordController.dispose();
    super.dispose();
  }
}
