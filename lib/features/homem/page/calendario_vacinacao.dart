import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:pre_natal/features/homem/page/saude_homem.dart';

class CalendarioVacinacao extends StatelessWidget {
  const CalendarioVacinacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 68.0, start: 14.0),
            Pin(size: 24.3, end: 10.7),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const SaudeHomem(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: SvgPicture.string(
                      _svg_bic6yr,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 46.0, start: 10.0),
                    Pin(size: 12.0, middle: 0.4884),
                    child: const Text(
                      'VOLTAR',
                      style: TextStyle(
                        fontFamily: 'Adobe Hebrew',
                        fontSize: 12,
                        color: Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 68.0, end: 19.0),
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
                      _svg_iaappp,
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
                        color: Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: -137.5, end: -105.0),
            Pin(start: 102.5, end: 144.5),
            child: Transform.rotate(
              angle: 1.5708,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage(''),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.96),
                      BlendMode.dstIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_bic6yr =
    '<svg viewBox="14.0 605.0 68.0 24.3" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(14.0, 605.0)" d="M 13.77215194702148 0 L 54.22784805297852 0 C 61.8339958190918 0 68 5.436184883117676 68 12.14205932617188 C 68 18.84793472290039 61.8339958190918 24.28411865234375 54.22784805297852 24.28411865234375 L 13.77215194702148 24.28411865234375 C 6.16600227355957 24.28411865234375 0 18.84793472290039 0 12.14205932617188 C 0 5.436184883117676 6.16600227355957 0 13.77215194702148 0 Z" fill="#ffffff" fill-opacity="0.78" stroke="#000000" stroke-width="1" stroke-opacity="0.78" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_iaappp =
    '<svg viewBox="273.0 605.0 68.0 24.3" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(273.0, 605.0)" d="M 13.77215194702148 0 L 54.22784805297852 0 C 61.8339958190918 0 68 5.436184883117676 68 12.14205932617188 C 68 18.84793472290039 61.8339958190918 24.28411865234375 54.22784805297852 24.28411865234375 L 13.77215194702148 24.28411865234375 C 6.16600227355957 24.28411865234375 0 18.84793472290039 0 12.14205932617188 C 0 5.436184883117676 6.16600227355957 0 13.77215194702148 0 Z" fill="#ffffff" fill-opacity="0.78" stroke="#000000" stroke-width="1" stroke-opacity="0.78" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
