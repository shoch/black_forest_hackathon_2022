import 'drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Profile extends StatefulWidget {
  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Barcode scan'),
              backgroundColor: const Color(0xff6200ee),
            ),
            body: Builder(builder: (BuildContext context) {
              return Container(child: Text('profile'));
            }),
            drawer: createDrawer(context)));
  }
}
