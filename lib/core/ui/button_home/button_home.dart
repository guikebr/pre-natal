import 'package:adobe_xd/page_link.dart';
import 'package:flutter/material.dart';

class ButtonCircularHome extends StatelessWidget {
  const ButtonCircularHome({
    required this.text,
    this.page,
    this.color = const Color(0xff4842a8),
    this.initialHome = false,
    Key? key,
  }) : super(key: key);

  final Widget? page;
  final String text;
  final bool initialHome;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return PageLink(
      links: [
        PageLinkInfo(
          transition: LinkTransition.Fade,
          ease: Curves.easeOut,
          duration: 0.3,
          pageBuilder: page != null ? () => page : null,
        ),
      ],
      child: Container(
        width: width * .2,
        height: height * .028,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(width * .8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: 'Adobe Hebrew',
              fontSize: 12,
              color: Color(0xffffffff),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
