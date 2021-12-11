import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class CirurgiaVasectomia extends StatelessWidget {
  const CirurgiaVasectomia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(title: 'Cirurgia', secondary: 'Vasectomia'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'Cirurgia simples, segura e rápida. É um método '
                'anticoncepcional considerado permanente ou irreversível, '
                'porque, depois de feita a cirurgia, é muito difícil recuperar '
                'a capacidade de ter filhos. Nessa cirurgia, os canais '
                'deferentes são cortados e amarrados, cauterizados, ou fechados'
                ' com grampos. \nÉ uma cirurgia simples, que pode ser feita em '
                'ambulatório, com anestesia local e o homem não precisa ficar '
                'internado.\nA vasectomia age impedindo que os espermatozóides '
                'se encontrem com o óvulo.\nA vasectomia, mesmo sendo uma '
                'operação simples, tem riscos e pode apresentar problemas como '
                'qualquer outra cirurgia.',
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
