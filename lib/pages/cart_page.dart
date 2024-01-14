import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/payment_page.dart';
import 'package:food_delivery_app/widgets/bottom_text_button.dart';
import 'package:food_delivery_app/widgets/meal_dissmissible_card.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Widget> myCardList = [
    const MealDissmissibleCard(),
    const MealDissmissibleCard(),
    const MealDissmissibleCard(),
    const MealDissmissibleCard(),
    const MealDissmissibleCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 20, 30, 10),
          child: SizedBox(
            height: 600,
            child: GridView.builder(
                itemCount: myCardList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent: 110,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, count) {
                  // Key myKey = Key("k$count");
                  return Dismissible(
                      key: UniqueKey(),
                      confirmDismiss: (DismissDirection direction) async {
                        if (direction == DismissDirection.startToEnd) {
                          return await showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("Delete"),
                                  content: const Text(
                                      "Are you sure you want to delete this cart?"),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(true),
                                      child: const Text("Yes"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(false),
                                      child: const Text("No"),
                                    )
                                  ],
                                );
                              });
                        } else {
                          return await showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("Add Favorites"),
                                  content: const Text(
                                      "Are you sure you want to add favorites this cart?"),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(true),
                                      child: const Text("Yes"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(false),
                                      child: const Text("No"),
                                    )
                                  ],
                                );
                              });
                        }
                      },
                      background: Container(
                        alignment: Alignment.centerLeft,
                        color: Colors.red.shade100,
                        child: const Icon(
                          Icons.delete_forever,
                          size: 50,
                          color: Colors.red,
                        ),
                      ),
                      secondaryBackground: Container(
                        alignment: Alignment.centerRight,
                        color: Colors.blueGrey.shade100,
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.blueGrey,
                          size: 50,
                        ),
                      ),
                      onDismissed: (direction) {
                        setState(() {
                          myCardList.removeAt(count);
                        });
                      },
                      child: myCardList[count]);
                }),
          ),
        ),
        MyBottomTextButton(
            text: "Complete order",
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PaymentPage()));
            })
      ],
    );
  }
}



/*
 return SizedBox(width: 300,height: 300,
      child: Column(mainAxisSize: MainAxisSize.max,
        children: [
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1),
              itemBuilder: (context, count) {
                Key myKey = Key("K$count");
                return SizedBox(height: 100,width: 300,
                  child: Dismissible(
                    key: myKey,
                    background: Container(
                      color: Colors.red,
                      child:const Icon(Icons.delete),
                    ),
                    child:const Text("TEST"),
                    // const MealDissmissibleCard(),
                  ),
                );
              })
        ],
      ),
    );
*/ 