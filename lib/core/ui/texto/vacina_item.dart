import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';

class VacinacaoItem extends StatelessWidget {
  const VacinacaoItem({
    required this.nomevacina,
    required this.dose,
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
        if (nomevacina.isNotEmpty) ...[
          Text(
            ano,
            style: TextStyle(
              fontSize: width * .090,
              fontFamily: 'Adobe Arabic',
              fontWeight: FontWeight.bold,
              color: getTitleColor(type),
            ),
          ),
        ],
        InkWell(
          onTap: () {},
          splashFactory: NoSplash.splashFactory,
          highlightColor: getBackground(type),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
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
            ],
          ),
        ),
      ],
    );
  }
}
