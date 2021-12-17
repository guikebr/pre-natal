import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class PartoCirurgico extends StatelessWidget {
  const PartoCirurgico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Header(
              type: TypeHeader.women,
              title: 'Parto',
              secondary: 'Cirúrgico',
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    Text(
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
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ButtonCircularHome(text: 'VOLTAR', type: TypeHeader.women),
                  ButtonCircularHome(
                    text: 'INÍCIO',
                    page: HomePage(),
                    type: TypeHeader.women,
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
