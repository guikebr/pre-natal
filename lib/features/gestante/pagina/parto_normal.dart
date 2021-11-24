import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class PartoNormal extends StatelessWidget {
  const PartoNormal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Header(
              title: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  'Parto',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontFamily: 'Adobe Arabic',
                    fontSize: width * .1,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xffe7c4c1),
                  ),
                ),
              ),
              color: const Color(0xffe7c4c1),
              secondary: Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  'Normal',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: width * .1,
                    fontFamily: 'Adobe Arabic',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  'É o parto mais convencional, uma vez que a mulher '
                  'entra em trabalho de parto espontaneamente. Normalmente,'
                  ' ocorre entre a 37º e a 42º semana de gravidez. De '
                  'início, é indicado para todas as grávidas. Ele se inicia '
                  'com as contrações, que começam a ficar cada vez mais '
                  'frequentes e doloridas. O parto normal pode ser '
                  'realizado em ambiente domiciliar, casas de parto ou'
                  ' hospitalar, ficando a critério da gestante a escolha do'
                  ' melhor lugar. ',
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
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
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
          ],
        ),
      ),
    );
  }
}
