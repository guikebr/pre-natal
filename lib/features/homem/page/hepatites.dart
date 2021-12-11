import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class Hepatites extends StatelessWidget {
  const Hepatites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(title: 'HEPATITIES', secondary: 'VIRAIS'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'Doenças infecciosas que prejudicam o fígado e podem levar à '
                'cirrose e ao câncer. As hepatites virais são classificadas '
                'pelas letras A, B, C, D, E, sendo as hepatites B e C mais '
                'prevalentes na população masculina. São preveníveis por meio '
                'de ações, como: o uso de preservativos; o não compartilhamento'
                ' de objetos pessoais (como escovas de dentes) e de '
                'perfurocortantes (seringas, agulhas, lâminas de barbear e '
                'kits para manicure, por exemplo). Boas práticas de higiene '
                'pessoal são importantes para se evitar a infecção de alguns '
                'tipos de hepatites virais, como A e E. Outra forma de '
                'prevenção é a vacinação contra as hepatites.',
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
