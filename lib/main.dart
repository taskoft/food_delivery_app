import 'package:flutter/material.dart';
import 'package:food_delivery_app/locator.dart';

import 'pages/opening_page.dart';

void main() {
  setupLocator();
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
