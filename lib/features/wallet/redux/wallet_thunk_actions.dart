import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:the_wellbeing_protocol/core/models/community_entity.dart';
import 'package:the_wellbeing_protocol/features/wallet/redux/wallet_actions.dart';
import 'package:the_wellbeing_protocol/redux/common/common_utils.dart';

AppThunkAction changeDisplayName(String displayName) {
  return (store, services) async {
    await services.fuseAPIService.updateDisplayName(
      store.state.user.accountAddress!,
      displayName,
    );
    return store.dispatch(CompleteChangingDisplayName(displayName));
  };
}

AppThunkAction fetchContacts() {
  return (store, services) async {
    if (await Permission.contacts.request().isGranted) {
      Iterable<Contact> contacts =
          await ContactsService.getContacts(withThumbnails: true);

      //TODO: Need to communicate with the Fuse Studio backend API to check and get wallet address for relevant contacts.
      List<CommunityEntity> userContacts = contacts
          .map((contact) => CommunityEntity.member(
                displayName: contact.displayName ?? '',
                primaryContactNum: contact.phones?.elementAt(0).value ?? '',
                walletAddress: '',
              ))
          .toList();
      return store.dispatch(CompleteFetchingContacts(userContacts));
    } else {
      //TODO: Handle response when permissions are denied.
      throw UnimplementedError();
    }
  };
}

// AppThunkAction fetchTokenBalance(String tokenAddress) {
//   return (store, services) async {
//     final tokenBalanceData = await services.fuseNetworkService.getTokenBalance(
//       tokenAddress,
//       address: store.state.user.accountAddress,
//     );
//     // TODO: Set data.
//   };
// }
