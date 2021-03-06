import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class Aos6MesesVida extends StatelessWidget {
  const Aos6MesesVida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        top: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: width,
              height: height * .1,
              color: const Color(0xff7BBEB9),
              alignment: Alignment.bottomCenter,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 12.0),
                child: Text(
                  '0 A 6 MESES DE VIDA',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Adobe Arabic',
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
            const ListTile(
              title: Text(
                'Os primeiros 6 meses de vida deve-se oferecer leite materno '
                'exclusivo, salvo, quando houver a necessidade de suplementação '
                'orientado pelo médico pediatra.',
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ButtonCircularHome(text: 'VOLTAR', type: TypeHeader.child),
                  ButtonCircularHome(
                    text: 'INÍCIO',
                    page: HomePage(),
                    type: TypeHeader.child,
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
