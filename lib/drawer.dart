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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Profil'),
              backgroundColor: const Color(0xff6200ee),
            ),
            body: Builder(builder: (BuildContext context) {
              return Container(
                  alignment: Alignment.center,
                  child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('Unverträglichkeiten',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.all(20.0),
                              padding: const EdgeInsets.all(3.0),
                              child: const Text('Histamin',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              margin: const EdgeInsets.all(20.0),
                              padding: const EdgeInsets.all(3.0),
                              child: Transform.scale(
                                scale: 1.8,
                                child: Switch(
                                  onChanged: (value) {
                                    setState(() {
                                      profil_histamin = value;
                                    });
                                  },
                                  value: profil_histamin,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.all(20.0),
                              padding: const EdgeInsets.all(3.0),
                              child: const Text('Gluten',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              margin: const EdgeInsets.all(20.0),
                              padding: const EdgeInsets.all(3.0),
                              child: Transform.scale(
                                scale: 1.8,
                                child: Switch(
                                  onChanged: (value) {
                                    setState(() {
                                      profil_other = value;
                                    });
                                  },
                                  value: profil_other,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Text('Diäten',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.all(20.0),
                              padding: const EdgeInsets.all(3.0),
                              child: const Text('Bio',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              margin: const EdgeInsets.all(20.0),
                              padding: const EdgeInsets.all(3.0),
                              child: Transform.scale(
                                scale: 1.8,
                                child: Switch(
                                  onChanged: (value) {
                                    setState(() {
                                      profil_other = value;
                                    });
                                  },
                                  value: profil_other,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.all(20.0),
                              padding: const EdgeInsets.all(3.0),
                              child: const Text('Vegan',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              margin: const EdgeInsets.all(20.0),
                              padding: const EdgeInsets.all(3.0),
                              child: Transform.scale(
                                scale: 1.8,
                                child: Switch(
                                  onChanged: (value) {
                                    setState(() {
                                      profil_other = value;
                                    });
                                  },
                                  value: profil_other,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.all(20.0),
                              padding: const EdgeInsets.all(3.0),
                              child: const Text('Low Carb',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              margin: const EdgeInsets.all(20.0),
                              padding: const EdgeInsets.all(3.0),
                              child: Transform.scale(
                                scale: 1.8,
                                child: Switch(
                                  onChanged: (value) {
                                    setState(() {
                                      profil_other = value;
                                    });
                                  },
                                  value: profil_other,
                                ),
                              ),
                            )
                          ],
                        ),
                      ]));
            }),
            drawer: createDrawer(context)));
  }
}
