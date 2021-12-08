import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/widget/button_home.dart';
import 'package:pre_natal/features/homem/page/conceito_pre_natal.dart';
import 'package:pre_natal/features/homem/page/preventivo.dart';
import 'agenda_pre_natal.dart';
import 'exame_pre_natal.dart';
import '../../calendarios/pagina/calendario_consulta.dart';
import 'higiene_penis.dart';
import 'cancer.dart';
import 'infeccoes_sexuais.dart';
import 'licenca_paternidade.dart';
import 'fotos_gestao.dart';

class SaudeHomem extends StatelessWidget {
  const SaudeHomem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.topRight,
            child: Header(title: 'SAÚDE DO', secondary: 'HOMEM'),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    ButtonHome(
                      title: 'PRÉ-NATAL CONCEITO',
                      page: ConceitoPreNatal(),
                    ),
                    ButtonHome(
                      title: 'AGENDA PRÉ-NATAL',
                      page: AgendaPreNatal(),
                    ),
                    ButtonHome(
                      title: 'EXAMES NO PRÉ-NATAL',
                      page: ExamePreNatal(),
                    ),
                    ButtonHome(
                      title: 'CALENDÁRIO VACINAL',
                      page: CalendarioConsulta(),
                    ),
                    ButtonHome(
                      title: 'HIGIENIZAÇÃO DO PÊNIS',
                      page: HigienePenis(),
                    ),
                    ButtonHome(title: 'PROSTATA', page: Cancer()),
                    ButtonHome(
                      title: 'MÉTODO PREVENTIVO',
                      page: Preventivo(),
                    ),
                    ButtonHome(
                      title: 'INFECÇOES SEXUAIS',
                      page: InfeccoesSexuais(),
                    ),
                    ButtonHome(
                      title: 'LICENÇA PATERNIDADE',
                      page: LicencaPaternidade(),
                    ),
                    ButtonHome(title: 'FOTOGESTAÇÃO', page: FotosGestao()),
                    SizedBox(height: 50)
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
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.0, left: 24.0),
              child: ButtonCircularHome(text: 'INÍCIO'),
            ),
          ),
        ],
      ),
      // body: Stack(
      //   children: <Widget>[
      //     Pinned.fromPins(
      //       Pin(size: 243.0, end: 0.0),
      //       Pin(size: 365.9, end: 0.0),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //             image: const AssetImage('assets/images/pai.png'),
      //             fit: BoxFit.fill,
      //             colorFilter: ColorFilter.mode(
      //               Colors.black.withOpacity(0.19),
      //               BlendMode.dstIn,
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 289.0, start: -85.0),
      //       Pin(size: 32.0, middle: 0.2533),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20.0),
      //           color: Color(0xff4842a8),
      //           border: Border.all(width: 1.0, color: Color(0xffffffff)),
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 289.0, start: -85.0),
      //       Pin(size: 32.0, middle: 0.3207),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20.0),
      //           color: Color(0xff4842a8),
      //           border: Border.all(width: 1.0, color: Color(0xffffffff)),
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 289.0, start: -85.0),
      //       Pin(size: 32.0, middle: 0.3882),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20.0),
      //           color: Color(0xff4842a8),
      //           border: Border.all(width: 1.0, color: Color(0xffffffff)),
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 289.0, start: -85.0),
      //       Pin(size: 32.0, middle: 0.4556),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20.0),
      //           color: Color(0xff4842a8),
      //           border: Border.all(width: 1.0, color: Color(0xffffffff)),
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 289.0, start: -85.0),
      //       Pin(size: 32.0, middle: 0.523),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20.0),
      //           color: Color(0xff4842a8),
      //           border: Border.all(width: 1.0, color: Color(0xffffffff)),
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 289.0, start: -85.0),
      //       Pin(size: 32.0, middle: 0.5905),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20.0),
      //           color: Color(0xff4842a8),
      //           border: Border.all(width: 1.0, color: Color(0xffffffff)),
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 289.0, start: -85.0),
      //       Pin(size: 32.0, middle: 0.6579),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20.0),
      //           color: Color(0xff4842a8),
      //           border: Border.all(width: 1.0, color: Color(0xffffffff)),
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 289.0, start: -85.0),
      //       Pin(size: 32.0, middle: 0.7253),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20.0),
      //           color: Color(0xff4842a8),
      //           border: Border.all(width: 1.0, color: Color(0xffffffff)),
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 289.0, start: -85.0),
      //       Pin(size: 32.0, middle: 0.7928),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20.0),
      //           color: Color(0xff4842a8),
      //           border: Border.all(width: 1.0, color: Color(0xffffffff)),
      //         ),
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
      //         _svg_j2n1xl,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 223.0, end: 2.0),
      //       Pin(size: 39.0, start: 86.0),
      //       child: const Text.rich(
      //         TextSpan(
      //           style: TextStyle(
      //             fontFamily: 'Adobe Arabic',
      //             fontSize: 31,
      //             color: Color(0xff4842a8),
      //           ),
      //           children: [
      //             TextSpan(
      //               text: 'SAÚDE DO',
      //               style: TextStyle(
      //                 fontWeight: FontWeight.w700,
      //               ),
      //             ),
      //             TextSpan(
      //               text: ' ',
      //               style: TextStyle(
      //                 fontSize: 35,
      //                 fontWeight: FontWeight.w700,
      //               ),
      //             ),
      //             TextSpan(
      //               text: 'HOMEM',
      //               style: TextStyle(
      //                 fontSize: 36,
      //                 color: Color(0xffffffff),
      //                 fontWeight: FontWeight.w700,
      //               ),
      //             ),
      //           ],
      //         ),
      //         textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false,),
      //         textAlign: TextAlign.left,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 164.0, start: 15.0),
      //       Pin(size: 17.0, middle: 0.2568),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const ConceitoPreNatal(),
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
      //                 text: 'PRÉ-NATAL CONCEITO',
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
      //       Pin(size: 149.0, start: 15.0),
      //       Pin(size: 17.0, middle: 0.3226),
      //       child: const Text.rich(
      //         TextSpan(
      //           style: TextStyle(
      //             fontFamily: 'Adobe Hebrew',
      //             fontSize: 15,
      //             color: Color(0xff4842a8),
      //           ),
      //           children: [
      //             TextSpan(
      //               text: 'AGENDA PRÉ-NATAL',
      //               style: TextStyle(
      //                 color: Color(0xffffffff),
      //               ),
      //             ),
      //           ],
      //         ),
      //         textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false,),
      //         textAlign: TextAlign.left,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 149.0, start: 15.0),
      //       Pin(size: 17.0, middle: 0.3226),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const AgendaPreNatal(),
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
      //                 text: 'AGENDA PRÉ-NATAL',
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
      //       Pin(size: 175.0, start: 15.0),
      //       Pin(size: 17.0, middle: 0.3884),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const ExamePreNatal(),
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
      //                 text: 'EXAMES NO PRÉ-NATAL',
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
      //       Pin(size: 165.0, start: 13.0),
      //       Pin(size: 17.0, middle: 0.4543),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const CalendarioConsulta(),
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
      //                 text: 'CALENDÁRIO VACINAL',
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
      //       Pin(size: 183.0, start: 13.0),
      //       Pin(size: 17.0, middle: 0.5201),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const HigienePenis(),
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
      //                 text: 'HIGIENIZAÇÃO DO PÊNIS',
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
      //       Pin(size: 78.0, start: 13.0),
      //       Pin(size: 15.0, middle: 0.5872),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const Cancer(),
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
      //                 text: 'PROSTATA',
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
      //       Pin(size: 166.0, start: 13.0),
      //       Pin(size: 17.0, middle: 0.6517),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const MetodoPreventivo(),
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
      //                 text: 'MÉTODO PREVENTIVO',
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
      //       Pin(size: 157.0, start: 13.0),
      //       Pin(size: 15.0, middle: 0.7184),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const InfeccoesSexuais(),
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
      //                 text: 'INFECÇOES SEXUAIS',
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
      //       Pin(size: 173.0, start: 14.0),
      //       Pin(size: 15.0, middle: 0.784),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const LicencaPaternidade(),
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
      //                 text: 'LICENÇA PATERNIDADE',
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
      //       Pin(size: 68.0, middle: 0.5),
      //       Pin(size: 24.3, end: 10.7),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const HomePage(),
      //           ),
      //         ],
      //         child: Stack(
      //           children: <Widget>[
      //             Pinned.fromPins(
      //               Pin(start: 0.0, end: 0.0),
      //               Pin(start: 0.0, end: 0.0),
      //               child: SvgPicture.string(
      //                 _svg_o10zo,
      //                 allowDrawingOutsideViewBox: true,
      //                 fit: BoxFit.fill,
      //               ),
      //             ),
      //             Pinned.fromPins(
      //               Pin(size: 37.0, middle: 0.4839),
      //               Pin(size: 14.0, middle: 0.4862),
      //               child: const Text(
      //                 'INÍCIO',
      //                 style: TextStyle(
      //                   fontFamily: 'Adobe Hebrew',
      //                   fontSize: 12,
      //                   color: Color(0xffffffff),
      //                 ),
      //                 textAlign: TextAlign.left,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 289.0, start: -85.0),
      //       Pin(size: 32.0, end: 85.0),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20.0),
      //           color: Color(0xff4842a8),
      //           border: Border.all(width: 1.0, color: Color(0xffffffff)),
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 124.0, start: 14.0),
      //       Pin(size: 16.0, end: 94.0),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const FotosGestao(),
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
      //                 text: 'FOTOGESTAÇÃO',
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
      //   ],
      // ),
    );
  }
}
