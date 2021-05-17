import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/generated/models/app_state.dart';
import 'package:the_wellbeing_protocol/redux/actions/user_actions.dart';


class RestoreWalletScreen extends StatefulWidget {
  @override
  _RestoreWalletScreenState createState() => _RestoreWalletScreenState();
}

class _RestoreWalletScreenState extends State<RestoreWalletScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StoreBuilder<AppState>(
      builder: (context, store) {
        VoidCallback onSubmit = () => store.dispatch(restoreWallet(_controller.value.text));

        return Scaffold(
          body: Form(
            child: Column(
              children: [
                Text('Enter Mnemonic'),
                TextFormField(
                  minLines: 4,
                  maxLines: 4,
                  controller: _controller,
                ),
                ElevatedButton(
                  onPressed: onSubmit,
                  child: Text('Restore'),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}