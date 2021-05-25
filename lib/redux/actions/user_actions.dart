import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:the_wellbeing_protocol/models/community_entity.dart';
import 'package:the_wellbeing_protocol/redux/app_actions.dart';
import 'package:the_wellbeing_protocol/redux/app_redux.dart';

AppThunkAction createWallet() {
  return (store, services) async {
    String communityAddress = services.fuseNetworkService.getDefaultCommunity();
    JsonMap walletData = await services.fuseAPIService.createWallet(
      communityAddress: communityAddress,
    );
    return store.dispatch(SetWallet(walletData['walletAddress']));
  };
}

AppThunkAction fetchContacts() {
  //TODO: Finish implementation.
  return (store, services) async {
    if (await Permission.contacts.request().isGranted) {
      List<Contact> contacts =
          (await ContactsService.getContacts(withThumbnails: true)).toList();

      List<CommunityEntity> userContacts = contacts
          .map((e) => CommunityEntity.member(
                displayName: e.displayName ?? '',
                walletAddress: '',
              ))
          .toList();
      store.dispatch(SetContacts(userContacts));
    }
  };
}

AppThunkAction fetchTokenBalance(String tokenAddress) {
  return (store, services) async {
    //TODO: Re-implement.
  };
}

AppThunkAction fetchTransactions(String tokenAddress) {
  //TODO: Finish implementation.
  return (store, services) async {
    // final transactions = await fuseAPIService.getWalletTransactions(
    //   store.state.user.walletAddress,
    //   tokenAddress: tokenAddress,
    // );
  };
}

AppThunkAction fetchWallet() {
  //TODO: Finish implementation.
  return (store, services) async {
    final walletData = await services.fuseAPIService.getWallet();
    store.dispatch(SetWallet(walletData['walletAddress']));
  };
}

AppThunkAction processLogout() {
  //TODO: Do proper implementation, but for now do full logout.
  return (store, services) async {
    //TODO: Restart services.
    store.dispatch(ClearData());
  };
}

class SetContacts {
  final List<CommunityEntity> contacts;

  const SetContacts(this.contacts);
}

class SetDisplayName {
  final String displayName;

  const SetDisplayName(this.displayName);
}

class SetWallet {
  final String walletAddress;

  const SetWallet(this.walletAddress);
}
