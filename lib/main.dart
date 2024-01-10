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
      ),
      home: const OpeningPage(),
    );
  }
}
