import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class Banho extends StatelessWidget {
  const Banho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(secondary: 'BANHO'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'Na hora do banho deve-se lavar o pênis com cuidado e atenção.'
                ' Além de evitar o mau odor, a limpeza correta ajuda a prevenir'
                ' infecções por bactérias e fungos. Para limpar completamente o'
                ' pênis é preciso puxar o prepúcio (pele que recobre a glande '
                'ou cabeça do pênis) até o aparecimento total da glande, '
                'lavando com água e sabão ou sabonete até sair o esmegma. O'
                ' esmegma é uma secreção branca composta de células descamadas'
                ' da pele e óleos produzidos por glândulas penianas. Os homens'
                ' que não operaram fimose devem ter cuidado redobrado, pois o'
                ' prepúcio estreita a passagem da glândula facilitando o '
                'acúmulo de sujidades.',
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
