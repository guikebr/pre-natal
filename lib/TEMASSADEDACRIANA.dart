import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'TEMAS.dart';
import 'package:adobe_xd/page_link.dart';
import 'PUERICULTURA1.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TEMASSADEDACRIANA extends StatelessWidget {
  TEMASSADEDACRIANA({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 289.0, start: -81.0),
            Pin(size: 32.0, middle: 0.3158),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xff97d3cf),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 289.0, start: -81.0),
            Pin(size: 32.0, middle: 0.3832),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xff97d3cf),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 289.0, start: -81.0),
            Pin(size: 32.0, middle: 0.4507),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xff97d3cf),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: -28.0, end: -29.0),
            Pin(size: 278.5, end: -0.5),
            child:
                // Adobe XD layer: 'baby-2610206_1920' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/nenem.jpg'),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.41), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 68.0, middle: 0.5),
            Pin(size: 24.3, end: 10.7),
            child: SvgPicture.string(
              _svg_umh7tm,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 37.0, middle: 0.4985),
            Pin(size: 14.0, end: 16.0),
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
            Pin(size: 233.4, end: -122.0),
            Pin(size: 211.0, start: 0.0),
            child: SvgPicture.string(
              _svg_k4plym,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 221.0, end: 3.0),
            Pin(size: 35.0, start: 88.0),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Adobe Arabic',
                  fontSize: 30,
                  color: const Color(0xff97d3cf),
                ),
                children: [
                  TextSpan(
                    text: 'SAÚDE DA',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: '  ',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: 'CRIANÇA',
                    style: TextStyle(
                      fontSize: 32,
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
            Pin(size: 183.0, start: 19.0),
            Pin(size: 15.0, middle: 0.3856),
            child: Text(
              'ALEITAMENTO MATERNO',
              style: TextStyle(
                fontFamily: 'Adobe Hebrew',
                fontSize: 15,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 116.0, start: 19.0),
            Pin(size: 15.0, middle: 0.32),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => PUERICULTURA1(),
                ),
              ],
              child: Text(
                'PUERICULTURA',
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: 15,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 165.0, start: 20.0),
            Pin(size: 17.0, middle: 0.4494),
            child: Text(
              'CALENDÁRIO VACINAL',
              style: TextStyle(
                fontFamily: 'Adobe Hebrew',
                fontSize: 15,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_umh7tm =
    '<svg viewBox="146.0 605.0 68.0 24.3" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(146.0, 605.0)" d="M 13.77215194702148 0 L 54.22784805297852 0 C 61.8339958190918 0 68 5.436184883117676 68 12.14205932617188 C 68 18.84793472290039 61.8339958190918 24.28411865234375 54.22784805297852 24.28411865234375 L 13.77215194702148 24.28411865234375 C 6.16600227355957 24.28411865234375 0 18.84793472290039 0 12.14205932617188 C 0 5.436184883117676 6.16600227355957 0 13.77215194702148 0 Z" fill="#97d3cf" fill-opacity="0.78" stroke="none" stroke-width="1" stroke-opacity="0.78" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_k4plym =
    '<svg viewBox="248.6 0.0 233.4 211.0" ><path transform="translate(248.55, 0.0)" d="M 116.7234039306641 0 C 181.1879425048828 0 233.4468078613281 47.23395919799805 233.4468078613281 105.5 C 233.4468078613281 163.7660369873047 181.1879425048828 211 116.7234039306641 211 C 52.25885391235352 211 0 163.7660369873047 0 105.5 C 0 47.23395919799805 52.25885391235352 0 116.7234039306641 0 Z" fill="#97d3cf" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
