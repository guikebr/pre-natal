import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'TEMAS.dart';
import 'package:adobe_xd/page_link.dart';
import 'TEMASSADEDAGESTANTE2.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FASESDAGESTAO2 extends StatelessWidget {
  FASESDAGESTAO2({
    Key key,
  }) : super(key: key);
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
                  pageBuilder: () => TEMAS(),
                ),
              ],
              child: Text(
                'INÍCIO',
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: 12,
                  color: const Color(0xffffffff),
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
            Pin(start: -43.0, end: -6.0),
            Pin(size: 36.0, start: 86.0),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: 21,
                  color: const Color(0xffe7c4c1),
                ),
                children: [
                  TextSpan(
                    text: '                       TRIMESTRE   4',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: '4 ',
                    style: TextStyle(
                      fontSize: 36,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: 'ao',
                    style: TextStyle(
                      fontSize: 36,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: ' 6',
                    style: TextStyle(
                      fontSize: 36,
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
                  pageBuilder: () => TEMASSADEDAGESTANTE2(),
                ),
              ],
              child: Text(
                'VOLTAR',
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: 12,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 28.0, end: 28.0),
            Pin(size: 306.0, middle: 0.5749),
            child: Text(
              'As estruturas principais dos órgãos do bebê completam a sua formação. A vontade de urinar começa a diminuir e pode ocorrer prisão de ventre. Nesta fase, os rins do bebê começam a funcionar e ele faz xixi pela primeira vez. Surgem os primeiros fios de cabelo e, por volta do quinto mês, finalmente, é possível saber qual o sexo dele. Por volta do sexto mês já será possível sentir pontapés dentro da barriga, o bebê reage a estímulos e estão em desenvolvimento a audição, olfato, tato e paladar.',
              style: TextStyle(
                fontFamily: 'Adobe Hebrew',
                fontSize: 15,
                color: const Color(0xd9000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 199.0, end: 0.0),
            Pin(size: 230.0, end: 13.0),
            child:
                // Adobe XD layer: 'AdobeStock_12826813…' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/embriao_3.png'),
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

const String _svg_vff4fz =
    '<svg viewBox="270.0 603.0 68.0 24.3" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(270.0, 603.0)" d="M 13.77215194702148 0 L 54.22784805297852 0 C 61.8339958190918 0 68 5.436184883117676 68 12.14205932617188 C 68 18.84793472290039 61.8339958190918 24.28411865234375 54.22784805297852 24.28411865234375 L 13.77215194702148 24.28411865234375 C 6.16600227355957 24.28411865234375 0 18.84793472290039 0 12.14205932617188 C 0 5.436184883117676 6.16600227355957 0 13.77215194702148 0 Z" fill="#e7c4c1" fill-opacity="0.78" stroke="none" stroke-width="1" stroke-opacity="0.78" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_kw46p =
    '<svg viewBox="247.6 0.0 233.4 211.0" ><path transform="translate(247.55, 0.0)" d="M 116.7234039306641 0 C 181.1879425048828 0 233.4468078613281 47.23395919799805 233.4468078613281 105.5 C 233.4468078613281 163.7660369873047 181.1879425048828 211 116.7234039306641 211 C 52.25885391235352 211 0 163.7660369873047 0 105.5 C 0 47.23395919799805 52.25885391235352 0 116.7234039306641 0 Z" fill="#e7c4c1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cpyds =
    '<svg viewBox="20.0 603.0 68.0 24.3" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(20.0, 603.0)" d="M 13.77215194702148 0 L 54.22784805297852 0 C 61.8339958190918 0 68 5.436184883117676 68 12.14205932617188 C 68 18.84793472290039 61.8339958190918 24.28411865234375 54.22784805297852 24.28411865234375 L 13.77215194702148 24.28411865234375 C 6.16600227355957 24.28411865234375 0 18.84793472290039 0 12.14205932617188 C 0 5.436184883117676 6.16600227355957 0 13.77215194702148 0 Z" fill="#e7c4c1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
