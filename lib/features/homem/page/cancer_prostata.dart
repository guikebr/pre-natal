import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class CancerPropostata extends StatelessWidget {
  const CancerPropostata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(title: 'CÂNCER', secondary: 'PROSTATA'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'Câncer de próstata é o tumor que afeta a prostata, glândula '
                'localizada abaixo da bexiga e que envolve a uretra, canal que'
                ' liga a bexiga ao orifício externo do pênis.O câncer de '
                'próstata é o mais frequente entre os homens, depois do câncer'
                ' de pele. Embora seja uma doença comum, por medo ou por'
                ' desconhecimento muitos homens preferem não conversar sobre '
                'esse assunto.\nO câncer de próstata, na maioria dos casos, '
                'cresce de forma lenta e não chega a dar sinais durante a vida '
                'e nem a ameaçar a saúde do homem. Em outros casos, pode '
                'crescer rapidamente, se espalhar para outros órgãos e causar a'
                ' morte. Esse efeito é conhecido como metástase.',
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