import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class Referencia extends StatelessWidget {
  const Referencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Column(
          children: [
            const Header(title: 'REF', hasSpacing: false, secondary: 'ERÊNCIA'),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Scrollbar(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: const [
                        Text(
                          ' - Brasil. Ministério da Saúde. Secretaria de Atenção '
                          'Primaria à Saúde. Departamento de Promoção da Saúde. '
                          'Guia alimentar para crianças brasileiras menores de '
                          '2 anos / Ministério da Saúde, Secretaria de Atenção'
                          ' Primaria à Saúde, Departamento de Promoção da Saúde. '
                          '– Brasília : Ministério da Saúde, 2019. 265 p. : Il.'
                          '\n\n- Brasil. Ministério da Saúde. Secretaria-Executiva.'
                          ' Secretaria de Atenção à Saúde. Glossário temático : '
                          'saúde do homem [recurso eletrônico] / Ministério da '
                          'Saúde. Secretaria-Executiva. Secretaria de Atenção à '
                          'Saúde.– Brasília: Ministério da Saúde, 2018. 140 p.',
                          style: TextStyle(
                            fontFamily: 'Adobe Hebrew',
                            fontSize: 16,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '\n- Brasil. Ministério da Saúde. Secretaria de'
                          ' Atenção à Saúde. Departamento de Ações '
                          'Programáticas  Estratégicas. Direitos sexuais, '
                          'direitos reprodutivos e métodos anticoncepcionais /'
                          ' Ministério da Saúde, Secretaria  de Atenção à Saúde'
                          ', Departamento de Ações Programáticas Estratégicas. '
                          '\n\n– Brasília: Ministério da Saúde, 2009. 52 p. :'
                          ' il. color. – (Série F. Comunicação e Educação em'
                          ' Saúde) (Série Direitos Sexuais e Direitos '
                          'Reprodutivos ; caderno n. 2)'
                          '\n\n- Brasil. Ministério da Saúde. Secretaria de'
                          ' Atenção à Saúde. Departamento de Atenção Básica. '
                          'Saúde da criança : ale itamento materno e '
                          'alimentação complementar / Ministério da Saúde,'
                          ' Secretaria de Atenção à Saúde, Departamento de '
                          'Atenção Básica. – 2. ed. – Brasília : Ministério da '
                          'Saúde, 2015.  184 p. : il. – (Cadernos de Atenção '
                          'Básica ; n. 23)',
                          style: TextStyle(
                            fontFamily: 'Adobe Hebrew',
                            fontSize: 16,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '\n- Brasil. Secretaria de Atenção à Saúde.'
                          ' Departamento de Ações Programáticas Estratégicas.'
                          ' Guia do pré-natal do parceiro para profissionais '
                          'de Saúde / Ministério da Saúde, Secretaria de '
                          'Atenção à Saúde, Departamento de Ações Programáticas'
                          ' Estratégicas. – Brasília : Ministério da Saúde, '
                          '2018. 56 p. : il.',
                          style: TextStyle(
                            fontFamily: 'Adobe Hebrew',
                            fontSize: 17,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.justify,
                        )
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
