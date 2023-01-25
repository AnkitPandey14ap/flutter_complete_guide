import 'package:firebase_database/firebase_database.dart';

class BFirebaseData {
  static FirebaseDatabase _database;
  static int _counter = 0;

  static FirebaseDatabase get database {
    if (_database == null) _database = FirebaseDatabase.instance;
    return _database;
  }

  void test() {
    database.ref("test").update({
      "123/age": ++_counter,
      "123/address/line1": "1 Mountain View",
    });
  }
}
