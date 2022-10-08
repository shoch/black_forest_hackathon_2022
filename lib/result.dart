import 'drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatefulWidget {
  @override
  ResultState createState() => ResultState();
}

class ResultState extends State<Result> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Barcode scan')),
            body: Builder(builder: (BuildContext context) {
              return Container(
                  child: Text('result'));
            }), 
            drawer: createDrawer(context)));
  }
}