import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class CalendarioVacinaAdulto extends StatelessWidget {
  const CalendarioVacinaAdulto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: InteractiveViewer(
                panEnabled: false,
                minScale: 0.5,
                maxScale: 5,
                boundaryMargin: const EdgeInsets.all(40),
                child: Image.asset(
                  'assets/images/calendario_vacina_adulto.png',
                  width: width,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 32,
                left: 24,
                right: 24,
                bottom: 10,
              ),
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
      ),
    );
  }
}
