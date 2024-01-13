import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/bottom_text_button.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  String deliveryMethod = "Door Delivery";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 248, 10),
      appBar: AppBar(backgroundColor: Colors.transparent,
        title: const Text("Checkout"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Delivery",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 45),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  const Text(
                    "Address details",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "change",
                        style: TextStyle(color: Colors.amber,fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              width: 310,
              height: 210,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: ListView(
                  children: const [
                    Text("Marvis Kparobo", style: TextStyle(fontSize: 24)),
                    Divider(),
                    Text(
                        "Km 5 refinery road oppsite republic road, effurun, delta state",
                        style: TextStyle(fontSize: 20, color: Colors.black87)),
                    Divider(),
                    Text("+243 891338857",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                "Delivery method.",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              width: 310,
              height: 160,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                  Row(
                    children: [
                      Radio(
                          value: "Door delivery",
                          groupValue: deliveryMethod,
                          onChanged: (value) {
                            setState(() {
                              deliveryMethod = value!;
                            });
                          }),
                      const Text(
                        "Door delivery",
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                  const Divider(
                    indent: 15,
                    endIndent: 15,
                  ),
                  Row(
                    children: [
                      Radio(
                          value: "Pick up",
                          groupValue: deliveryMethod,
                          onChanged: (value) {
                            setState(() {
                              deliveryMethod = value!;
                            });
                          }),
                      const Text(
                        "Pick up",
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(children: [
                Text(
                  "Total",
                  style: TextStyle(fontSize: 30),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 170),
                  child: Text("€3100,00",style: TextStyle(fontSize: 30),textAlign: TextAlign.end,),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: MyBottomTextButton(text: "Proceed to payment", onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
