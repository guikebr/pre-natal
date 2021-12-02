import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';

class VacinacaoItem extends StatelessWidget {
  const VacinacaoItem({
    this.nomevacina = '',
    this.dose = '',
    this.ano = '',
    this.informacao = '',
    this.type = TypeHeader.child,
    Key? key,
  }) : super(key: key);

  final String ano;
  final String nomevacina;
  final String dose;
  final String informacao;
  final TypeHeader type;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (ano.isNotEmpty) ...[
          Text(
            ano.toUpperCase(),
            style: TextStyle(
              fontSize: width * .080,
              fontFamily: 'Adobe Arabic',
              fontWeight: FontWeight.bold,
              color: getTitleColor(type),
            ),
          ),
        ],
        if (nomevacina.isNotEmpty) ...[
          InkWell(
            onTap: informacao.isNotEmpty
                ? () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        titleTextStyle: TextStyle(
                          fontFamily: 'Adobe Hebrew',
                          fontSize: width * .05,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          color: const Color(0xd9000000),
                        ),
                        title: const Text(
                          'DOENÇAS PREVENIDAS',
                          textAlign: TextAlign.center,
                        ),
                        contentTextStyle: TextStyle(
                          fontFamily: 'Adobe Hebrew',
                          fontSize: width * .05,
                          color: const Color(0xd9000000),
                        ),
                        content: Text(informacao),
                        actions: <Widget>[
                          TextButton(
                            child: Text(
                              'Fechar',
                              style: TextStyle(
                                fontFamily: 'Adobe Hebrew',
                                fontSize: width * .04,
                                color: const Color(0xff7BBEB9),
                              ),
                            ),
                            onPressed: Navigator.of(context).pop,
                          ),
                        ],
                      ),
                    );
                  }
                : null,
            splashFactory: NoSplash.splashFactory,
            highlightColor: getBackground(type),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    nomevacina,
                    style: TextStyle(
                      fontSize: width * .070,
                      fontFamily: 'Adobe Arabic',
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Divider(color: getBackground(type)),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        dose,
                        style: TextStyle(
                          fontSize: width * .070,
                          fontFamily: 'Adobe Arabic',
                        ),
                      ),
                      Icon(
                        Icons.info_outlined,
                        size: 18,
                        color: getTitleColor(TypeHeader.child),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ],
    );
  }
}
