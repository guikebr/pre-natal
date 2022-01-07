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
            const Header(
              title: 'O APLICA',
              secondary: 'TIVO',
              hasSpacing: false,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "O aplicativo Pré-natal do Homem foi criado a partir da"
                          " pesquisa de mestrado intitulada 'Desenvolvimento  de "
                          "Aplicativo Móvel para Intervenção Educativa no Pré-natal"
                          " do Homem' da Universidade Estadual do Oeste do Paraná. "
                          "\n\n"
                          "É gratuito e sem fins lucrativos.  ",
                          style: TextStyle(
                            fontFamily: 'Adobe Hebrew',
                            fontSize: width * .040,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
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
