import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/calendarios/pagina/calendario_vacina_recen_nascido.dart';
import 'package:pre_natal/features/crianca/pagina/aleitamento_materno_conceito.dart';
import 'package:pre_natal/features/crianca/pagina/puericultura.dart';
import 'package:pre_natal/features/home/pagina/widget/button_home.dart';

class SaudeCrianca extends StatelessWidget {
  const SaudeCrianca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: -40,
            right: -40,
            child: Container(
              width: width,
              height: height * .4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/nenem.jpg'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.48),
                    BlendMode.dstIn,
                  ),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Header(
                type: TypeHeader.child,
                title: 'Saúde da',
                secondary: 'criança',
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ButtonHome(
                    title: 'PUERICULTURA',
                    type: TypeHeader.child,
                    page: Puericultura(),
                   ),
                  const ButtonHome(
                    title: 'ALEITAMENTO MATERNO',
                    type: TypeHeader.child,
                    page: AleitamentoMaternoConceito(),
                  ),
                  const ButtonHome(
                    title: 'CALENDÁRIO VACINAL',
                    type: TypeHeader.child,
                    page: CalendarioVacinaRecenNascido(),
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
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0, left: 24.0),
                  child: ButtonCircularHome(
                    text: 'INÍCIO',
                    type: TypeHeader.child,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
