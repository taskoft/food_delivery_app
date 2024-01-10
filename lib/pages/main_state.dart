import 'package:flutter/material.dart';

class MainState extends StatefulWidget {
  const MainState({super.key});

  @override
  State<MainState> createState() => _MainStateState();
}

class _MainStateState extends State<MainState> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex=0;
    return Scaffold(
      body: IndexedStack(index: _currentIndex,),
    );
  }
}