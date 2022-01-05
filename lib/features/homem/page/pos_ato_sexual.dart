import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class PosAtoSexual extends StatelessWidget {
  const PosAtoSexual({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(title: 'APÓS ATO', secondary: 'SEXUAL'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'Importante é lavar o pênis após a relação sexual a fim de '
                'ajudar a remoção de resíduos de sêmen e o excesso de '
                'lubrificante do preservativo. Nas relações sem o uso de '
                'preservativo, a higiene do pênis remove o resíduo de esperma '
                'misturado as secreções vaginais ou anais. A higiene adequada '
                'pode diminuir a probabilidade de infecção, todavia NÃO garante'
                ' proteção.',
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