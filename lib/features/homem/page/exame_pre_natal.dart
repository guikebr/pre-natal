import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class ExamePreNatal extends StatelessWidget {
  const ExamePreNatal({Key? key}) : super(key: key);

  Text titleList(String text, double width) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Adobe Hebrew',
        fontSize: width * .040,
        color: const Color(0xd9000000),
      ),
      textAlign: TextAlign.justify,
    );
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(title: 'EXAMES NO', secondary: 'PRÉ-NATAL'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Scrollbar(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      titleList(
                        'Consiste em exames que podem evitar uma série de doenças e '
                        'complicações, transmitidas do  pai para a mãe e, '
                        'consequentemente  para o bebê, como doenças sexualmente '
                        'transmissíveis e virais por via aérea.\n\nOutros exames serão '
                        'solicitados para avaliar o estado geral da saúde do homem.',
                        width,
                      ),
                      titleList(
                        '1. Tipagem sanguínea e Fator RH (no caso da mulher ter'
                        ' RH negativo);',
                        width,
                      ),
                      titleList(
                        '2. Pesquisa de antígeno de superfície do vírus da '
                        'Hepatite B (HBsAg);',
                        width,
                      ),
                      titleList(
                        '3. Teste treponêmico e/ou não treponêmico para '
                        'detecção de Sífilis por meio de tecnologia convencional'
                        ' ou rápida;',
                        width,
                      ),
                      titleList('4. Pesquisa de Anticorpos anti-HIV;', width),
                      titleList(
                        '5. Pesquisa de anticorpos do vírus da Hepatite C '
                        '(anti-HCV);',
                        width,
                      ),
                      titleList('6. Hemograma;', width),
                      titleList(
                        '7. Lipidograma: dosagem de colesterol HDL, dosagem de '
                        'colesterol LDL, dosagem de colesterol total, dosagem '
                        'de triglicerídeos;',
                        width,
                      ),
                      titleList('8. Dosagem de Glicose;', width),
                      titleList(
                        '9. Eletroforese da hemoglobina (para detecção da '
                        'doença falciforme);',
                        width,
                      ),
                      titleList(
                        '10. Aferição de Pressão Arterial;',
                        width,
                      ),
                      titleList(
                        '11. Verificação de Peso e cálculo de IMC (índice de'
                        ' Massa Corporal). ',
                        width,
                      ),
                    ]
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: e,
                          ),
                        )
                        .toList(),
                  ),
                ),
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
