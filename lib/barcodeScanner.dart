import 'dart:convert';
import 'dart:io';

import 'package:black_forest_hackathon_2022/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'drawer.dart';
import 'routes.dart';

import 'dart:async';
import 'package:openfoodfacts/model/OcrIngredientsResult.dart';
import 'package:openfoodfacts/openfoodfacts.dart';
import 'package:openfoodfacts/utils/TagType.dart';

import 'package:csv/csv.dart';

class BarcodeScanner extends StatefulWidget {
  @override
  BarcodeScannerState createState() => BarcodeScannerState();
}

class BarcodeScannerState extends State<BarcodeScanner> {
  String _scanBarcode = 'Unknown';
  List<List<dynamic>> _histamin_data = [];
  @override
  void initState() {
    super.initState();
  }

  Future<List<dynamic>> getHistamin() async {
    final input =
        new File('assets/histamin_vertr__glichkeiten2.csv').openRead();
    final fields = await input
        .transform(utf8.decoder)
        .transform(new CsvToListConverter(fieldDelimiter: ';'))
        .toList();
    return fields;
  }

  void _loadCSV() async {
    final _rawData = await rootBundle.loadString("assets/histamin.csv");
    List<List<dynamic>> _listData =
        const CsvToListConverter().convert(_rawData);
    setState(() {
      _histamin_data = _listData;
    });
  }

  Future<List<Ingredient>?> getProduct(String barcode) async {
    //var barcode = '0048151623426';
    //"026590004013
    String _barcode = barcode;
    ProductQueryConfiguration configuration = ProductQueryConfiguration(
        _barcode,
        language: OpenFoodFactsLanguage.GERMAN,
        fields: [ProductField.ALL]);

    ProductResult result = await OpenFoodAPIClient.getProductRaw(
        barcode, OpenFoodFactsLanguage.GERMAN);

    if (result.status != 1) {
      throw Exception('product not found, please insert data for $barcode');
    }

    List<Ingredient>? ingredients = result.product!.ingredients;
    return ingredients;
  }

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    var ingredients = getProduct(barcodeScanRes);
    var histamin = getHistamin();

    setState(() {
      _scanBarcode = barcodeScanRes;
    });

    Navigator.of(context).pushReplacement(//new
        new MaterialPageRoute(
            //new
            settings: const RouteSettings(name: routes.result), //new
            builder: (context) => new Result(
                passedBarcode: _scanBarcode, passedResult: false)) //new
        ); //new
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Barcode scan')),
            body: Builder(builder: (BuildContext context) {
              return Container(
                  alignment: Alignment.center,
                  child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                            onPressed: () => scanBarcodeNormal(),
                            child: Text('Start barcode scan')),
                        Text('Scan result : $_scanBarcode\n',
                            style: TextStyle(fontSize: 20))
                      ]));
            }),
            drawer: createDrawer(context)));
  }
}
