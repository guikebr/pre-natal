import 'package:adobe_xd/page_link.dart';
import 'package:flutter/material.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';

class ButtonHome extends StatelessWidget {
  const ButtonHome({
    required this.title,
    required this.page,
    this.onTap,
    this.type = TypeHeader.man,
    Key? key,
  }) : super(key: key);

  final String title;
  final Widget page;
  final TypeHeader type;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: AbsorbPointer(
        absorbing: onTap != null,
        child: PageLink(
          links: [
            PageLinkInfo(
              transition: LinkTransition.Fade,
              ease: Curves.easeOut,
              duration: 0.3,
              pageBuilder: () => page,
            ),
          ],
          child: Container(
            alignment: Alignment.centerLeft,
            width: width * .6,
            decoration: BoxDecoration(
              color: getBackground(type),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 8,
                bottom: 8,
                right: 32,
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: width * .04,
                  color: const Color(0xffffffff),
                  fontFamily: 'Adobe Hebrew',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
