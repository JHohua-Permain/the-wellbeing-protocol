String convertMnemonicFromList(List<String> mnemonicList) {
  String mnemonicString = '';
  for (var mnemonicWord in mnemonicList) {
    mnemonicString = mnemonicString + mnemonicWord + ' ';
  }
  return mnemonicString.trim();
}

List<String> convertMnemonicToList(String mnemonic) {
  return mnemonic.split(' ');
}

Future<String> decryptMnemonic(String encryptedMnemonic) {
  //TODO: Implement.
  return Future.value(encryptedMnemonic);
}

Future<String> encryptMnemonic(String mnemonic) {
  //TODO: Implement.
  return Future.value(mnemonic);
}
