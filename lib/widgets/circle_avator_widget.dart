import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class CircleAvatorWidget extends StatelessWidget {
  final Contact phoneContact;
  const CircleAvatorWidget({required this.phoneContact});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (phoneContact.avatar != null && phoneContact.avatar!.length > 0)
          ? CircleAvatar(
              backgroundImage: MemoryImage(phoneContact.avatar!),
            )
          : Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                child: Image.asset('assets/images/anom.png'),
                backgroundColor: Colors.grey,
              ),
            ),
    );
  }
}
