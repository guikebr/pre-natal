import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class FaseTrimestre7AoNascimento extends StatelessWidget {
  const FaseTrimestre7AoNascimento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: height * .4,
              child: Stack(
                children: [
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Header(
                      type: TypeHeader.women,
                      title: '7 Ao',
                      secondary: 'Nascimento',
                    ),
                  ),
                  Positioned(
                    left: -100,
                    bottom: 0,
                    top: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Container(
                        width: width * 0.9,
                        height: height * .4,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(
                              'assets/images/embriao_4.png',
                            ),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.9),
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
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  'De 27 a 30 semanas ele pode pesar 1 kg e medir cerca de 32 cm. '
                  'Já percebe a luz fora do útero, abre e fecha os olhos. Escuta e '
                  'identifica vários sons, como vozes e músicas, e pode se '
                  'assustar com barulhos altos e repentinos. O espaço dentro do '
                  'útero vai ficar cada vez mais justo. Com 32 semanas já pesa '
                  '2 kg. Sua pele fica coberta por um tipo de creme branco, o '
                  'vérnix, que traz proteção e o ajudará a se deslizar pelo canal '
                  'do parto. É preciso ter paciência para esperar o tempo certo de '
                  'nascer.',
                  style: TextStyle(
                    fontFamily: 'Adobe Hebrew',
                    fontSize: 15,
                    color: Color(0xd9000000),
                  ),
                  textAlign: TextAlign.justify,
                ),
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
      ),
    );
  }
}
