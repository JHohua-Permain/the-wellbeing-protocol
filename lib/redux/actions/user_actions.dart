import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:the_wellbeing_protocol/generated/models/community_entity.dart';
import 'package:the_wellbeing_protocol/services.dart';

//TODO: Finish implementation.
ThunkAction getContacts() => (Store store) async {
      if (await Permission.contacts.request().isGranted) {
        List<Contact> contacts =
            (await ContactsService.getContacts(withThumbnails: true)).toList();

        List<UserContact> userContacts = contacts
            .map((e) => UserContact(
                  displayName: e.displayName ?? '',
                  walletAddress: '',
                ))
            .toList();
        store.dispatch(GetContactsSuccess(userContacts));
      }
      // store.dispatch(GetContactsFailed());
    };

ThunkAction getToken(String tokenAddress) => (Store store) async {
      var tokenDetails = await fuseNetworkService.getTokenDetails(tokenAddress);
      var tokenDetailsMap = tokenDetails as Map<String, dynamic>;
      tokenDetailsMap['address'] = tokenAddress;
      store.dispatch(SetToken(tokenDetailsMap));
    };

//TODO: Implement.
ThunkAction getTransactions(
  String walletAddress,
  String tokenAddress,
) =>
    (Store store) async {
      // var transactions = await fuseAPIService.getWalletTransactions(
      //   walletAddress,
      //   tokenAddress: tokenAddress,
      // );
    };

//TODO: Finish implementation.
ThunkAction getWallet() => (Store store) async {
      var walletDetails = await fuseAPIService.getWallet();

      //TODO Pass argument as Json.
      store.dispatch(SetWallet(walletDetails['walletAddress']));
    };

//TODO:.
ThunkAction login(
  String displayName,
  String phoneNumber,
  String accountAddress,
) =>
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

        store.dispatch(RestoreWalletSuccess(
          mnemonic,
          privateKey,
          accountAddress,
        ));
      } catch (e) {
        //TODO: Catch errors produced by using a invalid mnemonic.
      }
    };

class GetContactsSuccess {
  final List<UserContact> contacts;

  GetContactsSuccess(this.contacts);
}

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

class SetToken {
  final Map<String, dynamic> tokenData;

  SetToken(this.tokenData);
}

class SetWallet {
  final String walletAddress;

  SetWallet(this.walletAddress);
}
