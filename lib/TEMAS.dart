import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'SADEDOHOMEM.dart';
import 'package:adobe_xd/page_link.dart';
import 'TEMASSADEDACRIANA.dart';
import 'TEMASSADEDAGESTANTE1.dart';
import 'TEMAS2.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TEMAS extends StatelessWidget {
  TEMAS({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 50.0),
            Pin(size: 466.9, end: -2.0),
            child:
                // Adobe XD layer: 'father-and-son-1153…' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/pai.png'),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.19), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 312.0, end: -156.0),
            Pin(size: 282.0, start: 0.0),
            child: SvgPicture.string(
              _svg_omzzgb,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 36.0, end: 17.0),
            Pin(size: 48.0, middle: 0.1976),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Adobe Arabic',
                  fontSize: 31,
                  color: const Color(0xff4842a8),
                ),
                children: [
                  TextSpan(
                    text: 'PRÉ-NATAL DO',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: '   ',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: 'HOMEM',
                    style: TextStyle(
                      fontSize: 44,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 289.0, start: -81.0),
            Pin(size: 32.0, middle: 0.7928),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xff4842a8),
                border: Border.all(width: 1.0, color: const Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 289.0, start: -81.0),
            Pin(size: 32.0, end: 85.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xff4842a8),
                border: Border.all(width: 1.0, color: const Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 289.0, start: -81.0),
            Pin(size: 32.0, end: 44.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xff4842a8),
                border: Border.all(width: 1.0, color: const Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 140.0, start: 19.0),
            Pin(size: 17.0, middle: 0.7833),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => SADEDOHOMEM(),
                ),
              ],
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Adobe Hebrew',
                    fontSize: 15,
                    color: const Color(0xff4842a8),
                  ),
                  children: [
                    TextSpan(
                      text: 'SAÚDE DO HOMEM',
                      style: TextStyle(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 148.0, start: 19.0),
            Pin(size: 17.0, end: 94.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => TEMASSADEDACRIANA(),
                ),
              ],
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Adobe Hebrew',
                    fontSize: 15,
                    color: const Color(0xff4842a8),
                  ),
                  children: [
                    TextSpan(
                      text: 'SAÚDE DA CRIANÇA',
                      style: TextStyle(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 160.0, start: 19.0),
            Pin(size: 17.0, end: 53.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => TEMASSADEDAGESTANTE1(),
                ),
              ],
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Adobe Hebrew',
                    fontSize: 15,
                    color: const Color(0xff4842a8),
                  ),
                  children: [
                    TextSpan(
                      text: 'SAÚDE DA GESTANTE',
                      style: TextStyle(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 32.0, start: 20.0),
            Pin(size: 13.0, start: 26.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => TEMAS2(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 3.0, start: 0.0),
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 1.5, end: 1.7),
                          Pin(size: 1.0, middle: 0.75),
                          child: SvgPicture.string(
                            _svg_lt6sjx,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff4842a8)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff4842a8)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff4842a8)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 3.0, middle: 0.5),
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 1.5, end: 1.7),
                          Pin(size: 1.0, middle: 0.75),
                          child: SvgPicture.string(
                            _svg_lt6sjx,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff4842a8)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff4842a8)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff4842a8)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 3.0, start: 0.0),
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 1.5, end: 1.7),
                          Pin(size: 1.0, middle: 0.75),
                          child: SvgPicture.string(
                            _svg_lt6sjx,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff4842a8)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff4842a8)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff4842a8)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 3.0, end: 0.0),
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 1.5, end: 1.7),
                          Pin(size: 1.0, middle: 0.75),
                          child: SvgPicture.string(
                            _svg_lt6sjx,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff4842a8)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff4842a8)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff4842a8)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_omzzgb =
    '<svg viewBox="204.0 0.0 312.0 282.0" ><path transform="translate(204.0, 0.0)" d="M 156 0 C 242.1564025878906 0 312 63.12785339355469 312 141 C 312 218.8721466064453 242.1564025878906 282 156 282 C 69.84358978271484 282 0 218.8721466064453 0 141 C 0 63.12785339355469 69.84358978271484 0 156 0 Z" fill="#4842a8" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lt6sjx =
    '<svg viewBox="1.5 1.5 28.8 1.0" ><path transform="translate(1.5, 1.5)" d="M 0 0 L 28.834716796875 0" fill="none" stroke="#4842a8" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
