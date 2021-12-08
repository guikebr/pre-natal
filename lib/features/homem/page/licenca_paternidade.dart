import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class LicencaPaternidade extends StatelessWidget {
  const LicencaPaternidade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(
            title: 'LICENÇA PATE',
            secondary: 'RNIDADE',
            hasSpacing: false,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'De acordo com Constituição Federal/88 em seu artigo 7º, você '
                'tem direito a cinco dias de licença-paternidade.Um ganho para '
                'a ampliação desse direito foi a publicação da Lei nº 13.257, '
                'de 8 de março de 2016, que dispõe sobre as políticas públicas '
                'para primeira infância. Dentro desta lei, existem artigos '
                'específicos ligados ao exercício da paternidade ativa, como a '
                'ampliação da licença-paternidade em mais 15 dias para os '
                'funcionários das empresas cidadãs.',
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
