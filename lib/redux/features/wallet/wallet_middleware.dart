import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/redux/features/wallet/wallet_actions.dart';
import 'package:the_wellbeing_protocol/redux/features/wallet/wallet_handlers.dart';
import 'package:the_wellbeing_protocol/services/app_services.dart';

class WalletMiddleware implements MiddlewareClass<AppState> {
  final AppServices services;
  final FlutterSecureStorage storage;

  WalletMiddleware(this.services, this.storage);

  @override
  dynamic call(Store<AppState> store, dynamic action, NextDispatcher next) {
    if (action is BeginClearingData) {
      handleClearingData(services, storage)
          .then((_) => store.dispatch(CompleteClearingData()));
    } else if (action is BeginLoadingMnemonic) {
      handleLoadingMnemonic(storage).then(
        (mnemonic) => store.dispatch(CompleteLoadingMnemonic(mnemonic)),
      );
    }

    return next(action);
  }
}
