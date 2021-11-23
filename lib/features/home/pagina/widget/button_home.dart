import 'package:adobe_xd/page_link.dart';
import 'package:flutter/material.dart';

class ButtonHome extends StatelessWidget {
  const ButtonHome({
    required this.title,
    required this.page,
    Key? key,
  }) : super(key: key);

  final String title;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return PageLink(
      links: [
        PageLinkInfo(
          transition: LinkTransition.Fade,
          ease: Curves.easeOut,
          duration: 0.3,
          pageBuilder: () => page,
        ),
      ],
      child: Container(
        height: 32,
        alignment: Alignment.centerLeft,
        width: width / 1.8,
        decoration: const BoxDecoration(
          color: Color(0xff4842a8),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            title,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Color(0xffffffff),
              fontFamily: 'Adobe Hebrew',
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
