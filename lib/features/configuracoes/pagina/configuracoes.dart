import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/configuracoes/pagina/referencia_parte_1.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:pre_natal/features/home/pagina/widget/button_home.dart';
import 'sobre_app.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Configuracoes extends StatelessWidget {
  const Configuracoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Pinned.fromPins(
              Pin(size: 68.0, end: 36.0),
              Pin(size: 24.3, end: 10.7),
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => const HomePage(),
                  ),
                ],
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(start: 0.0, end: 0.0),
                      child: SvgPicture.string(
                        _svg_o10zo,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 37.0, middle: 0.4839),
                      Pin(size: 14.0, middle: 0.4862),
                      child: const Text(
                        'INÍCIO',
                        style: TextStyle(
                          fontFamily: 'Adobe Hebrew',
                          fontSize: 12,
                          color: Color(0xffffffff),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Header(
              title: Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  'INFORMAÇÃO',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontFamily: 'Adobe Arabic',
                    fontSize: width * .075,
                    color: const Color(0xff4842a8),
                  ),
                ),
              ),
              secondary: Text(
                'APP',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: width * .1,
                  fontFamily: 'Adobe Arabic',
                  color: Colors.white,
                ),
              ),
            ),
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ButtonHome(
                        title: 'O APP',
                        page: SobreApp(),
                      ),
                      const ButtonHome(
                        title: 'REFÊNCIA',
                        page: ReferenciaParte1(),
                      ),
                    ]
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: e,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

const String _svg_o10zo =
    '<svg viewBox="59.0 607.0 68.0 24.3" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(59.0, 607.0)" d="M 13.77215194702148 0 L 54.22784805297852 0 C 61.8339958190918 0 68 5.436184883117676 68 12.14205932617188 C 68 18.84793472290039 61.8339958190918 24.28411865234375 54.22784805297852 24.28411865234375 L 13.77215194702148 24.28411865234375 C 6.16600227355957 24.28411865234375 0 18.84793472290039 0 12.14205932617188 C 0 5.436184883117676 6.16600227355957 0 13.77215194702148 0 Z" fill="#4842a8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
