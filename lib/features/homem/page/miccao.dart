import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class Miccao extends StatelessWidget {
  const Miccao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(secondary: 'MICÇÃO'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'Lavar as mão antes de urinar é muito importante, porque '
                'diminui o risco de levar bactérias e fungos para a região '
                'genital. Embora não seja comum, também é preciso enxugar '
                'o pênis com papel higiênico após urinar. As gotas de urina que'
                ' ficam na cueca, quando em contato com a pele, podem provocar '
                'uma inflamação local ou mesmo infecções fúngicas.',
                style: TextStyle(
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
