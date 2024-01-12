import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/bottom_text_button.dart';

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
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(left: 65),
          child: Image.asset(
            "assets/test_meal_image.png",
            width: 290,
            height: 290,
            fit: BoxFit.contain,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 120),
          child: Text(
            "Vegie tomato mix",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 34,
            ),
            maxLines: 2,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 175),
          child: Text(
            "€ 3213",
            textAlign: TextAlign.center,
            maxLines: 1,
            style:
                TextStyle(fontSize: 30, color: Color.fromRGBO(255, 75, 58, 10)),
          ),
        ),
        SizedBox(
          height: 300,
          child: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(40, 15, 0, 0),
                child: Text(
                  "Delivery Info",
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
                child: Text(
                  "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 22, color: Colors.black45),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                child: Text(
                  "Return Policy",
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
                child: Text(
                  "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 22, color: Colors.black45),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: MyBottomTextButton(text: "Add to cart", onPressed: (){}),
        )
      ]),
    );
  }
}
