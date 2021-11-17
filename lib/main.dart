import 'package:flutter/material.dart';
import 'package:pre_natal/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PRÉ-NATAL DO HOMEM',
      theme: ThemeData(),
      home: const SplashPage(),
    );
  }
}
