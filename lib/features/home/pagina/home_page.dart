import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import '../../homem/page/saude_homem.dart';
import 'package:adobe_xd/page_link.dart';

import '../../crianca/pagina/saude_crianca.dart';
import '../../gestante/pagina/saude_gestante.dart';
import '../../configuracoes/pagina/configuracoes.dart';
import 'widget/button_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color colorTap = Colors.transparent;

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
            Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTapUp: (_) => setState(
                      () => colorTap = Colors.transparent,
                    ),
                    onTapDown: (_) => setState(
                      () => colorTap = const Color(0xff4842a8).withOpacity(.2),
                    ),
                    onTapCancel: () => setState(
                      () => colorTap = Colors.transparent,
                    ),
                    child: PageLink(
                      links: [
                        PageLinkInfo(
                          transition: LinkTransition.Fade,
                          ease: Curves.easeOut,
                          duration: 0.3,
                          pageBuilder: () => const Configuracoes(),
                        ),
                      ],
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40.0, left: 16),
                        child: Container(
                          color: colorTap,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                width: 32,
                                height: 4,
                                margin: const EdgeInsets.symmetric(vertical: 2),
                                decoration: BoxDecoration(
                                  color: const Color(0xff4842a8),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              Container(
                                width: 32,
                                height: 4,
                                margin: const EdgeInsets.symmetric(vertical: 2),
                                decoration: BoxDecoration(
                                  color: const Color(0xff4842a8),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              Container(
                                width: 32,
                                height: 4,
                                margin: const EdgeInsets.symmetric(vertical: 2),
                                decoration: BoxDecoration(
                                  color: const Color(0xff4842a8),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Header(
                  title: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      'PRÉ-NATAL DO',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontFamily: 'Adobe Arabic',
                        fontSize: width * .075,
                        color: const Color(0xff4842a8),
                      ),
                    ),
                  ),
                  secondary: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'HOMEM',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: width * .1,
                        fontFamily: 'Adobe Arabic',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: width,
                    height: height / 1.27,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ButtonHome(
                        title: 'SAÚDE DO HOMEM',
                        page: SaudeHomem(),
                      ),
                      const ButtonHome(
                        title: 'SAÚDE DA CRIANÇA',
                        page: SaudeCrianca(),
                      ),
                      const ButtonHome(
                        title: 'SAÚDE DA GESTANTE',
                        page: SaudeGestante(),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
