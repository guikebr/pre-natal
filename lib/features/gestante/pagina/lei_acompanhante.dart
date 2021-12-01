import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class LeiAcompanhante extends StatelessWidget {
  const LeiAcompanhante({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        children: [
          const Header(
            type: TypeHeader.women,
            title: 'Acopanhante',
            secondary: 'lei',
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'A Lei Federal nº 11.108, de 07 de abril de 2005, mais conhecida'
                ' como a Lei do Acompanhante, determina que os serviços de saúde '
                'do SUS, da  rede própria ou conveniada, são obrigados a permitir '
                'à gestante o direito a acompanhante durante todo o período de '
                'trabalho de parto, parto e pós-parto. A Lei determina que este '
                'acompanhante será indicado pela gestante, podendo ser o pai do '
                'bebê, o parceiro atual, a mãe, um(a) amigo(a), ou outra pessoa '
                'que a gestante escolher. A Lei do Acompanhante é válida para '
                'parto normal ou cesariana e a presença do(a) acompanhante '
                '(inclusive se este for adolescente) não pode ser impedida pelo '
                'hospital ou por qualquer membro da equipe de saúde, nem deve ser '
                'exigido que o(a) acompanhante tenha participado de alguma '
                'formação ou grupo.',
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: width * .040,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10.0,
              right: 24.0,
              left: 24.0,
            ),
            child: SafeArea(
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
          ),
        ],
      ),
    );
  }
}
