import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_home.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDAmpelRot extends StatelessWidget {
  XDAmpelRot({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 81.0, start: 0.0),
            child: Container(
              color: const Color(0xff6200ee),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 42.0, start: 15.0),
            Pin(size: 42.0, start: 20.0),
            child:
                // Adobe XD layer: 'arrow_back_white_48…' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDHome(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  SizedBox.expand(
                      child: SvgPicture.string(
                    _svg_e4uv,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  )),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: SizedBox.expand(
                        child: SvgPicture.string(
                      _svg_mwxg3n,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    )),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 139.0, middle: 0.5568),
            Pin(size: 39.0, start: 25.0),
            child: Text(
              'ERGEBNIS',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                color: const Color(0xffffffff),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 277.5, middle: 0.4982),
            Pin(size: 64.0, end: 56.0),
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                    child: SvgPicture.string(
                  _svg_e8nvk,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 250.0, middle: 0.5123),
            Pin(size: 26.0, end: 74.0),
            child: Text(
              'INHALTSSTOFFE ANZEIGEN',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                color: const Color(0xffffffff),
              ),
              softWrap: false,
            ),
          ),
          // Adobe XD layer: 'trafficlight red' (shape)
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/ampel rot.png'),
                fit: BoxFit.fill,
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: -10.0, vertical: 173.0),
          ),
        ],
      ),
    );
  }
}

const String _svg_e4uv =
    '<svg viewBox="0.0 0.0 42.0 42.0" ><path  d="M 0 0 L 42 0 L 42 42 L 0 42 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mwxg3n =
    '<svg viewBox="4.0 4.0 34.0 34.0" ><path  d="M 38 18.875 L 12.13875007629395 18.875 L 24.01749992370605 6.996250152587891 L 21 4 L 4 21 L 21 38 L 23.99625015258789 35.00374984741211 L 12.13875007629395 23.125 L 38 23.125 L 38 18.875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e8nvk =
    '<svg viewBox="0.0 0.0 277.5 64.0" ><path  d="M 40.92570114135742 0 L 236.6017150878906 0 C 259.204345703125 0 277.5274047851562 14.3268871307373 277.5274047851562 32 C 277.5274047851562 49.67311096191406 259.204345703125 64 236.6017150878906 64 L 40.92570114135742 64 C 18.32305908203125 64 0 49.67311096191406 0 32 C 0 14.3268871307373 18.32305908203125 0 40.92570114135742 0 Z" fill="#6200ee" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
