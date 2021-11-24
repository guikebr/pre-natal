import 'package:flutter/material.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import '../../../core/ui/header/header.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>  {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          const Header(
            title: Padding(
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
            secondary: Text(
              'HOMEM',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 44,
                fontFamily: 'Adobe Arabic',
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: width,
              height: height / 1.27,
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
