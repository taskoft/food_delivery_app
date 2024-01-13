import 'package:flutter/material.dart';

class MealDissmissibleCard extends StatelessWidget {
  const MealDissmissibleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/test_meal_image.png",
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
            const SizedBox(
                width: 200,
                height: 120,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      child: Text(
                        "Vegetabe something",
                        maxLines: 1,
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      child: Text(
                        "€3400",
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(255, 75, 58, 50)),
                      ),
                    ),
                    //Positioned(              child: ButtonBar()            ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
