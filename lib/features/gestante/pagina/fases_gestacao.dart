import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:pre_natal/features/home/pagina/widget/button_home.dart';
import 'fase_trimestre_1_ao_3.dart';
import 'fase_trimestre_4_ao_6.dart';
import 'fase_trimestre_7_ao_nascimento.dart';

class FasesGestacao extends StatelessWidget {
  const FasesGestacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Header(
            color: const Color(0xffe7c4c1),
            title: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                'Fases Da',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontFamily: 'Adobe Arabic',
                  fontSize: width * .1,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffe7c4c1),
                ),
              ),
            ),
            secondary: Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                'Gestação',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: width * .09,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Adobe Arabic',
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ButtonHome(
                          title: '1° AO 3° TRIMESTRE',
                          page: FaseTrimestre1Ao3(),
                          color: Color(0xffe7c4c1),
                        ),
                        const ButtonHome(
                          title: '4° AO 6° TRIMESTRE',
                          page: FaseTrimestre4Ao6(),
                          color: Color(0xffe7c4c1),
                        ),
                        const ButtonHome(
                          title: '7° AO NASCIMENTO',
                          page: FaseTrimestre7AoNascimento(),
                          color: Color(0xffe7c4c1),
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
                ),
                Positioned(
                  left: 0,
                  right: -100,
                  bottom: 0,
                  child: Container(
                    width: width,
                    height: height / 3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage('assets/images/embriao_1.png'),
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.9),
                          BlendMode.dstIn,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ButtonCircularHome(text: 'VOLTAR', color: Color(0xffe7c4c1)),
                ButtonCircularHome(
                  text: 'INÍCIO',
                  page: HomePage(),
                  color: Color(0xffe7c4c1),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}