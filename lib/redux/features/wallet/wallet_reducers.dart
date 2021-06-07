import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/models/user.dart';
import 'package:the_wellbeing_protocol/redux/features/wallet/wallet_actions.dart';

final List<Reducer<User>> Function() newWalletReducers = () => [
      TypedReducer<User, CompleteChangingDisplayName>(changeDisplayNameReducer),
      TypedReducer<User, CompleteFetchingContacts>(fetchContactsReducer),
      TypedReducer<User, CompleteLoadingMnemonic>(loadMnemonicReducer),
      TypedReducer<User, SetWallet>(setWalletReducer),
    ];

User changeDisplayNameReducer(User state, CompleteChangingDisplayName action) {
  return state.copyWith(
    displayName: action.displayName,
  );
}

User fetchContactsReducer(User state, CompleteFetchingContacts action) {
  return state.copyWith(
    contacts: action.contacts,
  );
}

User loadMnemonicReducer(User state, CompleteLoadingMnemonic action) {
  return state.copyWith(
    mnemonic: action.mnemonic,
  );
}

User setWalletReducer(User state, SetWallet action) {
  return state.copyWith(
    walletAddress: action.walletAddress,
  );
}
