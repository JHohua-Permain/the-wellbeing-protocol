import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class SendToView extends StatefulWidget {
  @override
  _SendToView createState() => _SendToView();
}

class _SendToView extends State<SendToView> {
  List<Contact> contacts = [];
  List<Contact> contactsFiltered = [];
  Map<String, Color> contactsColorMap = new Map();
  TextEditingController searchController = new TextEditingController();
  String startLetter = "";
  @override
  void initState() {
    super.initState();
    getPermissions();
    print('success');
  }

  getPermissions() async {
    if (await Permission.contacts.request().isGranted) {
      getAllContacts();

      searchController.addListener(() {
        filterContacts();
      });
    }
  }

  getAllContacts() async {
    List<Contact> _contacts =
        (await ContactsService.getContacts(withThumbnails: true)).toList();
    setState(() {
      contacts = _contacts;
      startLetter = contacts.first.displayName.substring(0, 1).toUpperCase();
    });
  }

  filterContacts() {
    List<Contact> _contacts = [];
    _contacts.addAll(contacts);
    if (searchController.text.isNotEmpty) {
      _contacts.retainWhere((contact) {
        String searchTerm = searchController.text.toLowerCase();
        String searchTermFlatten = flattenPhoneNumber(searchTerm);
        String contactName = contact.displayName.toLowerCase();
        bool nameMatches = contactName.contains(searchTerm);
        if (nameMatches == true) {
          return true;
        }

        if (searchTermFlatten.isEmpty) {
          return false;
        }

        var phone = contact.phones.firstWhere((phn) {
          String phnFlattened = flattenPhoneNumber(phn.value);
          return phnFlattened.contains(searchTermFlatten);
        }, orElse: () => null);

        return phone != null;
      });
    }
    setState(() {
      contactsFiltered = _contacts;
    });
  }

  String flattenPhoneNumber(String phoneStr) {
    return phoneStr.replaceAllMapped(RegExp(r'^(\+)|\D'), (Match m) {
      return m[0] == "+" ? "+" : "";
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isSearching = searchController.text.isNotEmpty;
    bool listItemsExist = (contactsFiltered.length > 0 || contacts.length > 0);
    return Container(
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
                      controller: searchController,
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
                        border: Border.all(
                          width: 1,
                        ),
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
                    }),
              ],
            ),
          ),
          listItemsExist == true
              ? Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: isSearching == true
                        ? contactsFiltered.length
                        : contacts.length,
                    itemBuilder: (context, index) {
                      //Contact contact = contacts[index];
                      Contact contact = isSearching == true
                          ? contactsFiltered[index]
                          : contacts[index];
                      // if (!isSearching) {
                      //   if (startLetter !=
                      //       contact.displayName.substring(0, 1).toUpperCase()) {
                      //     startLetter =
                      //         contact.displayName.substring(0, 1).toUpperCase();
                      //   }
                      // }
                      return Column(
                        children: [
                          // isSearching
                          //     ? SizedBox()
                          //     : Padding(
                          //         padding: const EdgeInsets.all(8.0),
                          //         child: Text(startLetter),
                          //       ),
                          ListTile(
                            title: Text(contact.displayName),
                            trailing: Text(contact.phones.length > 0
                                ? contact.phones.elementAt(0).value
                                : ''),
                            leading: (contact.avatar != null &&
                                    contact.avatar.length > 0)
                                ? CircleAvatar(
                                    backgroundImage:
                                        MemoryImage(contact.avatar),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: CircleAvatar(
                                      child:
                                          Image.asset('assets/images/anom.png'),
                                      backgroundColor: Colors.grey,
                                    ),
                                  ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, int index) {
                      return Divider(
                        height: 10,
                        thickness: 1,
                      );
                    },
                  ),
                )
              : Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                      isSearching
                          ? 'No search results to show'
                          : 'No contacts exist',
                      style: Theme.of(context).textTheme.headline6),
                ),
        ],
      ),
    );
  }
}
