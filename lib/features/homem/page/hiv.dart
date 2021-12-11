import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
class HIV extends StatelessWidget {
  const HIV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(secondary: 'HIV'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'Vírus transmitido sexualmente, por compartilhamento de '
                'seringas e agulhas, por transfusão de sangue ou da mãe para o '
                'bebê, e que ataca o sistema imunológicohumano, responsável '
                'pela defesa do organismo frente a doenças, podendo ocasionar a'
                ' síndrome da imunodeficiência adquirida (aids). A melhor forma'
                ' de prevenir a infecção pelo HIV é usando preservativo em '
                'todas as relações sexuais. Outras formas biomédicas de se '
                'prevenir a infecção pelo HIV são a utilização da profilaxia '
                'pós-exposição (PEP), da profilaxia pré-exposição (PrEP) e do '
                'tratamento como prevenção (TasP), além do incentivo a '
                'intervenções comportamentais e estruturais.',
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: width * .040,
                  color: const Color(0xd9000000),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ButtonCircularHome(text: 'VOLTAR'),
                ButtonCircularHome(text: 'INÍCIO', page: HomePage()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
