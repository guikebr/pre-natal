import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:pre_natal/features/homem/page/conceito_pre_natal.dart';
import 'agenda_pre_natal.dart';
import 'exame_pre_natal.dart';
import '../../calendarios/pagina/calendario_consulta.dart';
import 'higiene_penis.dart';
import 'cancer.dart';
import 'metodo_preventivo.dart';
import 'infeccoes_sexuais.dart';
import 'licenca_paternidade.dart';
import 'fotos_gestao.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SaudeHomem extends StatelessWidget {
  const SaudeHomem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 243.0, end: 0.0),
            Pin(size: 365.9, end: 0.0),
            child: Container(
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
            Pin(size: 289.0, start: -85.0),
            Pin(size: 32.0, middle: 0.2533),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xff4842a8),
                border: Border.all(width: 1.0, color: Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 289.0, start: -85.0),
            Pin(size: 32.0, middle: 0.3207),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xff4842a8),
                border: Border.all(width: 1.0, color: Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 289.0, start: -85.0),
            Pin(size: 32.0, middle: 0.3882),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xff4842a8),
                border: Border.all(width: 1.0, color: Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 289.0, start: -85.0),
            Pin(size: 32.0, middle: 0.4556),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xff4842a8),
                border: Border.all(width: 1.0, color: Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 289.0, start: -85.0),
            Pin(size: 32.0, middle: 0.523),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xff4842a8),
                border: Border.all(width: 1.0, color: Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 289.0, start: -85.0),
            Pin(size: 32.0, middle: 0.5905),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xff4842a8),
                border: Border.all(width: 1.0, color: Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 289.0, start: -85.0),
            Pin(size: 32.0, middle: 0.6579),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xff4842a8),
                border: Border.all(width: 1.0, color: Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 289.0, start: -85.0),
            Pin(size: 32.0, middle: 0.7253),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xff4842a8),
                border: Border.all(width: 1.0, color: Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 289.0, start: -85.0),
            Pin(size: 32.0, middle: 0.7928),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xff4842a8),
                border: Border.all(width: 1.0, color: Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, start: 48.0),
            Pin(size: 9.7, start: 61.6),
            child: SvgPicture.string(
              _svg_bjfjva,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, start: 48.0),
            Pin(size: 9.7, start: 61.6),
            child: SvgPicture.string(
              _svg_bjfjva,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.4206),
            Pin(size: 9.7, start: 61.6),
            child: SvgPicture.string(
              _svg_yra38,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, start: 48.0),
            Pin(size: 9.7, start: 61.6),
            child: SvgPicture.string(
              _svg_bjfjva,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, start: 48.0),
            Pin(size: 9.7, start: 61.6),
            child: SvgPicture.string(
              _svg_bjfjva,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.4206),
            Pin(size: 9.7, start: 61.6),
            child: SvgPicture.string(
              _svg_yra38,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.4206),
            Pin(size: 8.0, start: 64.2),
            child: SvgPicture.string(
              _svg_q56eno,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.4206),
            Pin(size: 8.0, start: 64.2),
            child: SvgPicture.string(
              _svg_q56eno,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.4206),
            Pin(size: 8.0, start: 64.2),
            child: SvgPicture.string(
              _svg_q56eno,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.4206),
            Pin(size: 7.9, start: 64.4),
            child: SvgPicture.string(
              _svg_lyy1zg,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.4206),
            Pin(size: 9.7, start: 61.6),
            child: SvgPicture.string(
              _svg_yra38,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.4206),
            Pin(size: 9.7, start: 61.6),
            child: SvgPicture.string(
              _svg_yra38,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.4206),
            Pin(size: 8.0, start: 64.2),
            child: SvgPicture.string(
              _svg_q56eno,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.4206),
            Pin(size: 8.0, start: 64.2),
            child: SvgPicture.string(
              _svg_q56eno,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.4206),
            Pin(size: 8.0, start: 64.2),
            child: SvgPicture.string(
              _svg_q56eno,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.4206),
            Pin(size: 7.9, start: 64.4),
            child: SvgPicture.string(
              _svg_lyy1zg,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 233.4, end: -127.0),
            Pin(size: 211.0, start: 0.0),
            child: SvgPicture.string(
              _svg_j2n1xl,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 223.0, end: 2.0),
            Pin(size: 39.0, start: 86.0),
            child: const Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Adobe Arabic',
                  fontSize: 31,
                  color: Color(0xff4842a8),
                ),
                children: [
                  TextSpan(
                    text: 'SAÚDE DO',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: 'HOMEM',
                    style: TextStyle(
                      fontSize: 36,
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
            Pin(size: 164.0, start: 15.0),
            Pin(size: 17.0, middle: 0.2568),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const ConceitoPreNatal(),
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
                      text: 'PRÉ-NATAL CONCEITO',
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
            Pin(size: 149.0, start: 15.0),
            Pin(size: 17.0, middle: 0.3226),
            child: const Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: 15,
                  color: Color(0xff4842a8),
                ),
                children: [
                  TextSpan(
                    text: 'AGENDA PRÉ-NATAL',
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false,),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 149.0, start: 15.0),
            Pin(size: 17.0, middle: 0.3226),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const AgendaPreNatal(),
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
                      text: 'AGENDA PRÉ-NATAL',
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
            Pin(size: 175.0, start: 15.0),
            Pin(size: 17.0, middle: 0.3884),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const ExamePreNatal(),
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
                      text: 'EXAMES NO PRÉ-NATAL',
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
            Pin(size: 165.0, start: 13.0),
            Pin(size: 17.0, middle: 0.4543),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const CalendarioConsulta(),
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
                      text: 'CALENDÁRIO VACINAL',
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
            Pin(size: 183.0, start: 13.0),
            Pin(size: 17.0, middle: 0.5201),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const HigienePenis(),
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
                      text: 'HIGIENIZAÇÃO DO PÊNIS',
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
            Pin(size: 78.0, start: 13.0),
            Pin(size: 15.0, middle: 0.5872),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const Cancer(),
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
                      text: 'PROSTATA',
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
            Pin(size: 166.0, start: 13.0),
            Pin(size: 17.0, middle: 0.6517),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const MetodoPreventivo(),
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
                      text: 'MÉTODO PREVENTIVO',
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
            Pin(size: 157.0, start: 13.0),
            Pin(size: 15.0, middle: 0.7184),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const InfeccoesSexuais(),
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
                      text: 'INFECÇOES SEXUAIS',
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
            Pin(size: 173.0, start: 14.0),
            Pin(size: 15.0, middle: 0.784),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const LicencaPaternidade(),
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
                      text: 'LICENÇA PATERNIDADE',
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
            Pin(size: 68.0, middle: 0.5),
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
            Pin(size: 289.0, start: -85.0),
            Pin(size: 32.0, end: 85.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xff4842a8),
                border: Border.all(width: 1.0, color: Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 124.0, start: 14.0),
            Pin(size: 16.0, end: 94.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const FotosGestao(),
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
                      text: 'FOTOGESTAÇÃO',
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
        ],
      ),
    );
  }
}

