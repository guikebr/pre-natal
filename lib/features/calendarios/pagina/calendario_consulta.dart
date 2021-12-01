import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:pre_natal/features/homem/page/saude_homem.dart';

class CalendarioConsulta extends StatelessWidget {
  const CalendarioConsulta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        children: [
          const Header(
            title: 'CALENDÁRIO',
            secondary: 'CONSULTA',
            type: TypeHeader.child,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: width,
                      height: height * .2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage(
                            'assets/images/calendario_consulta.png',
                          ),
                          fit: BoxFit.fill,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(1),
                            BlendMode.dstIn,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 24.0),
                      child: Text(
                        'Legenda:\n\n'
                        ' M/E= 1ª consulta médica até 10º dia de vida e 2º '
                        'consulta enfermagem no 30ª dia;'
                        '\nM= consulta médica; '
                        '\nE=consulta com enfermagem;'
                        '\n\nA equipe deverá acolher a criança sempre que '
                        'apresentar intercorrência e necessitar de atendimento '
                        'independentemente do calendário previsto de puericultura '
                        'e vacinação.',
                        style: TextStyle(
                          fontFamily: 'Adobe Hebrew',
                          fontSize: 15,
                          color: Color(0xd9000000),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
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
    );
  }
}
