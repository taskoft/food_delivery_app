import 'package:flutter/material.dart';

class CardDetailPage extends StatefulWidget {
  const CardDetailPage({super.key, required this.id});
  final int id;
  @override
  State<CardDetailPage> createState() => _CardDetailPageState();
}

class _CardDetailPageState extends State<CardDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.favorite_border_outlined))
      ]),
      body: Column(children: [
        ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            Icon(Icons.rounded_corner_rounded),
            Icon(Icons.favorite),
            Icon(Icons.abc),
          ],
        )
      ]),
    );
  }
}
