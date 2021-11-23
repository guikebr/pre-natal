import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class SobreApp extends StatelessWidget {
  const SobreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Header(
              title: Text(
                'O APLICA',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontFamily: 'Adobe Arabic',
                  fontSize: width * .075,
                  color: const Color(0xff4842a8),
                ),
              ),
              secondary: Text(
                'TIVO',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: width * .075,
                  fontFamily: 'Adobe Arabic',
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: const [
                    Text(
                      "O aplicativo Pré-natal do Homem foi criado a partir da"
                      " pesquisa de mestrado intitulada 'Desenvolvimento  de "
                      "Aplicativo Móvel para Intervenção Educativa no Pré-natal"
                      " do Homem' da Universidade Estadual do Oeste do Paraná. "
                      "\n\n"
                      "É gratuito e sem fins lucrativos.  "
                      "\n\n"
                      "Registro provisório de propriedade intelectual e "
                      "patentes de software junto ao instituto Nacional de "
                      "Propriedade Industrial.",
                      style: TextStyle(
                        fontFamily: 'Adobe Hebrew',
                        fontSize: 17,
                        color: Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ButtonCircularHome(text: 'VOLTAR'),
                  ButtonCircularHome(text: 'INÍCIO', page: HomePage())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
