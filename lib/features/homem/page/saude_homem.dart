import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/calendarios/pagina/calendario_vacina_adulto.dart';
import 'package:pre_natal/features/home/pagina/widget/button_home.dart';
import 'package:pre_natal/features/homem/page/conceito_pre_natal.dart';
import 'package:pre_natal/features/homem/page/metodo_preventivo.dart';
import 'agenda_pre_natal.dart';
import 'exame_pre_natal.dart';
import 'higiene_penis.dart';
import 'cancer.dart';
import 'infeccoes_sexuais.dart';
import 'licenca_paternidade.dart';
import 'fotos_gestao.dart';

class SaudeHomem extends StatelessWidget {
  const SaudeHomem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.topRight,
            child: Header(title: 'SAÚDE DO', secondary: 'HOMEM'),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    ButtonHome(
                      title: 'PRÉ-NATAL CONCEITO',
                      page: ConceitoPreNatal(),
                    ),
                    ButtonHome(
                      title: 'AGENDA PRÉ-NATAL',
                      page: AgendaPreNatal(),
                    ),
                    ButtonHome(
                      title: 'EXAMES NO PRÉ-NATAL',
                      page: ExamePreNatal(),
                    ),
                    ButtonHome(
                      title: 'CALENDÁRIO VACINAL',
                      page: CalendarioVacinaAdulto(),
                    ),
                    ButtonHome(
                      title: 'HIGIENIZAÇÃO DO PÊNIS',
                      page: HigienePenis(),
                    ),
                    ButtonHome(title: 'PROSTATA', page: Cancer()),
                    ButtonHome(
                      title: 'MÉTODO PREVENTIVO',
                      page: MetodoPreventivo(),
                    ),
                    ButtonHome(
                      title: 'INFECÇOES SEXUAIS',
                      page: InfeccoesSexuais(),
                    ),
                    ButtonHome(
                      title: 'LICENÇA PATERNIDADE',
                      page: LicencaPaternidade(),
                    ),
                    ButtonHome(title: 'FOTOGESTAÇÃO', page: FotosGestao()),
                    SizedBox(height: 50)
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
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.0, left: 24.0),
              child: ButtonCircularHome(text: 'INÍCIO'),
            ),
          ),
        ],
      ),
    );
  }
}
