import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class TiposAleitamento extends StatelessWidget {
  const TiposAleitamento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Header(
            type: TypeHeader.child,
            title: 'Tipos',
            secondary: 'Aleitamento',
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
              child: Scrollbar(
                child: ListView(
                  shrinkWrap: true,
                  children: const [
                    Text(
                      'EXCLUSIVO: Quando a criança recebe somente leite materno, '
                      'direto da mama ou ordenhado, ou leite humano de outra forma, '
                      'sem outros líquidos ou sólidos.\n\nPREDOMINANTE:  Quando a '
                      'criança recebe, além do leito materno, água ou bebidas a base '
                      'de água (água adocicada, chás ou infusões e sucos).'
                      '\n\nCOMPLEMENTADO: Quando a criança recebe, além do leite '
                      'materno, qualquer alimento sólido ou semissólido com a '
                      'finalidade de complementa-lo, e não de substituí-lo. '
                      '\n\nMISTO OU PACIAL: Quando a criança recebe leite materno e '
                      'outros tipos de leite. \n\n\n\n',
                      style:
                          TextStyle(fontFamily: 'Adobe Hebrew', fontSize: 15),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
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
