import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'tipo_parto.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PartoHumanizado extends StatelessWidget {
  const PartoHumanizado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Header(
            title: Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Text(
                'Parto',
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
            secondary: Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                'Humanizado',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: width * .070,
                  fontFamily: 'Adobe Arabic',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                'O parto humanizado não pode ser considerado uma nova técnica, '
                'mas sim, um parto em que se tem respeito as mulheres. \nA '
                'gestante pode escolher onde quer ter o bebê, quem irá '
                'acompanhar, qual a melhor posição para o processo, se a luz '
                'estará acessa ou apagada, se haverá uso da banheira, etc. Pode'
                ' ter o uso de anestesia e ainda é possível escolher se quer '
                'comer alguma coisa durante o trabalho de parto.',
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: 15,
                  color: Color(0xd9000000),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ButtonCircularHome(
                  text: 'VOLTAR',
                  color: Color(0xffe7c4c1),
                ),
                ButtonCircularHome(
                  text: 'INÍCIO',
                  page: HomePage(),
                  color: Color(0xffe7c4c1),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
