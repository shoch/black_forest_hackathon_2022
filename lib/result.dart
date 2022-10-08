import 'dart:ffi';

import 'drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatefulWidget {
  const Result(
      {Key? key, required this.passedBarcode, required this.passedResult})
      : super(key: key);
  final String passedBarcode;
  final bool passedResult;

  @override
  ResultState createState() => ResultState();
}

class ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    var barcode = widget.passedBarcode;
    var result_hist = widget.passedResult;
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Result ')),
            body: Builder(builder: (BuildContext context) {
              return Container(child: Text('result $barcode $result_hist '));
            }),
            drawer: createDrawer(context)));
  }
}
