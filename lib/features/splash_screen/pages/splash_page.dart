import 'package:flutter/material.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import '../../../core/ui/header/header.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1)).then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
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
          const Header(title: 'PRÉ-NATAL DO', secondary: 'HOMEM'),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: width * .95,
              height: height * .77,
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
