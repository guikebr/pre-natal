import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class FaseTrimestre1Ao3 extends StatelessWidget {
  const FaseTrimestre1Ao3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Header(
            type: TypeHeader.women,
            title: 'Trimestre',
            secondary: '1 ao 3',
          ),
          Expanded(
            child: Stack(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Text(
                      'É geralmente marcado  por sintomas parecidos aos da tensão'
                      ' pré-menstrual. Os seios podem inchar e sensações de'
                      ' sonolência, cansaço, náuseas, vontade de urinar, ou '
                      'desejo e  repulsa por certos alimentos podem aparecer. '
                      'Próximo ao final do terceiro mês, o bebê mede entre  6,25'
                      ' e 7,5 cm e pesa entre 14 a 18 gramas. Ao final do  '
                      'primeiro trimestre, a cabeça já está bem delineada, o'
                      ' coração já pode ser ouvido com um aparelho próprio '
                      'durante a consulta de pré-natal.',
                      style: TextStyle(
                        fontFamily: 'Adobe Hebrew',
                        fontSize: 15,
                        color: Color(0xd9000000),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Positioned(
                  right: -80,
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Container(
                      width: width,
                      height: height * .25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage(
                            'assets/images/embriao_2.png',
                          ),
                          fit: BoxFit.fill,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5),
                            BlendMode.dstIn,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ButtonCircularHome(
                  text: 'VOLTAR',
                  type: TypeHeader.women,
                ),
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
    );
  }
}
