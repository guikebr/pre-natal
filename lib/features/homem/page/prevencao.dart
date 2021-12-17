import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class Prevencao extends StatelessWidget {
  const Prevencao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(title: 'PREV', secondary: 'ENÇÃO', hasSpacing: false),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Text(
                    'Uma dieta rica em frutas, verduras, legumes, grãos e cereais '
                    'integrais, e com menos gordura,  ajuda a diminuir o risco de '
                    'câncer, como também de outras doenças crônicas '
                    'não-transmissíveis. Outros hábitos saudáveis são recomendados, '
                    'como:'
                    '\n\n- Ter uma alimentação saudável.'
                    '\n\n- Manter o peso corporal adequado.'
                    '\n\n- Praticar atividade física.'
                    '\n\n- Não fumar.'
                    '\n\n- Evitar o consumo de bebidas alcoólicas.'
                    '\n\n- Realização de exames preventivos de acordo com a '
                    'orientação do médico.',
                    style: TextStyle(
                      fontFamily: 'Adobe Hebrew',
                      fontSize: width * .040,
                      color: const Color(0xd9000000),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
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