import 'package:flutter/material.dart';

import 'pages/opening_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Dance',
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(255, 75, 58, 100)),
                  textStyle: MaterialStateProperty.all(
                      const TextStyle(color: Colors.white, fontSize: 20))))),
      home: const OpeningPage(),
    );
  }
}
