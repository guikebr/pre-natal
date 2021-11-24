import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'tipo_parto.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PartoCirurgico extends StatelessWidget {
  const PartoCirurgico({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.only(right: 4.0),
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
                  'Cirúrgico',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: width * .075,
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
                  'O parto cesariano é recomendado em casos em que o parto '
                  'normal não é possível de acontecer. A OMS (Organização '
                  'Mundial da Saúde) sugere que 15% dos partos sejam cesáreas,'
                  ' porém, em alguns serviços privados, os números podem chegar '
                  'até 85%. \n\nComo é um procedimento cirúrgico, é necessário '
                  'que tenha um jejum, porém, é possível ficar acordada e '
                  'presenciar o momento do nascimento do bebê. Em alguns casos,'
                  ' a cesárea pode ser recomendada. Por exemplo, quando o bebê '
                  'se encontra sentado, se você já realizou outra cesária '
                  'anteriormente, tem alguma infecção por herpes ou HIV ou'
                  ' quando o cordão umbilical se enrola no pescoço do bebê.',
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
                  ButtonCircularHome(text: 'VOLTAR', color: Color(0xffe7c4c1)),
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
