import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class AleitamentoMaternoConceito extends StatelessWidget {
  const AleitamentoMaternoConceito({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Header(
            type: TypeHeader.child,
            title: 'Aleitamento',
            secondary: 'Conceito',
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                'Único e inigualável, o leite materno é o alimento ideal para a '
                'criança, pois é totalmente adaptado às suas necessidades nos '
                'primeiros anos de vida. Não existe outro leite igual, nem parecido.'
                '\n\nProduzido naturalmente pelo corpo da mulher, o leite materno '
                'é o único que  contém anticorpos e outras substâncias que protegem'
                ' a criança de infecções  comuns enquanto ela estiver sendo '
                'amamentada, como diarreias, infecções  respiratórias, infecções '
                'de ouvidos (otites) e outras.\n\n',
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: 15,
                  color: Color(0xd9000000),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
              bottom: 10,
            ),
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
