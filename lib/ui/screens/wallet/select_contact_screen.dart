import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/models/community_entity.dart';
import 'package:the_wellbeing_protocol/ui/view_models/wallet_view_models.dart';
import 'package:the_wellbeing_protocol/ui/widgets/app_circle_avatar.dart';
import 'package:the_wellbeing_protocol/ui/widgets/app_scaffold.dart';

class SelectContactScreen extends StatefulWidget {
  final SelectContactViewModel vm;

  SelectContactScreen(this.vm);

  @override
  _SelectContactScreenState createState() => _SelectContactScreenState();
}

class _SelectContactScreenState extends State<SelectContactScreen> {
  List<CommunityEntity> _contactsFiltered = [];
  TextEditingController _searchController = TextEditingController();

  //TODO: Purpose of these?
  // Map<String, Color> contactsColorMap = Map();
  // String startLetter = '';
  // startLetter = contacts.first.displayName?.substring(0, 1).toUpperCase() ?? '';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Send to',
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            _buildSearchBar(context),
            _buildContactsListView(context),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterContacts);
  }

  Widget _buildContactsListView(BuildContext context) {
    bool isSearching = _searchController.text.isNotEmpty;
    List<CommunityEntity> contacts =
        isSearching ? _contactsFiltered : widget.vm.contacts;
    String emptyListMessage =
        isSearching ? 'No search results to show' : 'No contacts exist';

    if (contacts.length == 0) {
      return Container(
        padding: EdgeInsets.all(20),
        child: Text(
          emptyListMessage,
          style: Theme.of(context).textTheme.headline6,
        ),
      );
    }

    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: contacts.length,
        itemBuilder: (context, index) => Column(
          children: [
            ListTile(
              title: Text(contacts[index].displayName),

              // TODO: Should not be null.
              trailing: Text(contacts[index].primaryContactNum ?? ''),
              leading: AppCircleAvatar(avatar: contacts[index].avatar),
              onTap: () {
                // TODO
              },
            ),
          ],
        ),
        separatorBuilder: (context, int index) => Divider(
          height: 10,
          thickness: 1,
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Container(
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
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
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
              // TODO
            },
          ),
        ],
      ),
    );
  }

  bool _filterContact(CommunityEntity contact) {
    String searchTerm = _searchController.text.toLowerCase();
    String contactName = contact.displayName.toLowerCase();
    String searchTermFlattened = _flattenPhoneNumber(searchTerm);
    String? contactNumberFlattened = contact.primaryContactNum == null
        ? null
        : _flattenPhoneNumber(contact.primaryContactNum!);
    if (contactName.contains(searchTerm)) {
      return true;
    }
    if (searchTermFlattened.isNotEmpty &&
        contactNumberFlattened != null &&
        contactNumberFlattened.contains(searchTermFlattened)) {
      return true;
    }

    return false;
  }

  void _filterContacts() {
    List<CommunityEntity> contacts = widget.vm.contacts;
    List<CommunityEntity> contactsFiltered = [];
    if (_searchController.text.isNotEmpty) {
      contactsFiltered = contacts.where(_filterContact).toList();
    }
    setState(() => _contactsFiltered = contactsFiltered);
  }

  String _flattenPhoneNumber(String phoneNumber) {
    return phoneNumber.replaceAllMapped(
      RegExp(r'^(\+)|\D'),
      (Match m) => m[0] == "+" ? "+" : "",
    );
  }
}
