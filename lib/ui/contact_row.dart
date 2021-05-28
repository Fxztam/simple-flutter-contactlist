import 'package:flutter/material.dart';
import 'package:simple_flutter_contactlist/models/contact.dart';

class ContactRow extends StatelessWidget {
  late final Contact contact;

  ContactRow({required this.contact}) : super();

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 24,
        backgroundImage: NetworkImage(
            "https://eu.ui-avatars.com/api/?name=${contact.surname}+${contact.name}&background=2f855a&color=fff",
            scale: 50),
      ),
      contentPadding: EdgeInsets.only(top: 6, left: 16, bottom: 6),
      title: Text("${contact.surname} ${contact.name}"),
      subtitle: Text("${contact.email}"),
    );
  }
}
