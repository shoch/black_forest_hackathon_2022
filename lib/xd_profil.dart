import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
//import './xd_home.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_komponente41.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'barcodeScanner.dart';

class XDProfil extends StatelessWidget {
  XDProfil({
    Key? key,
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
                  pageBuilder: () => BarcodeScanner(),
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
            Pin(size: 99.0, middle: 0.4856),
            Pin(size: 39.0, start: 25.0),
            child: Text(
              'PROFIL',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                color: const Color(0xffffffff),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 64.0, start: 81.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
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
          Pinned.fromPins(
            Pin(size: 117.0, start: 15.0),
            Pin(size: 39.0, start: 95.0),
            child: Text(
              'Allergien',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                color: const Color(0xff666666),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 23.6, end: 19.4),
            Pin(size: 13.5, start: 107.7),
            child:
                // Adobe XD layer: 'Icon ionic-ios-arro…' (shape)
                SvgPicture.string(
              _svg_an223,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 64.0, middle: 0.3067),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
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
          Pinned.fromPins(
            Pin(size: 258.0, start: 15.0),
            Pin(size: 39.0, middle: 0.3126),
            child: Text(
              'Unverträglichkeiten',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                color: const Color(0xff666666),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 23.6, end: 19.4),
            Pin(size: 13.5, middle: 0.3188),
            child:
                // Adobe XD layer: 'Icon ionic-ios-arro…' (shape)
                SvgPicture.string(
              _svg_q5rp64,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 64.0, middle: 0.2101),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
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
          Pinned.fromPins(
            Pin(size: 86.0, start: 15.0),
            Pin(size: 39.0, middle: 0.2219),
            child: Text(
              'Diäten',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                color: const Color(0xff666666),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 23.6, end: 19.4),
            Pin(size: 13.5, middle: 0.2312),
            child:
                // Adobe XD layer: 'Icon ionic-ios-arro…' (shape)
                SvgPicture.string(
              _svg_a1ppo,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 72.0, end: 31.0),
            Pin(size: 30.0, middle: 0.3917),
            child: XDKomponente41(),
          ),
          Pinned.fromPins(
            Pin(size: 85.0, start: 31.0),
            Pin(size: 26.0, middle: 0.3923),
            child: Text(
              'Hystamin',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                color: const Color(0xff666666),
              ),
              softWrap: false,
            ),
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
const String _svg_an223 =
    '<svg viewBox="369.0 107.7 23.6 13.5" ><path transform="translate(362.81, 96.5)" d="M 18 20.67890548706055 L 26.9296875 11.7421875 C 27.59062576293945 11.08125019073486 28.65937423706055 11.08125019073486 29.31328201293945 11.7421875 C 29.96718978881836 12.40312480926514 29.96718788146973 13.47187519073486 29.31328201293945 14.1328125 L 19.1953125 24.2578125 C 18.55546951293945 24.89765548706055 17.52890586853027 24.91171836853027 16.86796951293945 24.30703163146973 L 6.6796875 14.13984394073486 C 6.349218845367432 13.80937480926514 6.1875 13.37343788146973 6.1875 12.94453144073486 C 6.1875 12.515625 6.349218845367432 12.07968807220459 6.6796875 11.74921894073486 C 7.340624809265137 11.08828163146973 8.409375190734863 11.08828163146973 9.063281059265137 11.74921894073486 L 18 20.67890548706055 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_q5rp64 =
    '<svg viewBox="369.0 243.7 23.6 13.5" ><path transform="translate(362.81, 232.5)" d="M 18 20.67890548706055 L 26.9296875 11.7421875 C 27.59062576293945 11.08125019073486 28.65937423706055 11.08125019073486 29.31328201293945 11.7421875 C 29.96718978881836 12.40312480926514 29.96718788146973 13.47187519073486 29.31328201293945 14.1328125 L 19.1953125 24.2578125 C 18.55546951293945 24.89765548706055 17.52890586853027 24.91171836853027 16.86796951293945 24.30703163146973 L 6.6796875 14.13984394073486 C 6.349218845367432 13.80937480926514 6.1875 13.37343788146973 6.1875 12.94453144073486 C 6.1875 12.515625 6.349218845367432 12.07968807220459 6.6796875 11.74921894073486 C 7.340624809265137 11.08828163146973 8.409375190734863 11.08828163146973 9.063281059265137 11.74921894073486 L 18 20.67890548706055 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a1ppo =
    '<svg viewBox="369.0 176.7 23.6 13.5" ><path transform="translate(362.81, 165.5)" d="M 18 20.67890548706055 L 26.9296875 11.7421875 C 27.59062576293945 11.08125019073486 28.65937423706055 11.08125019073486 29.31328201293945 11.7421875 C 29.96718978881836 12.40312480926514 29.96718788146973 13.47187519073486 29.31328201293945 14.1328125 L 19.1953125 24.2578125 C 18.55546951293945 24.89765548706055 17.52890586853027 24.91171836853027 16.86796951293945 24.30703163146973 L 6.6796875 14.13984394073486 C 6.349218845367432 13.80937480926514 6.1875 13.37343788146973 6.1875 12.94453144073486 C 6.1875 12.515625 6.349218845367432 12.07968807220459 6.6796875 11.74921894073486 C 7.340624809265137 11.08828163146973 8.409375190734863 11.08828163146973 9.063281059265137 11.74921894073486 L 18 20.67890548706055 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
