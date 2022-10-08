import 'dart:ffi';

import 'package:openfoodfacts/model/ProductImage.dart';

import 'drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatefulWidget {
  const Result(
      {Key? key,
      required this.passedBarcode,
      required this.passedResult,
      required this.passedprodName,
      required this.passedIncredientesCount,
      required this.passedImageURL})
      : super(key: key);
  final String passedBarcode;
  final bool passedResult;
  final String passedprodName;
  final int passedIncredientesCount;
  final String passedImageURL;

  @override
  ResultState createState() => ResultState();
}

class ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    var barcode = widget.passedBarcode;
    var resultHist = widget.passedResult;
    var prodName = widget.passedprodName;
    var incredientesCount = widget.passedIncredientesCount;
    var imageURL = widget.passedImageURL;

    String imageName = 'assets/images/ampel_gruen.png';
    if (resultHist) {
      imageName = 'assets/images/ampel_rot.png';
    }

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Ergebnis: $prodName'),
              backgroundColor: const Color(0xff6200ee),
            ),
            body: Builder(builder: (BuildContext context) {
              return Container(
                  alignment: Alignment.center,
                  child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          imageName,
                          height: 350,
                        ),
                        Text(''),
                        Image.network(
                          imageURL,
                          height: 300,
                        ),
                        Text(''),
                        Text('Barcode: $barcode'),
                        Text('ProductName: $prodName'),
                        Text('Histamines: $resultHist'),
                        Text('Anzahl Zutaten: $incredientesCount'),
                      ]));
            }),
            drawer: createDrawer(context)));
  }
}
