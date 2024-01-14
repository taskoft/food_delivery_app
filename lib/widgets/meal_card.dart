import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/card_detail_page.dart';

class MealCart extends StatelessWidget {
  const MealCart({super.key, required this.mealName, required this.mealPrice});
  final String mealName;
  final int mealPrice;
  final int id = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: 200,
        width: 180,
        child: Stack(
          children: [
            Positioned(
              top: 60,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: 180,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    SizedBox(
                      height: 90,
                      width: 165,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CardDetailPage(
                                      id: id,
                                    )),
                          );
                        },
                        child: Text(
                          mealName,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 28,
                          ),
                          maxLines: 2,
                        ),
                      ),
                    ),
                    Text(
                      "€ $mealPrice",
                      maxLines: 1,
                      style: const TextStyle(
                          fontSize: 25, color: Color.fromRGBO(255, 75, 58, 10)),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: 1,
                left: 10,
                right: 10,
                child: Image.asset(
                  "assets/test_meal_image.png",
                  fit: BoxFit.contain,
                  height: 190,
                  width: 130,
                )
                //SVG EKRANA GORUNTUSU GELMIYOR SVG NIN
                //SvgPicture.asset("assets/test_svg.svg",alignment:Alignment.center  ,fit: BoxFit.contain,),

                // Image.asset("assets/test_image.png",fit: BoxFit.contain,height: 130,width: 80,)
                /* IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CardDetailPage(
                              id: id,
                            )),
                  );
                },
                icon: const Icon(
                  Icons.healing_rounded,
                  size: 130,
                ),
              ),*/
                ),
          ],
        ),
      ),
    );
  }
}
