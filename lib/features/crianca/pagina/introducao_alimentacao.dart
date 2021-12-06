import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/crianca/pagina/aos_11_meses_vida.dart';
import 'package:pre_natal/features/crianca/pagina/aos_2_anos_vida.dart';
import 'package:pre_natal/features/crianca/pagina/aos_6_meses_vida.dart';
import 'package:pre_natal/features/crianca/pagina/aos_8_meses_vida.dart';
import 'package:pre_natal/features/crianca/pagina/aos_0_6_meses_vida.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:pre_natal/features/home/pagina/widget/button_home.dart';

class IntroducaoAlimentacao extends StatelessWidget {
  const IntroducaoAlimentacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(
            type: TypeHeader.child,
            title: 'Introdução',
            secondary: 'Alimentação',
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ButtonHome(
                  title: '0 A 6 MESES DE VIDA',
                  type: TypeHeader.child,
                  page: Aos6MesesVida(),
                ),
                const ButtonHome(
                  title: 'AOS 6 MESES DE VIDA',
                  type: TypeHeader.child,
                  page: Primeiro6MesesVida(),
                ),
                const ButtonHome(
                  title: '7 A 8 MESES DE VIDA',
                  type: TypeHeader.child,
                  page: Aos8MesesVida(),
                ),
                const ButtonHome(
                  title: '9 A 11 MESES DE VIDA',
                  type: TypeHeader.child,
                  page: Aos11MesesVida(),
                ),
                const ButtonHome(
                  title: 'ENTRE 1 A 2 ANOS DE VIDA',
                  type: TypeHeader.child,
                  page: Aos2AnosVida(),
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
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
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
    );
  }
}
