import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:the_wellbeing_protocol/services.dart';

ThunkAction getCurrentToken(String tokenAddress) => (Store store) async {
      var tokenDetails = await fuseNetworkService.getTokenDetails(tokenAddress);
      var tokenDetailsMap = tokenDetails as Map<String, dynamic>;
      tokenDetailsMap['address'] = tokenAddress;
      store.dispatch(
        SetCurrentToken(tokenDetailsMap),
      );
    };

ThunkAction getTransactions(String walletAddress, String tokenAddress) =>
    (Store store) async {
      var transactions = await fuseAPIService.getWalletTransactions(
        walletAddress,
        tokenAddress: tokenAddress,
      );
    };

ThunkAction getWallet() => (Store store) async {
      var wallet = await fuseAPIService.getWallet();
      //TODO Use Json.
      store.dispatch(
        SetWallet(wallet['walletAddress']),
      );
    };

ThunkAction login(String displayName, String phoneNumber, String accountAddress) =>
    (Store store) async {
      try {
        var jwt = await fuseAPIService.requestToken(
          phoneNumber,
          accountAddress,
        );
        fuseAPIService.setJwtToken(jwt);
        store.dispatch(LoginSuccess(displayName, phoneNumber));
      } catch (e) {
        //TODO: Catch errors produced by invalid login.
      }
      ;
    };

ThunkAction restoreWallet(String mnemonic) => (Store store) async {
      try {
        var privateKey = privateKeyRetrieverDelegate(mnemonic);
        await fuseNetworkService.setCredentials(privateKey);
        var accountAddress = await fuseNetworkService.getAddress();
        //TODO: Store mnemonic and private key locally.
        store.dispatch(RestoreWalletSuccess(
          mnemonic,
          privateKey,
          accountAddress,
        ));
      } catch (e) {
        //TODO: Catch errors produced by using invalid mnemonics.
      }
    };

class LoginSuccess {
  final String displayName;
  final String phoneNumber;

  LoginSuccess(this.displayName, this.phoneNumber);
}

class RestoreWalletSuccess {
  final String mnemonic;
  final String privateKey;
  final String accountAddress;

  RestoreWalletSuccess(this.mnemonic, this.privateKey, this.accountAddress);
}

class SetCurrentToken {
  final Map<String, dynamic> tokenJson;

  SetCurrentToken(this.tokenJson);
}

class SetWallet {
  final String walletAddress;

  SetWallet(this.walletAddress);
}