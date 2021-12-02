import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/crianca/pagina/aos_11_meses_vida.dart';
import 'package:pre_natal/features/crianca/pagina/aos_2_anos_vida.dart';
import 'package:pre_natal/features/crianca/pagina/aos_6_meses_vida.dart';
import 'package:pre_natal/features/crianca/pagina/aos_8_meses_vida.dart';
import 'package:pre_natal/features/crianca/pagina/primeiro_6_meses_vida.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:pre_natal/features/home/pagina/widget/button_home.dart';

class IntroducaoAlimentacao extends StatelessWidget {
  const IntroducaoAlimentacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(
            type: TypeHeader.child,
            title: 'Introdução',
            secondary: 'Alimentação',
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ButtonHome(
                  title: '0 A 6 MESES DE VIDA',
                  type: TypeHeader.child,
                  page: Aos6MesesVida(),
                ),
                const ButtonHome(
                  title: 'AOS 6 MESES DE VIDA',
                  type: TypeHeader.child,
                  page: Primeiro6MesesVida(),
                ),
                const ButtonHome(
                  title: '7 A 8 MESES DE VIDA',
                  type: TypeHeader.child,
                  page: Aos8MesesVida(),
                ),
                const ButtonHome(
                  title: '9 A 11 MESES DE VIDA',
                  type: TypeHeader.child,
                  page: Aos11MesesVida(),
                ),
                const ButtonHome(
                  title: 'ENTRE 1 A 2 ANOS DE VIDA',
                  type: TypeHeader.child,
                  page: Aos2AnosVida(),
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
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ButtonCircularHome(text: 'VOLTAR', type: TypeHeader.child),
                ButtonCircularHome(
                  text: 'INÍCIO',
                  page: HomePage(),
                  type: TypeHeader.child,
                ),
              ],
            ),
          ),
        ],
      ),
      // body: Stack(
      //   children: <Widget>[
      //     Pinned.fromPins(
      //       Pin(size: 1.0, start: 48.0),
      //       Pin(size: 9.7, start: 61.6),
      //       child: SvgPicture.string(
      //         _svg_bjfjva,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 1.0, start: 48.0),
      //       Pin(size: 9.7, start: 61.6),
      //       child: SvgPicture.string(
      //         _svg_bjfjva,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 1.0, middle: 0.4206),
      //       Pin(size: 9.7, start: 61.6),
      //       child: SvgPicture.string(
      //         _svg_yra38,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 1.0, start: 48.0),
      //       Pin(size: 9.7, start: 61.6),
      //       child: SvgPicture.string(
      //         _svg_bjfjva,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 1.0, start: 48.0),
      //       Pin(size: 9.7, start: 61.6),
      //       child: SvgPicture.string(
      //         _svg_bjfjva,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 1.0, middle: 0.4206),
      //       Pin(size: 9.7, start: 61.6),
      //       child: SvgPicture.string(
      //         _svg_yra38,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 1.0, middle: 0.4206),
      //       Pin(size: 8.0, start: 64.2),
      //       child: SvgPicture.string(
      //         _svg_q56eno,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 1.0, middle: 0.4206),
      //       Pin(size: 8.0, start: 64.2),
      //       child: SvgPicture.string(
      //         _svg_q56eno,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 1.0, middle: 0.4206),
      //       Pin(size: 8.0, start: 64.2),
      //       child: SvgPicture.string(
      //         _svg_q56eno,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 1.0, middle: 0.4206),
      //       Pin(size: 7.9, start: 64.4),
      //       child: SvgPicture.string(
      //         _svg_lyy1zg,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 1.0, middle: 0.4206),
      //       Pin(size: 9.7, start: 61.6),
      //       child: SvgPicture.string(
      //         _svg_yra38,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 1.0, middle: 0.4206),
      //       Pin(size: 9.7, start: 61.6),
      //       child: SvgPicture.string(
      //         _svg_yra38,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 1.0, middle: 0.4206),
      //       Pin(size: 8.0, start: 64.2),
      //       child: SvgPicture.string(
      //         _svg_q56eno,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 1.0, middle: 0.4206),
      //       Pin(size: 8.0, start: 64.2),
      //       child: SvgPicture.string(
      //         _svg_q56eno,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 1.0, middle: 0.4206),
      //       Pin(size: 8.0, start: 64.2),
      //       child: SvgPicture.string(
      //         _svg_q56eno,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 1.0, middle: 0.4206),
      //       Pin(size: 7.9, start: 64.4),
      //       child: SvgPicture.string(
      //         _svg_lyy1zg,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 233.4, end: -127.0),
      //       Pin(size: 211.0, start: 0.0),
      //       child: SvgPicture.string(
      //         _svg_nkttzm,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(start: 32.0, end: 3.0),
      //       Pin(size: 34.0, start: 89.0),
      //       child: const Text.rich(
      //         TextSpan(
      //           style: TextStyle(
      //             fontFamily: 'Adobe Arabic',
      //             fontSize: 31,
      //             color: Color(0xff97d3cf),
      //           ),
      //           children: [
      //             TextSpan(
      //               text: '          INTRODUÇÃO ',
      //               style: TextStyle(
      //                 fontWeight: FontWeight.w700,
      //               ),
      //             ),
      //             TextSpan(
      //               text: 'ALIMENTAÇÃO',
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 color: Color(0xffffffff),
      //                 fontWeight: FontWeight.w700,
      //               ),
      //             ),
      //           ],
      //         ),
      //         textHeightBehavior: TextHeightBehavior(
      //           applyHeightToFirstAscent: false,
      //         ),
      //         textAlign: TextAlign.left,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 68.0, start: 14.0),
      //       Pin(size: 24.3, end: 11.7),
      //       child: SvgPicture.string(
      //         _svg_kk5tx5,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 46.0, start: 24.0),
      //       Pin(size: 12.0, end: 18.0),
      //       child: const Text(
      //         'VOLTAR',
      //         style: TextStyle(
      //           fontFamily: 'Adobe Hebrew',
      //           fontSize: 12,
      //           color: Color(0xffffffff),
      //         ),
      //         textAlign: TextAlign.left,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 68.0, end: 19.0),
      //       Pin(size: 24.3, end: 11.7),
      //       child: SvgPicture.string(
      //         _svg_q80knl,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 37.0, end: 35.0),
      //       Pin(size: 14.0, end: 17.0),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const HomePage(),
      //           ),
      //         ],
      //         child: const Text(
      //           'INÍCIO',
      //           style: TextStyle(
      //             fontFamily: 'Adobe Hebrew',
      //             fontSize: 12,
      //             color: Color(0xffffffff),
      //           ),
      //           textAlign: TextAlign.left,
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 289.0, start: -83.0),
      //       Pin(size: 32.0, middle: 0.4227),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20.0),
      //           color: const Color(0xff97d3cf),
      //           border: Border.all(width: 1.0, color: const Color(0xffffffff)),
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 289.0, start: -83.0),
      //       Pin(size: 32.0, middle: 0.4901),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20.0),
      //           color: const Color(0xff97d3cf),
      //           border: Border.all(width: 1.0, color: const Color(0xffffffff)),
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 289.0, start: -83.0),
      //       Pin(size: 32.0, middle: 0.5576),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20.0),
      //           color: const Color(0xff97d3cf),
      //           border: Border.all(width: 1.0, color: const Color(0xffffffff)),
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 154.0, start: 17.0),
      //       Pin(size: 15.0, middle: 0.424),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const Primeiro6MesesVida(),
      //           ),
      //         ],
      //         child: const Text(
      //           '0 A 6 MESES DE VIDA',
      //           style: TextStyle(
      //             fontFamily: 'Adobe Hebrew',
      //             fontSize: 15,
      //             color: Color(0xffffffff),
      //           ),
      //           textAlign: TextAlign.left,
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 165.0, start: 17.0),
      //       Pin(size: 15.0, middle: 0.4896),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const Aos6MesesVida(),
      //           ),
      //         ],
      //         child: const Text.rich(
      //           TextSpan(
      //             style: TextStyle(
      //               fontFamily: 'Adobe Hebrew',
      //               fontSize: 15,
      //               color: Color(0xff4842a8),
      //             ),
      //             children: [
      //               TextSpan(
      //                 text: 'AOS 6 MESES DE VIDA',
      //                 style: TextStyle(
      //                   color: Color(0xffffffff),
      //                 ),
      //               ),
      //             ],
      //           ),
      //           textHeightBehavior: TextHeightBehavior(
      //             applyHeightToFirstAscent: false,
      //           ),
      //           textAlign: TextAlign.left,
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 144.0, start: 17.0),
      //       Pin(size: 31.0, middle: 0.5698),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const Aos8MesesVida(),
      //           ),
      //         ],
      //         child: const Text.rich(
      //           TextSpan(
      //             style: TextStyle(
      //               fontFamily: 'Adobe Hebrew',
      //               fontSize: 14,
      //               color: Color(0xff4842a8),
      //             ),
      //             children: [
      //               TextSpan(
      //                 text: '7 A 8 MESES DE VIDA\n',
      //                 style: TextStyle(
      //                   color: Color(0xffffffff),
      //                 ),
      //               ),
      //             ],
      //           ),
      //           textHeightBehavior: TextHeightBehavior(
      //             applyHeightToFirstAscent: false,
      //           ),
      //           textAlign: TextAlign.left,
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 289.0, start: -83.0),
      //       Pin(size: 32.0, middle: 0.6234),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20.0),
      //           color: const Color(0xff97d3cf),
      //           border: Border.all(width: 1.0, color: const Color(0xffffffff)),
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 289.0, start: -83.0),
      //       Pin(size: 32.0, middle: 0.6908),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20.0),
      //           color: const Color(0xff97d3cf),
      //           border: Border.all(width: 1.0, color: const Color(0xffffffff)),
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 161.0, start: 17.0),
      //       Pin(size: 15.0, middle: 0.6192),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const Aos11MesesVida(),
      //           ),
      //         ],
      //         child: const Text.rich(
      //           TextSpan(
      //             style: TextStyle(
      //               fontFamily: 'Adobe Hebrew',
      //               fontSize: 15,
      //               color: Color(0xff4842a8),
      //             ),
      //             children: [
      //               TextSpan(
      //                 text: '9 A 11 MESES DE VIDA',
      //                 style: TextStyle(
      //                   color: Color(0xffffffff),
      //                 ),
      //               ),
      //             ],
      //           ),
      //           textHeightBehavior:
      //               TextHeightBehavior(applyHeightToFirstAscent: false),
      //           textAlign: TextAlign.left,
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 185.0, start: 17.0),
      //       Pin(size: 31.0, middle: 0.7028),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const Aos2AnosVida(),
      //           ),
      //         ],
      //         child: const Text.rich(
      //           TextSpan(
      //             style: TextStyle(
      //               fontFamily: 'Adobe Hebrew',
      //               fontSize: 14,
      //               color: Color(0xff4842a8),
      //             ),
      //             children: [
      //               TextSpan(
      //                 text: 'ENTRE 1 A 2 ANOS DE VIDA\n',
      //                 style: TextStyle(
      //                   color: Color(0xffffffff),
      //                 ),
      //               ),
      //             ],
      //           ),
      //           textHeightBehavior:
      //               TextHeightBehavior(applyHeightToFirstAscent: false),
      //           textAlign: TextAlign.left,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
