import 'package:flutter/material.dart';

class MyBottomTextButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const MyBottomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size.fromWidth(320)),
          backgroundColor: MaterialStateProperty.all(
              const Color.fromRGBO(255, 75, 58, 25))),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontFamily: 'Dance', fontSize: 29,fontWeight: FontWeight.bold),
      ),
    );
  }
}
