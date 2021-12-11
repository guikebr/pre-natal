import 'package:flutter/material.dart';

class ImageDescription extends StatelessWidget {
  const ImageDescription(
    this.image,
    this.description, {
    this.directionRight = true,
    Key? key,
  }) : super(key: key);

  final String description;
  final String image;
  final bool directionRight;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        if (!directionRight) ...[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                description,
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: width * .040,
                  color: const Color(0xd9000000),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 100,
            height: 90,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.contain,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(1),
                  BlendMode.dstIn,
                ),
              ),
            ),
          ),
        ),
        if (directionRight) ...[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                description,
                style: TextStyle(
                  fontFamily: 'Adobe Hebrew',
                  fontSize: width * .040,
                  color: const Color(0xd9000000),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ],
    );
  }
}
