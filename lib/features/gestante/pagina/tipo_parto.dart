import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:pre_natal/features/home/pagina/widget/button_home.dart';

import 'parto_humanizado.dart';
import 'parto_normal.dart';
import 'parto_cirurgico.dart';

class TipoParto extends StatelessWidget {
  const TipoParto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Column(
          children: [
            const Header(
              type: TypeHeader.women,
              title: 'Tipos de',
              secondary: 'Parto',
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ButtonHome(
                          title: 'PARTO NORMAL',
                          type: TypeHeader.women,
                          page: PartoNormal(),
                        ),
                        const ButtonHome(
                          title: 'PARTO CIRÚRGICO',
                          type: TypeHeader.women,
                          page: PartoCirurgico(),
                        ),
                        const ButtonHome(
                          title: 'PARTO HUMANIZADO',
                          type: TypeHeader.women,
                          page: PartoHumanizado(),
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
                      bottom: 10.0,
                      right: 24.0,
                      left: 24.0,
                    ),
                    child: SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ButtonCircularHome(
                            text: 'VOLTAR',
                            type: TypeHeader.women,
                          ),
                          ButtonCircularHome(
                            text: 'INÍCIO',
                            page: HomePage(),
                            type: TypeHeader.women,
                          ),
                        ],
                      ),
                    ),
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
