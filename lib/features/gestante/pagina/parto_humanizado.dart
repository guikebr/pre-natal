import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class PartoHumanizado extends StatelessWidget {
  const PartoHumanizado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Header(
            type: TypeHeader.women,
            title: 'Parto',
            secondary: 'Humanizado',
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
                ButtonCircularHome(text: 'VOLTAR', type: TypeHeader.women),
                ButtonCircularHome(
                  text: 'INÍCIO',
                  page: HomePage(),
                  type: TypeHeader.women,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
