import 'dart:ffi';

import 'drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatefulWidget {
  const Result(
      {Key? key,
      required this.passedBarcode,
      required this.passedResult,
      required this.passedprodName})
      : super(key: key);
  final String passedBarcode;
  final bool passedResult;
  final String passedprodName;

  @override
  ResultState createState() => ResultState();
}

class ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    var barcode = widget.passedBarcode;
    var resultHist = widget.passedResult;
    var prodName = widget.passedprodName;

    String imageName = 'assets/images/ampel_gruen.png';
    if (resultHist) {
      imageName = 'assets/images/ampel_rot.png';
    }

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Ergebnis $prodName'),
              backgroundColor: const Color(0xff6200ee),
            ),
            body: Builder(builder: (BuildContext context) {
              return Container(
                  alignment: Alignment.center,
                  child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                            'Barcode $barcode Histamines $resultHist Prod: $prodName'),
                        Image.asset(imageName)
                      ]));
            }),
            drawer: createDrawer(context)));
  }
}
