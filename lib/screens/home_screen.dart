// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/data/firebase_data.dart';
import 'package:flutter_complete_guide/ml_kit/vision_detector_views/detector_views.dart';
import 'package:flutter_complete_guide/screens/local_db_screen.dart';
import 'package:flutter_complete_guide/utils/contacts_util.dart';
import 'package:ymchat_flutter/ymchat_flutter.dart';

import 'products_overview_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var num_list = ['A', 'B', 'C'];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  ProductsOverviewScreen.routeName,
                );
              },
              child: Text("Shoping app")),
          TextButton(
              onPressed: () {
                BFirebaseData().test();
              },
              child: Text("Firebase msg check")),
          TextButton(
              onPressed: () => navigateToSelfieScreen(context),
              child: Text("Selfie")),
          TextButton(
            onPressed: fetchContacts,
            child: Text("Fetch contacts"),
          ),
          TextButton(
            onPressed: () {
              navigateLocalDbScreen(context);
            },
            child: Text("Local database"),
          ),
          TextButton(
            onPressed: openYmChat,
            child: Text("Open YmChat"),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                index = index + 1;
              });
            },
            child: Text("Custom Crash on Firebase ${num_list[index]}"),
          ),
        ],
      ),
    );
  }

  void navigateToSelfieScreen(BuildContext context) {
    Navigator.of(context).pushNamed(
      FaceDetectorView.routeName,
    );
  }

  void fetchContacts() {
    print("clicked");
    ContactsUtil().readContacts();
  }

  void openYmChat() {
    print("clicked");
    YmChat.setBotId("x1667463091055");
    YmChat.startChatbot();
  }

  void navigateLocalDbScreen(BuildContext context) {
    Navigator.of(context).pushNamed(
      LocalDbScreen.routeName,
    );
  }
}
