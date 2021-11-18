import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'sobre_app.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Configuracoes extends StatelessWidget {
  const Configuracoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 50.0),
            Pin(size: 466.9, end: 0.0),
            child:
                // Adobe XD layer: 'father-and-son-1153…' (shape)
                Container(
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
            Pin(size: 312.0, end: -156.0),
            Pin(size: 282.0, start: 0.0),
            child: SvgPicture.string(
              _svg_omzzgb,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
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
            Pin(size: 45.0, start: 19.0),
            Pin(size: 15.0, middle: 0.784),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const SobreApp(),
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
                      text: 'O APP',
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
            Pin(size: 79.0, start: 19.0),
            Pin(size: 17.0, end: 94.0),
            child: const Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: 15,
                  color: Color(0xff4842a8),
                ),
                children: [
                  TextSpan(
                    text: 'REFÊNCIA ',
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
          Pinned.fromPins(
            Pin(size: 201.0, start: 48.0),
            Pin(size: 34.0, middle: 0.2096),
            child: const Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Adobe Arabic',
                  fontSize: 31,
                  color: Color(0xff4842a8),
                ),
                children: [
                  TextSpan(
                    text: 'INFORMAÇÃO ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: 'APP',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w700,
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
        ],
      ),
    );
  }
}

const String _svg_omzzgb =
    '<svg viewBox="204.0 0.0 312.0 282.0" ><path transform="translate(204.0, 0.0)" d="M 156 0 C 242.1564025878906 0 312 63.12785339355469 312 141 C 312 218.8721466064453 242.1564025878906 282 156 282 C 69.84358978271484 282 0 218.8721466064453 0 141 C 0 63.12785339355469 69.84358978271484 0 156 0 Z" fill="#4842a8" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_o10zo =
    '<svg viewBox="59.0 607.0 68.0 24.3" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(59.0, 607.0)" d="M 13.77215194702148 0 L 54.22784805297852 0 C 61.8339958190918 0 68 5.436184883117676 68 12.14205932617188 C 68 18.84793472290039 61.8339958190918 24.28411865234375 54.22784805297852 24.28411865234375 L 13.77215194702148 24.28411865234375 C 6.16600227355957 24.28411865234375 0 18.84793472290039 0 12.14205932617188 C 0 5.436184883117676 6.16600227355957 0 13.77215194702148 0 Z" fill="#4842a8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
