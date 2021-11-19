import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pre_natal/features/gestante/pagina/saude_gestante.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class LeiAcompanhante extends StatelessWidget {
  const LeiAcompanhante({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 68.0, end: 22.0),
            Pin(size: 24.3, end: 12.7),
            child: SvgPicture.string(
              _svg_vff4fz,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 37.0, end: 38.0),
            Pin(size: 14.0, end: 18.0),
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
            Pin(size: 241.0, start: 30.0),
            Pin(size: 32.0, start: 87.0),
            child: const Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: 21,
                  color: Color(0xffe7c4c1),
                ),
                children: [
                  TextSpan(
                    text: 'ACOMPANHANTE  ',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: 'LEI',
                    style: TextStyle(
                      fontSize: 32,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false,),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 68.0, start: 20.0),
            Pin(size: 24.3, end: 12.7),
            child: SvgPicture.string(
              _svg_cpyds,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 46.0, start: 30.0),
            Pin(size: 12.0, end: 19.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const SaudeGestante(),
                ),
              ],
              child: const Text(
                'VOLTAR',
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
            Pin(start: 31.0, end: 30.0),
            Pin(size: 395.0, end: 44.0),
            child: const Text(
              'A Lei Federal nº 11.108, de 07 de abril de 2005, mais conhecida como a Lei do Acompanhante, determina que os serviços de saúde do SUS, da  rede própria ou conveniada, são obrigados a permitir à gestante o direito a acompanhante durante todo o período de trabalho de parto, parto e pós-parto. A Lei determina que este acompanhante será indicado pela gestante, \npodendo ser o pai do bebê, o parceiro atual, \na mãe, um(a) amigo(a), ou outra pessoa que a gestante escolher. A Lei do Acompanhante é válida para parto normal ou cesariana e a presença do(a) acompanhante (inclusive se este for adolescente) não pode ser impedida pelo hospital ou por qualquer membro da equipe de saúde, nem deve ser exigido que o(a) acompanhante tenha participado de alguma formação ou grupo.',
              style: TextStyle(
                fontFamily: 'Adobe Hebrew',
                fontSize: 15,
                color: Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_vff4fz =
    '<svg viewBox="270.0 603.0 68.0 24.3" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(270.0, 603.0)" d="M 13.77215194702148 0 L 54.22784805297852 0 C 61.8339958190918 0 68 5.436184883117676 68 12.14205932617188 C 68 18.84793472290039 61.8339958190918 24.28411865234375 54.22784805297852 24.28411865234375 L 13.77215194702148 24.28411865234375 C 6.16600227355957 24.28411865234375 0 18.84793472290039 0 12.14205932617188 C 0 5.436184883117676 6.16600227355957 0 13.77215194702148 0 Z" fill="#e7c4c1" fill-opacity="0.78" stroke="none" stroke-width="1" stroke-opacity="0.78" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_kw46p =
    '<svg viewBox="247.6 0.0 233.4 211.0" ><path transform="translate(247.55, 0.0)" d="M 116.7234039306641 0 C 181.1879425048828 0 233.4468078613281 47.23395919799805 233.4468078613281 105.5 C 233.4468078613281 163.7660369873047 181.1879425048828 211 116.7234039306641 211 C 52.25885391235352 211 0 163.7660369873047 0 105.5 C 0 47.23395919799805 52.25885391235352 0 116.7234039306641 0 Z" fill="#e7c4c1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cpyds =
    '<svg viewBox="20.0 603.0 68.0 24.3" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(20.0, 603.0)" d="M 13.77215194702148 0 L 54.22784805297852 0 C 61.8339958190918 0 68 5.436184883117676 68 12.14205932617188 C 68 18.84793472290039 61.8339958190918 24.28411865234375 54.22784805297852 24.28411865234375 L 13.77215194702148 24.28411865234375 C 6.16600227355957 24.28411865234375 0 18.84793472290039 0 12.14205932617188 C 0 5.436184883117676 6.16600227355957 0 13.77215194702148 0 Z" fill="#e7c4c1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';