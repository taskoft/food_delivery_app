import 'package:flutter/material.dart';

class LoginScreenPage extends StatefulWidget {
  const LoginScreenPage({super.key});

  @override
  State<LoginScreenPage> createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          child: const Column(children: [
            Icon(
              Icons.no_meals,
              size: 250,
            ),
            Row(
              children: [Text("Login"), Text("Sing-up")],
            )
          ]),
        ),
        IndexedStack(
          index: currentIndex,
          children: [
            Container(
              child: Column(children: [
                const Text("Email address"),
                const TextField(),
                const Text("Email address"),
                const TextField(),
                TextButton(
                    onPressed: () {}, child: const Text("Forgot passcode?")),
                TextButton(onPressed: () {}, child: const Text("Login")),
              ]),
            ),
          ],
        )
      ],
    );
  }
}
