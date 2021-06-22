import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:phone_number/phone_number.dart';
import 'package:redux/src/store.dart';
import 'package:the_wellbeing_protocol/common/redux/common_actions.dart';
import 'package:the_wellbeing_protocol/core/models/community_entity.dart';
import 'package:the_wellbeing_protocol/core/services/app_services.dart';
import 'package:the_wellbeing_protocol/core/states/app_state.dart';
import 'package:the_wellbeing_protocol/features/hub/redux/hub_actions.dart';

class FetchContacts extends HandlerAction {
  //TODO: Better implementation.
  @override
  Future<dynamic> call(Store<AppState> store, AppServices services) async {
    PermissionStatus permissions = await Permission.contacts.request();

    // Permissions Granted.
    if (permissions.isGranted) {
      PhoneNumberUtil phoneNumUtil = PhoneNumberUtil();
      RegionInfo region = RegionInfo(
        name: 'New Zealand',
        code: 'NZ',
        prefix: 64,
      );

      Iterable<Contact> contacts = await ContactsService.getContacts(
        withThumbnails: true,
      );

      // Construct a CommunityEntity from each contact.
      List<CommunityEntity> contactsList = await Future.wait<CommunityEntity>(
        contacts.map((contact) async {
          String walletAddress = '';
          String displayName = contact.displayName ?? '';
          String? primaryNum = contact.phones?.elementAt(0).value;

          // If a contact possesses a contact number...
          if (primaryNum != null) {
            // Remove spaces from phone number.
            String formattedPhoneNum = primaryNum.replaceAll(' ', '');

            // Validate phone number.
            // As of now, ensures the phone number is a NZ based phone number.
            if (await phoneNumUtil.validate(primaryNum, region.code)) {
              PhoneNumber phoneNumber = await phoneNumUtil.parse(
                formattedPhoneNum,
                regionCode: region.code,
              );
              // TODO: Filter invalid number types such as landline numbers.

              // Query the fuse backend for walletData associated with the number.
              dynamic walletData = await services.fuseAPIService
                  .getWalletByPhoneNumber(phoneNumber.e164);

              // If it exists, set a contacts wallet address.
              if (walletData['walletAddress'] != null) {
                walletAddress = walletData['walletAddress'];
              }
            }
          }
          return CommunityEntity(
            walletAddress: walletAddress,
            displayName: displayName,
            primaryContactNum: primaryNum,
          );
        }),
      );
      return store.dispatch(SetContacts(contactsList));
    }

    // Permissions Refused.
    // TODO.
    else {
      throw UnimplementedError();
    }
  }
}
