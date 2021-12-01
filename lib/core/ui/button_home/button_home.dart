import 'package:adobe_xd/page_link.dart';
import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';

class ButtonCircularHome extends StatelessWidget {
  const ButtonCircularHome({
    required this.text,
    this.page,
    this.initialHome = false,
    this.type = TypeHeader.man,
    Key? key,
  }) : super(key: key);

  final Widget? page;
  final String text;
  final bool initialHome;
  final TypeHeader type;

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
        height: height * .04,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: getBackground(type),
          borderRadius: BorderRadius.circular(width * .8),
        ),
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
    );
  }
}
