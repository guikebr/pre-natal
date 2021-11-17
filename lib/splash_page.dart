import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Column(
              children: [
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Text(
                          'PRÉ-NATAL DO',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontFamily: 'Adobe Arabic',
                            fontSize: 31,
                            color: Color(0xff4842a8),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: width / 2.9,
                      height: height / 3.25,
                      child: const Center(
                        child: Text(
                          'HOMEM',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 44,
                            fontFamily: 'Adobe Arabic',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xff4842a8),
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
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: width,
              height: height / 1.3,
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
        ],
      ),
    );
  }
}
