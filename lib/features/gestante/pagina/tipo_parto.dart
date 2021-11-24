import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
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
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Column(
          children: [
            Header(
              title: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  'Tipos de ',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontFamily: 'Adobe Arabic',
                    fontSize: width * .090,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xffe7c4c1),
                  ),
                ),
              ),
              color: const Color(0xffe7c4c1),
              secondary: Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  'Parto',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: width * .11,
                    fontFamily: 'Adobe Arabic',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
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
                          color: Color(0xffe7c4c1),
                          page: PartoNormal(),
                        ),
                        const ButtonHome(
                          title: 'PARTO CIRÚRGICO',
                          color: Color(0xffe7c4c1),
                          page: PartoCirurgico(),
                        ),
                        const ButtonHome(
                          title: 'PARTO HUMANIZADO',
                          color: Color(0xffe7c4c1),
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
                            color: Color(0xffe7c4c1),
                          ),
                          ButtonCircularHome(
                            text: 'INÍCIO',
                            page: HomePage(),
                            color: Color(0xffe7c4c1),
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
