import 'package:flutter/material.dart';
import 'package:food_delivery_app/locator.dart';
import 'package:get_storage/get_storage.dart';

import 'pages/opening_page.dart';

void main() async {
  setupLocator();
  await GetStorage.init();
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
