import 'package:flutter/material.dart';
import 'package:pre_natal/features/splash_screen/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PRÉ-NATAL DO HOMEM',
      home: SplashPage(),
    );
  }
}
