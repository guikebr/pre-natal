import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:pre_natal/features/home/pagina/widget/button_home.dart';
import 'miccao.dart';
import 'banho.dart';
import 'pos_ato_sexual.dart';
import 'depilacao.dart';
import 'roupas_intimas.dart';

class HigienePenis extends StatelessWidget {
  const HigienePenis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(title: 'HIGIENE DO', secondary: 'PÊNIS'),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ButtonHome(title: 'NA MICÇÃO', page: Miccao()),
                ButtonHome(title: 'NO BANHO', page: Banho()),
                ButtonHome(title: 'APÓS O ATO SEXUAL', page: PosAtoSexual()),
                ButtonHome(title: 'DEPILAÇÃO', page: Depilacao()),
                ButtonHome(title: 'ROUPAS INTIMAS', page: RoupasIntimas()),
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