import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'barcodeScanner.dart';
import 'profile.dart';
import 'result.dart';
import 'drawer.dart';
import 'routes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Don`t kill me',
    initialRoute: routes.barcodeScanner,
    routes: {
      routes.barcodeScanner: (context) => BarcodeScanner(),
      routes.profile: (context) => Profile(),
      routes.result: (context) => Result(
          passedBarcode: 'routes',
          passedResult: false,
          passedprodName: '-',
          passedIncredientesCount: -1,
          passedImageURL: ''),
    },
  ));
}
