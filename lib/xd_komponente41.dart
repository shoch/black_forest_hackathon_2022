import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDKomponente41 extends StatelessWidget {
  XDKomponente41({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: const Color(0x1c3e3e3e),
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(width: 1.0, color: const Color(0x1cd1d1d1)),
          ),
          margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
        ),
        Pinned.fromPins(
          Pin(size: 30.0, start: 0.0),
          Pin(start: 0.0, end: 0.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              border: Border.all(width: 1.0, color: const Color(0xffd1d1d1)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
