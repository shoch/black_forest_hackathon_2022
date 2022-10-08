import 'dart:async';

import 'package:black_forest_hackathon_2022/xd_ampel_grau.dart';
import 'package:black_forest_hackathon_2022/xd_ampel_grn.dart';
import 'package:black_forest_hackathon_2022/xd_ampel_rot.dart';
import 'package:black_forest_hackathon_2022/xd_inhaltsstoffe.dart';
import 'package:black_forest_hackathon_2022/xd_profil.dart';
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
      //routes.home: (context) => BarcodeScanner(),
      routes.barcodeScanner: (context) => BarcodeScanner(),
      routes.profile: (context) => Profile(),
      routes.traffic_light_green: (context) => XDAmpelGrn(),
      routes.traffic_light_grey: (context) => XDAmpelGrau(),
      routes.traffic_light_red: (context) => XDAmpelRot(),

      routes.profil: (context) => XDInhaltsstoffe(),
      routes.profil: (context) => XDProfil(),

      routes.result: (context) =>
          Result(passedBarcode: 'routes', passedResult: false),
    },
  ));
}
