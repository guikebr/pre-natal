import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:pre_natal/features/home/pagina/widget/button_home.dart';
import 'package:pre_natal/features/homem/page/agenda_pre_natal.dart';

class FotosGestao extends StatelessWidget {
  const FotosGestao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(secondary: 'Fotos'),
          Expanded(
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    ButtonHome(title: '1º MÊS', page: PageDefault()),
                    ButtonHome(title: '2º MÊS', page: PageDefault()),
                    ButtonHome(title: '3º MÊS', page: PageDefault()),
                    ButtonHome(title: '4º MÊS', page: PageDefault()),
                    ButtonHome(title: '5º MÊS', page: PageDefault()),
                    ButtonHome(title: '6º MÊS', page: PageDefault()),
                    ButtonHome(title: '7º MÊS', page: PageDefault()),
                    ButtonHome(title: '8º MÊS', page: PageDefault()),
                    ButtonHome(title: '9º MÊS', page: PageDefault()),
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