import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class FaseTrimestre4Ao6 extends StatelessWidget {
  const FaseTrimestre4Ao6({Key? key}) : super(key: key);

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
            secondary: '4° ao 6° MÊS',
          ),
          Expanded(
            child: Stack(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Text(
                      'As estruturas principais dos órgãos do bebê completam a'
                      ' sua formação. A vontade de urinar começa a diminuir e'
                      ' pode ocorrer prisão de ventre. Nesta fase, os rins do '
                      'bebê começam a funcionar e ele faz xixi pela primeira '
                      'vez. Surgem os primeiros fios de cabelo e, por volta do'
                      ' quinto mês, finalmente, é possível saber qual o sexo'
                      ' dele. Por volta do sexto mês já será possível sentir '
                      'pontapés dentro da barriga, o bebê reage a estímulos e'
                      ' estão em desenvolvimento a audição, olfato, tato e'
                      ' paladar.',
                      style: TextStyle(
                        fontFamily: 'Adobe Hebrew',
                        fontSize: 15,
                        color: Color(0xd9000000),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Container(
                      width: width / 1.8,
                      height: height * .3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage(
                            'assets/images/embriao_3.png',
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
    );
  }
}
