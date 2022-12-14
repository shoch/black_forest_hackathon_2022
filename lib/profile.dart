import 'package:multiselect_formfield/multiselect_formfield.dart';

import 'drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter/foundation.dart';
import 'package:sticky_headers/sticky_headers.dart';

class Profile extends StatefulWidget {
  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  bool profil_histamin = true;
  bool profil_other = false;
  List? _myActivities;
  late String _myActivitiesResult;
  final formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                child: MultiSelectFormField(
                  autovalidate: AutovalidateMode.disabled,
                  chipBackGroundColor: const Color(0xff6200ee),
                  chipLabelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                  dialogTextStyle: TextStyle(fontWeight: FontWeight.bold),
                  checkBoxActiveColor: const Color(0xff6200ee),
                  checkBoxCheckColor: Colors.white,
                  dialogShapeBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  title: Text(
                    "Unverträglichkeiten",
                    style: TextStyle(fontSize: 16),
                  ),
                  validator: (value) {
                    if (value == null || value.length == 0) {
                      return 'Bitte eine oder mehrere Optionen auswählen';
                    }
                    return null;
                  },
                  dataSource: [
                    {
                      "display": "Hystamin",
                      "value": "Hystamin",
                    },
                    {
                      "display": "Lactose",
                      "value": "Lactose",
                    },
                    {
                      "display": "Gluten",
                      "value": "Gluten",
                    },
                    {
                      "display": "Alkohol",
                      "value": "Alkohol",
                    },
                  ],
                  textField: 'display',
                  valueField: 'value',
                  okButtonLabel: 'OK',
                  cancelButtonLabel: 'CANCEL',
                  hintWidget:
                      Text('Bitte eine oder mehrere Optionen auswählen'),
                  initialValue: _myActivities,
                  onSaved: (value) {
                    if (value == null) return;
                    setState(() {
                      _myActivities = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
