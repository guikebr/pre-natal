import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:pre_natal/features/gestante/pagina/fases_gestacao.dart';
import 'package:pre_natal/features/gestante/pagina/tipo_parto.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:adobe_xd/page_link.dart';
import 'lei_acompanhante.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SaudeGestante extends StatelessWidget {
  const SaudeGestante({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -8.0, end: -127.0),
            Pin(size: 330.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/gravida.png'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.41),
                    BlendMode.dstIn,
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 68.0, start: 16.0),
            Pin(size: 24.3, end: 6.7),
            child: SvgPicture.string(
              _svg_uscn13,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 37.0, start: 31.0),
            Pin(size: 14.0, end: 12.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const HomePage(),
                ),
              ],
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
          ),
          Pinned.fromPins(
            Pin(size: 233.4, end: -121.0),
            Pin(size: 211.0, start: 0.0),
            child: SvgPicture.string(
              _svg_kw46p,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 193.0, end: 28.0),
            Pin(size: 25.0, start: 92.0),
            child: const Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: 21,
                  color: Color(0xffe7c4c1),
                ),
                children: [
                  TextSpan(
                    text: 'SAÚDE DA',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: 'GESTANTE',
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
          Pinned.fromPins(
            Pin(size: 289.0, start: -85.0),
            Pin(size: 32.0, middle: 0.3553),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xffe7c4c1),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 289.0, start: -85.0),
            Pin(size: 32.0, middle: 0.4227),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xffe7c4c1),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 289.0, start: -85.0),
            Pin(size: 32.0, middle: 0.4901),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xffe7c4c1),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 125.0, start: 15.0),
            Pin(size: 15.0, middle: 0.424),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const TipoParto(),
                ),
              ],
              child: const Text(
                'TIPOS DE PARTO',
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: 15,
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 163.0, start: 15.0),
            Pin(size: 17.0, middle: 0.3563),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const FasesGestacao(),
                ),
              ],
              child: const Text(
                'FASES DA GESTAÇÃO',
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: 15,
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 155.0, start: 16.0),
            Pin(size: 15.0, middle: 0.4896),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const LeiAcompanhante(),
                ),
              ],
              child: const Text(
                'LEI ACOMPANHANTE',
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: 15,
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_uscn13 =
    '<svg viewBox="16.0 609.0 68.0 24.3" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(16.0, 609.0)" d="M 13.77215194702148 0 L 54.22784805297852 0 C 61.8339958190918 0 68 5.436184883117676 68 12.14205932617188 C 68 18.84793472290039 61.8339958190918 24.28411865234375 54.22784805297852 24.28411865234375 L 13.77215194702148 24.28411865234375 C 6.16600227355957 24.28411865234375 0 18.84793472290039 0 12.14205932617188 C 0 5.436184883117676 6.16600227355957 0 13.77215194702148 0 Z" fill="#e7c4c1" fill-opacity="0.78" stroke="none" stroke-width="1" stroke-opacity="0.78" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_kw46p =
    '<svg viewBox="247.6 0.0 233.4 211.0" ><path transform="translate(247.55, 0.0)" d="M 116.7234039306641 0 C 181.1879425048828 0 233.4468078613281 47.23395919799805 233.4468078613281 105.5 C 233.4468078613281 163.7660369873047 181.1879425048828 211 116.7234039306641 211 C 52.25885391235352 211 0 163.7660369873047 0 105.5 C 0 47.23395919799805 52.25885391235352 0 116.7234039306641 0 Z" fill="#e7c4c1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
