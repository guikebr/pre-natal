import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class Aos8MesesVida extends StatelessWidget {
  const Aos8MesesVida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        top: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: width,
              height: height * .1,
              color: const Color(0xff7BBEB9),
              alignment: Alignment.bottomCenter,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: Text(
                  '7 A 8 MESES DE VIDA',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Adobe Arabic',
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Scrollbar(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ListTile(
                        title: Text(
                          'O leite materno pode ser oferecido sempre que a criança quiser.',
                        ),
                      ),
                      ListTile(
                        title: Text('Café da manhã:'),
                        subtitle: Text('- Leite materno'),
                      ),
                      ListTile(
                        title: Text('Lanche da manhã e da tarde:'),
                        subtitle: Text(' - Fruta e leite materno.'),
                      ),
                      ListTile(
                        title: Text('Almoço e Jantar:'),
                        subtitle: Text(
                          'É recomendado que o prato da criança tenha:\n\n'
                              '- 1 alimento do grupo dos cereais ou raízes e tubérculos;'
                              '\n- 1 alimento do grupo dos feijões;'
                              '\n- 1 ou mais alimentos do grupo dos legumes e verduras;'
                              '\n- 1 alimento do grupo das carnes e ovos.'
                              '\n\nJunto à refeição, pode ser dado um pedaço pequeno de fruta.'
                              'Quantidade aproximada - 3 a 4 colheres de sopa no total. Essa'
                              'quantidade serveapenas para a familia ter alguma referência'
                              'e não deve ser seguida de forma rígida, uma vez que as '
                              'características individuais da crinça devem ser respeitadas.',
                        ),
                      ),
                      ListTile(
                        title: Text('Antes de dormir:'),
                        subtitle: Text(' - Leite materno.'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 18),
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
      ),
    );
  }
}
