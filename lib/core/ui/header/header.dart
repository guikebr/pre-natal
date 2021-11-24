import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    required this.title,
    required this.secondary,
    this.color = const Color(0xff4842a8),
    Key? key,
  }) : super(key: key);

  final Widget title;
  final Color color;
  final Widget secondary;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Column(
        children: [
          Row(
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Expanded(child: title),
              Container(
                width: width / 2.9,
                height: height / 3.25,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Expanded(child: secondary)],
                  ),
                ),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(width * .8),
                    bottomLeft: Radius.circular(width * .8),
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
