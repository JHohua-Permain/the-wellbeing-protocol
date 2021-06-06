import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:the_wellbeing_protocol/models/community_entity.dart';
import 'package:the_wellbeing_protocol/redux/actions/user_actions.dart';
import 'package:the_wellbeing_protocol/redux/app_redux.dart';

AppThunkAction fetchContacts() {
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
    } else {
      //TODO: Handle permissions restricted.
      throw UnimplementedError();
    }
  };
}

// AppThunkAction fetchTransactions(String tokenAddress) {
//   //TODO: Finish implementation.
//   return (store, services) async {
//     final transactions = await fuseAPIService.getWalletTransactions(
//       store.state.user.walletAddress,
//       tokenAddress: tokenAddress,
//     );
//   };
// }

AppThunkAction processSetDisplayName(String displayName) {
  return (store, services) async {
    String accountAddress = store.state.user.accountAddress;
    services.fuseAPIService.updateDisplayName(accountAddress, displayName);
    store.dispatch(SetDisplayName(displayName));
  };
}

class Logout {
  const Logout();
}
