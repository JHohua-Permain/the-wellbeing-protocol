import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/ui/view_models/authentication_view_models.dart';

class VerificationDialog extends StatefulWidget {
  final VerificationViewModel vm;

  VerificationDialog(this.vm);

  @override
  _VerificationDialogState createState() => _VerificationDialogState();
}

class _VerificationDialogState extends State<VerificationDialog> {
  final TextEditingController _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //TODO: Finish Visuals.
    return AlertDialog(
      title: Text("Give the code?"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[TextField(controller: _codeController)],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => widget.vm.verify(_codeController.text.trim()),
          child: Text(
            "Confirm",
            style: TextStyle(color: Colors.white),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }
}
