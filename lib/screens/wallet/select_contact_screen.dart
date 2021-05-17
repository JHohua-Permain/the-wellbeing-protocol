import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:the_wellbeing_protocol/generated/models/community_entity.dart';

import 'package:the_wellbeing_protocol/widgets/app_list_view.dart';
import 'package:the_wellbeing_protocol/widgets/app_circle_avatar.dart';
import 'package:the_wellbeing_protocol/widgets/template_screen.dart';

//TODO
class SelectContactScreen extends StatefulWidget {
  @override
  _SelectContactScreen createState() => _SelectContactScreen();
}

class _SelectContactScreen extends State<SelectContactScreen> {
  List<CommunityMember> _contacts = [];
  List<CommunityMember> _contactsFiltered = [];
  TextEditingController _searchController = TextEditingController();

  // Map<String, Color> _contactsColorMap = Map();
  // String _startLetter = "";

  void _getPermissions() async {
    if (await Permission.contacts.request().isGranted) {
      _searchController.addListener(_filterContacts);
      List<Contact> contacts =
          (await ContactsService.getContacts(withThumbnails: true)).toList();
      setState(() {
        contacts.forEach((element) {
          CommunityMember member = CommunityMember(
            displayName: element.displayName ?? '',
            primaryContactNumber: element.phones?.first.value,
            avatar: element.avatar,
            walletAddress: '',
          );
          _contacts.add(member);
        });
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _getPermissions();
  }

  void _filterContacts() {
    if (_searchController.text.isEmpty) return;
    setState(() {
      _contactsFiltered = _contacts.where((contact) {
        String searchTerm = _searchController.text.toLowerCase();
        String searchTermFlatten = flattenPhoneNumber(searchTerm);
        String? contactName = contact.displayName.toLowerCase();
        if (contactName.contains(searchTerm)) {
          return false;
        } else if (searchTermFlatten.isEmpty) {
          return false;
        }
        return false;
      }).toList();
    });
    //TODO: Don't understand this.
    // var phone = contact.phones?.firstWhere(
    //       (phn) {
    //     String phnFlattened = flattenPhoneNumber(phn.value!);
    //     return phnFlattened.contains(searchTermFlatten);
    //   },
    // );
    //
    // return phone != null;
  }

  String flattenPhoneNumber(String phoneStr) {
    return phoneStr.replaceAllMapped(
      RegExp(r'^(\+)|\D'),
      (Match m) => m[0] == "+" ? "+" : "",
    );
  }

  void _pushRoute(BuildContext context) {
    // context.router.root.push();
  }

  @override
  Widget build(BuildContext context) {
    var isSearching = _searchController.text.isEmpty;
    List<CommunityMember> contacts = isSearching ? _contacts : _contactsFiltered;
    Widget contactsListView = contacts.isNotEmpty
        ? AppListView(
            entityList: contacts,
            trailingWidgetBuilder: (CommunityMember contact) {
              var phoneNum = contact.primaryContactNumber ?? '';
              return Text(phoneNum);
            },
            // pushRoute: () => _pushRoute(context),
          )
        : Container(
            padding: EdgeInsets.all(20),
            child: Text(
              isSearching ? 'No search results to show' : 'No contacts found',
              style: Theme.of(context).textTheme.headline6,
            ),
          );

    return TemplateScreen(
      title: 'Send to',
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: 'Name or Address',
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                          ),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.black,
                      ),
                      child: Icon(
                        Icons.qr_code_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    onTap: () {
                      throw UnimplementedError();
                    },
                  ),
                ],
              ),
            ),
            contactsListView,
          ],
        ),
      ),
    );
  }
}