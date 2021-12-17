import 'package:flutter/material.dart';
 import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'passo_passo_camisinha.dart';

import '../../home/pagina/home_page.dart';

class CamisinhaMasculina extends StatelessWidget {
  const CamisinhaMasculina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(title: 'CAMISINHA', secondary: 'MASCULINA'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'É uma capa fina de borracha que cobre o pênis durante a '
                'relação sexual, para impedir o contato do pênis com a vagina,'
                ' ânus e boca. A camisinha funciona como uma barreira,'
                'o esperma ejaculado pelo homem fica retido na '
                'camisinha, assim os espermatozóides não entram no corpo da(o)'
                ' parceira(o). A camisinha masculina é eficaz para proteger da '
                'gravidez e de IST/HIV/AIDS, quando usada em todas as relações '
                'sexuais.',
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
                ButtonCircularHome(
                  text: 'COMO USAR',
                  page: PassoPassoCamisinha(),
                ),
                ButtonCircularHome(text: 'INÍCIO', page: HomePage()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