const String _svg_bjfjva =
    '<svg viewBox="48.0 61.6 1.0 9.7" ><path transform="translate(48.0, 36.0)" d="M 0 30.5 C 0 13.65531730651855 0 47.34468078613281 0 30.5 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yra38 =
    '<svg viewBox="151.0 61.6 1.0 9.7" ><path transform="translate(151.0, 36.0)" d="M 0 30.5 C 0 13.65531730651855 0 47.34468078613281 0 30.5 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_q56eno =
    '<svg viewBox="151.0 64.2 1.0 8.0" ><path transform="translate(151.0, 36.0)" d="M 0 30.5 C 0 20.52801513671875 0 47.34468078613281 0 30.5 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lyy1zg =
    '<svg viewBox="151.0 64.4 1.0 7.9" ><path transform="translate(151.0, 36.0)" d="M 0 30.5 C 0 21.03334999084473 0 47.34468078613281 0 30.5 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_j2n1xl =
    '<svg viewBox="253.6 0.0 233.4 211.0" ><path transform="translate(253.55, 0.0)" d="M 116.7234039306641 0 C 181.1879425048828 0 233.4468078613281 47.23395919799805 233.4468078613281 105.5 C 233.4468078613281 163.7660369873047 181.1879425048828 211 116.7234039306641 211 C 52.25885391235352 211 0 163.7660369873047 0 105.5 C 0 47.23395919799805 52.25885391235352 0 116.7234039306641 0 Z" fill="#4842a8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_o10zo =
    '<svg viewBox="59.0 607.0 68.0 24.3" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(59.0, 607.0)" d="M 13.77215194702148 0 L 54.22784805297852 0 C 61.8339958190918 0 68 5.436184883117676 68 12.14205932617188 C 68 18.84793472290039 61.8339958190918 24.28411865234375 54.22784805297852 24.28411865234375 L 13.77215194702148 24.28411865234375 C 6.16600227355957 24.28411865234375 0 18.84793472290039 0 12.14205932617188 C 0 5.436184883117676 6.16600227355957 0 13.77215194702148 0 Z" fill="#4842a8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
