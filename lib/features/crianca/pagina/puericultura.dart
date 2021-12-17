import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:pre_natal/features/calendarios/pagina/calendario_consulta.dart';

class Puericultura extends StatelessWidget {
  const Puericultura({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Header(
              type: TypeHeader.child,
              title: 'PUERICULTURA',
              secondary: 'CONSULTA',
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
                child: Scrollbar(
                  child: ListView(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Text(
                        'Nas consultas periódicas, o enfermeiro observa a criança, indaga'
                        ' aos pais sobre as atividades do filho, reações frente a '
                        'estímulos e realiza o exame clínico. Quanto mais nova a criança, '
                        'mais frágil e vulnerável, daí a necessidade de consultas mais '
                        'frequentes.\nEm cada consulta o enfermeiro vai pedir informações'
                        ' de como a criança se alimenta, se as vacinas estão em dia, '
                        'como ela brinca, condições de higiene, seu cotidiano. '
                        'O acompanhamento do crescimento, através da aferição periódica'
                        ' do peso, da altura e do perímetro cefálico e sua análise em'
                        ' gráficos, são indicadores das condições de saúde das crianças. '
                        'Sempre, a cada consulta,  bebês, pré-escolares, escolares e jovens'
                        ' devem ter seu crescimento  e seu desenvolvimento avaliado. '
                        'Crescimento é o ganho de peso  e altura, um fenômeno quantitativo,'
                        ' que termina ao final da adolescência. Por outro lado, o '
                        'desenvolvimento é qualitativo,  significa aprender a fazer coisas,'
                        ' evoluir, tornar-se independente e geralmente é um processo contínuo.',
                        style: TextStyle(
                          fontFamily: 'Adobe Hebrew',
                          fontSize: width * .040,
                          color: const Color(0xd9000000),
                        ),
                        textAlign: TextAlign.justify,
                      )
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
                    text: 'CALENDÁRIO',
                    page: CalendarioConsulta(),
                    type: TypeHeader.child,
                  ),
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
