import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class Sifilis extends StatelessWidget {
  const Sifilis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(secondary: 'SÍFILIS'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'Enfermidade infecciosa sistêmica causada pela bactéria'
                ' Treponema pallidum, transmitida sexualmente, por transfusão'
                ' de sangue, durante a gestação e/ou parto, entre outras. A '
                'transmissão da sífilis pode ser controlada por meio do uso '
                'regular de preservativos e por diagnóstico precoce em homens e'
                ' sua(s) parceria(s). Durante o pré-natal, é importante testes'
                ' rápidos para sífilis não somente da gestante como, também, '
                'de sua(s) parceria(s). Ao ser diagnosticada a sífilis na '
                'gestante, é fundamental que tanto ela quanto sua(s) parceria(s)'
                ' sexual(is) sejam tratadas.',
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