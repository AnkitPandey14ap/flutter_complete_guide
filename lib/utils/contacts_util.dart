// Import package
import 'package:contacts_service/contacts_service.dart';

class ContactsUtil {
  Future<void> readContacts() async {
    List<Contact> contacts = await ContactsService.getContacts();
    contacts.forEach((element) {
      print(element.phones[0].value);
    });
  }
}
