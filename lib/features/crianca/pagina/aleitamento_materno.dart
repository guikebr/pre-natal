import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/crianca/pagina/aleitamento_materno_conceito.dart';
import 'package:pre_natal/features/crianca/pagina/introducao_alimentacao.dart';
import 'package:pre_natal/features/crianca/pagina/tipos_aleitamento.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:pre_natal/features/home/pagina/widget/button_home.dart';

class AleitamentoMaterno extends StatelessWidget {
  const AleitamentoMaterno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Header(
              type: TypeHeader.child,
              title: 'Aleitamento',
              secondary: 'Materno',
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ButtonHome(
                    title: 'CONCEITO',
                    type: TypeHeader.child,
                    page: AleitamentoMaternoConceito(),
                  ),
                  const ButtonHome(
                    title: 'TIPOS DE ALEITAMENTO',
                    type: TypeHeader.child,
                    page: TiposAleitamento(),
                  ),
                  const ButtonHome(
                    title: 'INTRODUÇÃO ALIMENTAR',
                    type: TypeHeader.child,
                    page: IntroducaoAlimentacao(),
                  ),
                ]
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: e,
                      ),
                    )
                    .toList(),
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
      ),
    );
  }
}
