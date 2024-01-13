import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/bottom_text_button.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.calendar_month,
              size: 150,
              color: Colors.black12,
            ),
            const Text(
              "No history yet",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Hit the orange button down below to Create an order",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: Colors.black54),
              ),
            ),
            MyBottomTextButton(text: "Start ordering", onPressed: () {})
          ]),
    );
  }
}
