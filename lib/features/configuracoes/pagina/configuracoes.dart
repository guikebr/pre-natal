import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/configuracoes/pagina/referencia.dart';
import 'package:pre_natal/features/home/pagina/widget/button_home.dart';
import 'sobre_app.dart';

class Configuracoes extends StatelessWidget {
  const Configuracoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            const Header(title: 'INFORMAÇÃO', secondary: 'APP'),
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: width * .9,
                    height: height * .78,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage('assets/images/pai.png'),
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.19),
                          BlendMode.dstIn,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: SafeArea(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ButtonHome(title: 'O APP', page: SobreApp()),
                        const ButtonHome(
                          title: 'REFÊNCIA',
                          page: Referencia(),
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
                ),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 24.0),
                      child: ButtonCircularHome(text: 'INÍCIO'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
