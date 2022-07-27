import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';

class Header extends StatelessWidget {
  const Header({
    required this.secondary,
    this.title = '',
    this.hasSpacing = true,
    this.type = TypeHeader.man,
    Key? key,
  }) : super(key: key);

  final String title;
  final String secondary;
  final bool hasSpacing;
  final TypeHeader type;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    final EdgeInsets paddingTitle = hasSpacing
        ? const EdgeInsets.only(
            right: 4,
          )
        : EdgeInsets.zero;

    final EdgeInsets padding = hasSpacing
        ? const EdgeInsets.only(
            left: 4,
          )
        : EdgeInsets.zero;

    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: paddingTitle,
                  child: Text(
                    title.toUpperCase(),
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: width * .070,
                      fontFamily: 'Adobe Arabic',
                      fontWeight: FontWeight.bold,
                      color: getTitleColor(type),
                    ),
                  ),
                ),
              ),
              Container(
                width: 145,
                height: 255,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: getBackground(type),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(width),
                    bottomLeft: Radius.circular(width),
                  ),
                ),
                child: Padding(
                  padding: padding,
                  child: Text(
                    secondary.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'Adobe Arabic',
                      fontSize: width * .065,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
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
