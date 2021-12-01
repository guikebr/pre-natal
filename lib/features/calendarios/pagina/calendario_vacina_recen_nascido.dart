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
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: const [
                  VacinacaoItem(
                    ano: 'Ao nascer',
                    nomevacina: 'BCG - ID',
                    dose: 'DOSE ÚNICA',
                  ),
                  VacinacaoItem(nomevacina: 'HEPATITE B', dose: 'UMA DOSE'),
                  VacinacaoItem(
                    ano: '2 meses',
                    nomevacina: 'Pentavalente',
                    dose: '1º DOSE',
                  ),
                  VacinacaoItem(nomevacina: 'VIP', dose: '1º DOSE'),
                  VacinacaoItem(nomevacina: 'HEPATITE B', dose: '1º DOSE'),
                  VacinacaoItem(nomevacina: 'HEPATITE B', dose: '1º DOSE'),
                ],
              ),
            ),
            // Expanded(
            //   child: Container(
            //     width: width,
            //     // height: height,
            //     decoration: const BoxDecoration(
            //       image: DecorationImage(
            //         image: AssetImage(
            //           'assets/images/calendario_rescenascido.png',
            //         ),
            //         fit: BoxFit.fill,
            //       ),
            //     ),
            //   ),
            // ),
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
