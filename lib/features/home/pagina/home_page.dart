import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import '../../homem/page/saude_homem.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../crianca/pagina/saude_crianca.dart';
import '../../gestante/pagina/saude_gestante.dart';
import '../../configuracoes/pagina/configuracoes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          const Header(
            title: Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text(
                'PRÉ-NATAL DO',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontFamily: 'Adobe Arabic',
                  fontSize: 31,
                  color: Color(0xff4842a8),
                ),
              ),
            ),
            secondary: Text(
              'HOMEM',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 44,
                fontFamily: 'Adobe Arabic',
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: width,
              height: height / 1.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/pai.png'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.19),
                    BlendMode.dstIn,
                  ),
                ),
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
                  pageBuilder: () => const SaudeHomem(),
                ),
              ],
              child: const Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Adobe Hebrew',
                    fontSize: 15,
                    color: Color(0xff4842a8),
                  ),
                  children: [
                    TextSpan(
                      text: 'SAÚDE DO HOMEM',
                      style: TextStyle(
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
                textHeightBehavior: TextHeightBehavior(
                  applyHeightToFirstAscent: false,
                ),
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
                  pageBuilder: () => const SaudeCrianca(),
                ),
              ],
              child: const Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Adobe Hebrew',
                    fontSize: 15,
                    color: Color(0xff4842a8),
                  ),
                  children: [
                    TextSpan(
                      text: 'SAÚDE DA CRIANÇA',
                      style: TextStyle(
                        color: Color(0xffffffff),
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
                  pageBuilder: () => const SaudeGestante(),
                ),
              ],
              child: const Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Adobe Hebrew',
                    fontSize: 15,
                    color: Color(0xff4842a8),
                  ),
                  children: [
                    TextSpan(
                      text: 'SAÚDE DA GESTANTE',
                      style: TextStyle(
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
                textHeightBehavior: TextHeightBehavior(
                  applyHeightToFirstAscent: false,
                ),
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
                  pageBuilder: () => const Configuracoes(),
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
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0),
                              ),
                              color: Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: Color(0xff4842a8)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0),
                              ),
                              color: Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: Color(0xff4842a8)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: Color(0xff4842a8)),
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
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: Color(0xff4842a8)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: Color(0xff4842a8)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: Color(0xff4842a8)),
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
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: Color(0xff4842a8)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: Color(0xff4842a8)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: Color(0xff4842a8)),
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
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: Color(0xff4842a8)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: Color(0xff4842a8)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 3.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: Color(0xff4842a8),
                              border: Border.all(
                                  width: 1.0, color: Color(0xff4842a8)),
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

const String _svg_lt6sjx =
    '<svg viewBox="1.5 1.5 28.8 1.0" ><path transform="translate(1.5, 1.5)" d="M 0 0 L 28.834716796875 0" fill="none" stroke="#4842a8" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
