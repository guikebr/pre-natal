import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/widget/button_home.dart';
import 'package:pre_natal/features/homem/page/camisinha_masculina.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:pre_natal/features/homem/page/preventivo.dart';
import 'cirurgia_vasectomia.dart';

class MetodoPreventivo extends StatelessWidget {
  const MetodoPreventivo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(
            title: 'MÉTODO PRE',
            secondary: 'VENTIVO',
            hasSpacing: false,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ButtonHome(title: 'CONCEITO', page: Preventivo()),
                ButtonHome(
                  title: 'CAMISINHA MASCULINA',
                  page: CamisinhaMasculina(),
                ),
                ButtonHome(title: 'VASECTOMIA', page:  CirurgiaVasectomia()),
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
