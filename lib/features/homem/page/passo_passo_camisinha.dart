import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:pre_natal/features/homem/widgets/image_description.dart';

class PassoPassoCamisinha extends StatelessWidget {
  const PassoPassoCamisinha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Column(
          children: [
            const Header(title: 'Passo a', secondary: 'PASSO'),
            Expanded(
              child: Scrollbar(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: const [
                        ImageDescription(
                          'assets/images/passo_um.png',
                          'Ponha a camisinha quando o pênis estiver duro.',
                        ),
                        ImageDescription(
                          'assets/images/passo_dois.png',
                          'Aperte a ponta para o ar sair. É aí que o esperma vai ficar.',
                          directionRight: false,
                        ),
                        ImageDescription(
                          'assets/images/passo_tres.png',
                          'Desenrole a camisinha até embaixo cuidadosamente.',
                        ),
                        ImageDescription(
                          'assets/images/passo_quatro.png',
                          'Tire a camisinha com o pênis ainda duro.',
                          directionRight: false,
                        ),
                        ImageDescription(
                          'assets/images/passo_quinto.png',
                          'Use a camisinha uma vez só. Dê um nó e jogue no lixo.',
                        ),
                        SizedBox(height: 50)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 24,
                right: 24,
                bottom: 18,
              ),
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
      ),
    );
  }
}
