import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/data/firebase_data.dart';

import 'products_overview_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

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
          TextButton(onPressed: () {}, child: Text("Selfie")),
        ],
      ),
    );
  }
}
