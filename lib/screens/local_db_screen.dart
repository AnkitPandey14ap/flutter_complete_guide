import 'package:flutter/material.dart';

class LocalDbScreen extends StatelessWidget {
  static const routeName = "/local_db";
  const LocalDbScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Local DB"),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text("insert new user"),
          ),
          TextButton(
            onPressed: () {},
            child: Text("print all users"),
          ),
          TextButton(
            onPressed: () {},
            child: Text("print user by Id"),
          ),
        ],
      ),
    );
  }
}
