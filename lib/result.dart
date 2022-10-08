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

    String imageName = 'assets/images/ampel_gruen.png';
    if (result_hist) {
      imageName = 'assets/images/ampel_rot.png';
    }

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Ergebnis')),
            body: Builder(builder: (BuildContext context) {
              return Container(
                  alignment: Alignment.center,
                  child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Barcode $barcode and Histamines $result_hist '),
                        //Image(image: AssetImage(imageName))
                        Image.asset(imageName)
                      ]));
            }),
            drawer: createDrawer(context)));
  }
}
