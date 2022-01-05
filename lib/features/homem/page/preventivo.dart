import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class Preventivo extends StatelessWidget {
  const Preventivo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(title: 'PREVE', secondary: 'NTIVO', hasSpacing: false),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'São maneiras, medicamentos, objetos e cirurgias usados pelas'
                ' pessoas para evitar a gravidez. Existem métodos femininos '
                'e masculinos. Existem métodos considerados reversíveis, que '
                'são aqueles em que a pessoa, após parar de usá-los, volta a '
                'ter a capacidade de engravidar. Existem métodos considerados'
                ' irreversíveis, como a vasectomia, porque, após utilizá-los, '
                'é muito difícil a pessoa recuperar a capacidade de engravidar.'
                ' Por isso, para optarem pela vasectomia como método '
                'anticoncepcional, o homem precisa estar seguro de que não '
                'quer mais ter filhos.',
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
