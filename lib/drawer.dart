import 'package:flutter/material.dart';
import 'routes.dart';

Widget createDrawer(BuildContext context) {
  return Drawer(
      child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      Container(
        color: Theme.of(context).canvasColor,
        child: DrawerHeader(
          child: Text(
            'Navigation Drawer',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff6200ee),
            ),
          ),
        ),
      ),
      ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text('BarcodeScanner'),
          onTap: () {
            Navigator.pushReplacementNamed(context, routes.barcodeScanner);
          }),
      ListTile(
          leading: Icon(Icons.pie_chart),
          title: Text('Profile'),
          onTap: () {
            Navigator.pushReplacementNamed(context, routes.profile);
          }),
      ListTile(
          leading: Icon(Icons.category),
          title: Text('Result'),
          onTap: () {
            Navigator.pushReplacementNamed(context, routes.result);
          }),
    ],
  ));
}
