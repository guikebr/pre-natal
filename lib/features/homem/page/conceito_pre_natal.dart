import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:pre_natal/features/homem/page/saude_homem.dart';

class ConceitoPreNatal extends StatelessWidget {
  const ConceitoPreNatal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(title: 'CONCEITO', secondary: 'PRÉ-NATAL'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'O Pré-Natal do Parceiro envolve o homem em todo o processo de'
                ' planejamento reprodutivo, gestação, parto, puerpério e '
                'desenvolvimento da criança, integrando-o nos cuidados com a '
                'saúde, para que divida com a mãe a responsabilidade pelos '
                'cuidados com o filho. Dessa forma, o pai passa a ter também um '
                'acesso melhor para cuidar da própria saúde.',
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: width * .040,
                  color: const Color(0xd9000000),
                ),
                textAlign: TextAlign.justify,
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
