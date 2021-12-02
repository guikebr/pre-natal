import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/texto/vacina_item.dart';
import 'package:pre_natal/features/crianca/pagina/saude_crianca.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class CalendarioVacinaRecenNascido extends StatelessWidget {
  const CalendarioVacinaRecenNascido({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(24.0),
            //   child: ListView(
            //     shrinkWrap: true,
            //     physics: const BouncingScrollPhysics(),
            //     children: const [
            //       VacinacaoItem(ano: 'Ao nascer'),
            //       VacinacaoItem(
            //         nomevacina: 'BCG - ID',
            //         dose: 'DOSE ÚNICA',
            //         informacao: 'Tuberculose',
            //       ),
            //       VacinacaoItem(
            //         nomevacina: 'HEPATITE B',
            //         dose: '1º DOSE',
            //         informacao: 'Hepatite B\n\n'
            //             'A primeira dose da vacina contra a hepatite B deve ser'
            //             ' administrada na maternidade, nas primeiras 12 horas '
            //             'de vida do recém-nascido. O esquema básico se '
            //             'constitui de 03 (três) doses, com intervalos de 30 '
            //             'dias da primeira para a segunda dose e 180 dias da '
            //             'primeira para a terceira dose.',
            //       ),
            //       VacinacaoItem(ano: '2 meses'),
            //       VacinacaoItem(
            //         nomevacina: 'Pentavalente',
            //         dose: '1º DOSE',
            //         informacao: 'Difteria, tétano, coqueluche e infecções* '
            //             'causada pelo Haemophilus influenzae tipo B e hepatite B',
            //       ),
            //       VacinacaoItem(
            //         nomevacina: 'Poliomielite inativada',
            //         dose: '1º DOSE',
            //         informacao: 'Poliomielite (paralisia infantil)',
            //       ),
            //       VacinacaoItem(
            //         nomevacina: 'Rotavírus',
            //         dose: '1º DOSE',
            //         informacao: 'Gastroenterites por rotavírus',
            //       ),
            //       VacinacaoItem(
            //         nomevacina: 'Pneumocócica 10 V',
            //         dose: '1º DOSE',
            //         informacao: 'Alguns tipos de meningite, pneumonia, otite'
            //             ' média aguda, sinusite, bacteremia e sepse',
            //       ),
            //       VacinacaoItem(ano: '3 meses'),
            //       VacinacaoItem(
            //         nomevacina: 'Meningocócica C',
            //         dose: '1º DOSE',
            //         informacao: 'Meningite tipo C.',
            //       ),
            //       VacinacaoItem(ano: '4 meses'),
            //       VacinacaoItem(ano: '5 meses'),
            //       VacinacaoItem(ano: '6 meses'),
            //     ]
            //         .map((e) => Column(
            //               children: [
            //                 e,
            //                 const Padding(
            //                   padding: EdgeInsets.only(left: 16.0),
            //                   child: Divider(color: Colors.grey),
            //                 )
            //               ],
            //             ))
            //         .toList(),
            //   ),
            // ),
            Expanded(
              child: Container(
                width: width,
                // height: height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/calendario_rescenascido.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 4,
                left: 24,
                right: 24,
                bottom: 10,
              ),
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
      ),
      // body: Stack(
      //   children: <Widget>[
      //     Pinned.fromPins(
      //       Pin(size: 68.0, start: 14.0),
      //       Pin(size: 24.3, end: 10.7),
      //       child: SvgPicture.string(
      //         _svg_bic6yr,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 68.0, end: 18.0),
      //       Pin(size: 24.3, end: 10.7),
      //       child: SvgPicture.string(
      //         _svg_wzq225,
      //         allowDrawingOutsideViewBox: true,
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 46.0, start: 24.0),
      //       Pin(size: 12.0, end: 17.0),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const SaudeCrianca(),
      //           ),
      //         ],
      //         child: Text(
      //           'VOLTAR',
      //           style: TextStyle(
      //             fontFamily: 'Adobe Hebrew',
      //             fontSize: 12,
      //             color: Color(0xff000000),
      //           ),
      //           textAlign: TextAlign.left,
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(size: 37.0, end: 34.0),
      //       Pin(size: 14.0, end: 16.0),
      //       child: PageLink(
      //         links: [
      //           PageLinkInfo(
      //             transition: LinkTransition.Fade,
      //             ease: Curves.easeOut,
      //             duration: 0.3,
      //             pageBuilder: () => const HomePage(),
      //           ),
      //         ],
      //         child: Text(
      //           'INÍCIO',
      //           style: TextStyle(
      //             fontFamily: 'Adobe Hebrew',
      //             fontSize: 12,
      //             color: Color(0xff000000),
      //           ),
      //           textAlign: TextAlign.left,
      //         ),
      //       ),
      //     ),
      //     Pinned.fromPins(
      //       Pin(start: -120.0, end: -120.0),
      //       Pin(start: 120.0, end: 161.0),
      //       child: Transform.rotate(
      //         angle: 1.5708,
      //         child: Container(
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: const AssetImage(''),
      //               fit: BoxFit.fill,
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
