import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/common/widgets/app_scaffold.dart';
import 'package:the_wellbeing_protocol/features/authentication/authentication_view_models.dart';

class RestoreScreen extends StatefulWidget {
  final RestoreViewModel vm;

  RestoreScreen(this.vm);

  @override
  _RestoreScreenState createState() => _RestoreScreenState();
}

class _RestoreScreenState extends State<RestoreScreen> {
  final TextEditingController _mnemonicController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //TODO: Finish Visuals.
    return AppScaffold(
      title: 'Restore your Wallet',
      body: Container(
        padding: const EdgeInsets.all(20),
        constraints: BoxConstraints.expand(),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Please enter your 12 word mnemonic to recover your wallet.',
                  textAlign: TextAlign.center,
                  textScaleFactor: 1.5,
                ),
              ),
              TextFormField(
                controller: _mnemonicController,
                minLines: 4,
                maxLines: null,
                style: TextStyle(fontSize: 28),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () => widget.vm.restore(
                  _mnemonicController.text.trim(),
                ),
                child: Text(
                  'Restore',
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(16)),
                  backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _mnemonicController.dispose();
    super.dispose();
  }
}
