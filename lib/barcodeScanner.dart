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
  bool _histamin = false;
//  List<dynamic> _histamin_data = [];
  @override
  void initState() {
    super.initState();
  }

  Future<List<dynamic>> _loadCSV() async {
    final _rawData = await rootBundle.loadString("assets/histamin.csv");
    List<dynamic> _listData = const CsvToListConverter().convert(_rawData);
    return _listData;
    //setState(() {
    //  _histamin_data = _listData;
    //});
  }

  Future<List<Ingredient>> getProduct(String barcode) async {
    //var barcode = '0048151623426';
    //"026590004013
    String _barcode = barcode;
    ProductQueryConfiguration configurations = ProductQueryConfiguration(
        barcode,
        language: OpenFoodFactsLanguage.GERMAN,
        fields: [
          ProductField.NUTRIMENTS,
          ProductField.INGREDIENTS_TEXT,
          ProductField.INGREDIENTS,
          ProductField.ADDITIVES,
          ProductField.NUTRIENT_LEVELS,
          ProductField.IMAGES,
          ProductField.GENERIC_NAME
        ]);

    ProductResult result = await OpenFoodAPIClient.getProduct(configurations);
    List<Ingredient> realIngredients = [];

    if (result.status != 1) {
      return realIngredients;
    }

    List<Ingredient>? ingredients = result.product!.ingredients;

    if (ingredients == null) return realIngredients;
    // todo warn

    for (var i = 0; i < ingredients!.length; i++) {
      realIngredients.add(ingredients[i]);
    }

    return realIngredients;
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

    List<Ingredient> ingredients = await getProduct(barcodeScanRes);
    List<String?> ingredients_text = [];
    for (var i = 0; i < ingredients.length; i++) {
      ingredients_text.add(ingredients[i].text);
    }

    var product_ingredients_text_set = ingredients_text.toSet();
    List<dynamic> histamin_data = await _loadCSV();

    var histamin_ingredients = histamin_data
        .where((element) => element[0] == 0)
        .map((value) => value[1]);
    var histamin_ingredients_set = histamin_ingredients.toSet();

    bool histamin = product_ingredients_text_set
        .intersection(histamin_ingredients_set)
        .isNotEmpty;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });

    setState(() {
      _histamin = histamin;
    });

    Navigator.of(context).pushReplacement(//new
        new MaterialPageRoute(
            //new
            settings: const RouteSettings(name: routes.result), //new
            builder: (context) => new Result(
                passedBarcode: _scanBarcode, passedResult: _histamin)) //new
        ); //new
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xffffffff),
            appBar: AppBar(
              title: const Text('Produkterkennung'),
              backgroundColor: const Color(0xff6200ee),
            ),
            body: Builder(builder: (BuildContext context) {
              return Container(
                  alignment: Alignment.center,
                  child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/logo.png'),
                        ElevatedButton(
                            onPressed: () => scanBarcodeNormal(),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff6200ee),
                            ),
                            child: const Text('Produkt erkennen',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 20,
                                ))),
                      ]));
            }),
            drawer: createDrawer(context)));
  }
}
