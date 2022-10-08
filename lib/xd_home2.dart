import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_profil.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDHome2 extends StatelessWidget {
  XDHome2({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(0.005, 0.569),
            child: SizedBox(
              width: 217.0,
              height: 64.0,
              child: Stack(
                children: <Widget>[
                  SizedBox.expand(
                      child: SvgPicture.string(
                    _svg_swywk7,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  )),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.539),
            child: SizedBox(
              width: 184.0,
              height: 27.0,
              child: Text(
                'PRODUKT SCANNEN',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  color: const Color(0xffffffff),
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 81.0, start: 0.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDProfil(),
                ),
              ],
              child: Container(
                color: const Color(0xff6200ee),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 42.0, end: 15.0),
            Pin(size: 42.0, start: 20.0),
            child:
                // Adobe XD layer: 'account_circle_whit…' (group)
                Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Stack(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          SizedBox.expand(
                              child: SvgPicture.string(
                            _svg_wingt4,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 42.0, start: 15.0),
            Pin(size: 42.0, start: 20.0),
            child:
                // Adobe XD layer: 'arrow_back_white_48…' (group)
                Stack(
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
          Pinned.fromPins(
            Pin(start: 60.0, end: 60.0),
            Pin(size: 293.0, middle: 0.501),
            child:
                // Adobe XD layer: 'Bild1' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_swywk7 =
    '<svg viewBox="0.0 0.0 217.0 64.0" ><path  d="M 32 0 L 185 0 C 202.6731109619141 0 217 14.3268871307373 217 32 C 217 49.67311096191406 202.6731109619141 64 185 64 L 32 64 C 14.3268871307373 64 0 49.67311096191406 0 32 C 0 14.3268871307373 14.3268871307373 0 32 0 Z" fill="#6200ee" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wingt4 =
    '<svg viewBox="0.0 0.0 37.9 37.9" ><path transform="translate(-2.0, -2.0)" d="M 20.95222854614258 2 C 10.48112201690674 2 2 10.48112201690674 2 20.95222854614258 C 2 31.42333602905273 10.48112201690674 39.90445709228516 20.95222854614258 39.90445709228516 C 31.42333602905273 39.90445709228516 39.90445709228516 31.42333602905273 39.90445709228516 20.95222854614258 C 39.90445709228516 10.48112201690674 31.42333602905273 2 20.95222854614258 2 Z M 20.95222854614258 10.29160022735596 C 24.88481521606445 10.29160022735596 28.0593147277832 13.46609783172607 28.0593147277832 17.39868545532227 C 28.0593147277832 21.33127212524414 24.88481521606445 24.50577163696289 20.95222854614258 24.50577163696289 C 17.0196418762207 24.50577163696289 13.84514331817627 21.33127212524414 13.84514331817627 17.39868545532227 C 13.84514331817627 13.46609783172607 17.0196418762207 10.29160022735596 20.95222854614258 10.29160022735596 Z M 20.95222854614258 36.35091400146484 C 16.09571838378906 36.35091400146484 11.78408813476562 34.10033798217773 8.941253662109375 30.57048416137695 C 12.37634563446045 28.24883651733398 16.49845504760742 26.87480163574219 20.95222854614258 26.87480163574219 C 25.40600204467773 26.87480163574219 29.52811431884766 28.24883651733398 32.96320343017578 30.57048416137695 C 30.12036895751953 34.10033798217773 25.80873870849609 36.35091400146484 20.95222854614258 36.35091400146484 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e4uv =
    '<svg viewBox="0.0 0.0 42.0 42.0" ><path  d="M 0 0 L 42 0 L 42 42 L 0 42 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mwxg3n =
    '<svg viewBox="4.0 4.0 34.0 34.0" ><path  d="M 38 18.875 L 12.13875007629395 18.875 L 24.01749992370605 6.996250152587891 L 21 4 L 4 21 L 21 38 L 23.99625015258789 35.00374984741211 L 12.13875007629395 23.125 L 38 23.125 L 38 18.875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
