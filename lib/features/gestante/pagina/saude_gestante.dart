import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/gestante/pagina/fases_gestacao.dart';
import 'package:pre_natal/features/gestante/pagina/tipo_parto.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:pre_natal/features/home/pagina/widget/button_home.dart';
import 'lei_acompanhante.dart';

class SaudeGestante extends StatelessWidget {
  const SaudeGestante({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: -140,
            left: 0,
            child: Container(
              height: height / 1.9,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/gravida.png'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.4),
                    BlendMode.dstIn,
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Header(
                title: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    'Saúde Da',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontFamily: 'Adobe Arabic',
                      fontSize: width * .1,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffe7c4c1),
                    ),
                  ),
                ),
                color: const Color(0xffe7c4c1),
                secondary: Text(
                  'Gestante',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: width * .1,
                    fontFamily: 'Adobe Arabic',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ButtonHome(
                            title: 'FASES DA GESTAÇÃO',
                            color: Color(0xffe7c4c1),
                            page: FasesGestacao(),
                          ),
                          const ButtonHome(
                            title: 'TIPOS DE PARTO',
                            color: Color(0xffe7c4c1),
                            page: TipoParto(),
                          ),
                          const ButtonHome(
                            title: 'LEI ACOMPANHATE',
                            color: Color(0xffe7c4c1),
                            page: LeiAcompanhante(),
                          ),
                        ]
                            .map(
                              (e) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: e,
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 24.0),
                          child: ButtonCircularHome(
                            text: 'INÍCIO',
                            color: Color(0xffe7c4c1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
