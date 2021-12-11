import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class Autores extends StatelessWidget {
  const Autores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Column(
          children: [
            const Header(title: 'AUTO', secondary: 'RES', hasSpacing: false),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Scrollbar(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: const [
                        Text(
                          'Adriana Zilly - Mestrado e Doutorado em Ciências '
                          'Biológicas pela UEM - Universidade Estadual de '
                          'Maringá e graduação em Ciências Biológicas pela '
                          'Unioesta/ Cascavel. Docente do curso de Enfermagemm,'
                          'do Programa de Pós Graduação (Mestrado) em Ensino e'
                          'do Programa de Pós Graduação (Mestrado) em Saúde '
                          'Pública em Região de Fronteira da Unioeste/Foz.',
                          style: TextStyle(
                            fontFamily: 'Adobe Hebrew',
                            fontSize: 16,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '\n\nDaniel Vinício Dias Ferreira - Mestrando em Ensino'
                          'pela Universidade Estadual do Oeste do Paraná, '
                          'especialista e docência e enferage e unidade de '
                          'terapia intensiva e graduação em Enfermagem pelo '
                          'Centro Universitário Uniamérica. '
                          'Docente da Universidade Veiga de Almeida.',
                          style: TextStyle(
                            fontFamily: 'Adobe Hebrew',
                            fontSize: 16,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.justify,
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
