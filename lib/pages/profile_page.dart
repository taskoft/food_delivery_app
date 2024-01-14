import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/bottom_text_button.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String paymentMethod = "Card";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 248, 10),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            const Text(
              "My profile",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                const Text("Personal details",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.normal)),
                Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text("change",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.amber,
                              fontWeight: FontWeight.normal))),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              height: 150,
              width: 310,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/908.jpg",
                        height: 70,
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          height: 130,
                          width: 180,
                          child: ListView(
                            children: const [
                              Text("Marvis Ighedosa",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                              Divider(),
                              Text("Dosamarvis@gmail.com",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w100)),
                              Divider(),
                              Text("+234 9011039271",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w100)),
                              Divider(),
                              Text(
                                  "No 15 uti street off ovie palace road effurun delta state",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w100)),
                            ],
                          ),
                        ),
                      )
                    ]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("Payment method",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.normal)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)),
                width: 310,
                height: 220,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [
                    Row(
                      children: [
                        Radio(
                            value: "Cart",
                            groupValue: paymentMethod,
                            onChanged: (value) {
                              setState(() {
                                paymentMethod = value!;
                              });
                            }),
                        const Icon(Icons.credit_card),
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            "Cart",
                            style: TextStyle(fontSize: 24),
                          ),
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
                            value: "Bank Account",
                            groupValue: paymentMethod,
                            onChanged: (value) {
                              setState(() {
                                paymentMethod = value!;
                              });
                            }),
                        const Icon(Icons.account_balance),
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            "Bank Account",
                            style: TextStyle(fontSize: 24),
                          ),
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
                            value: "Paypal",
                            groupValue: paymentMethod,
                            onChanged: (value) {
                              setState(() {
                                paymentMethod = value!;
                              });
                            }),
                        const Icon(Icons.paypal),
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            "Paypal",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: 310,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Faq",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 26),
                        ),
                      ),
                      const Icon(Icons.arrow_right_outlined)
                    ],
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: 310,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Help",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 26),
                        ),
                      ),
                      const Icon(Icons.arrow_right_outlined)
                    ],
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            MyBottomTextButton(text: "Update", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
