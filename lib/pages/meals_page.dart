import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/meal_card.dart';

class MealsPage extends StatefulWidget {
  const MealsPage({super.key});

  @override
  State<MealsPage> createState() => _MealsPageState();
}

class _MealsPageState extends State<MealsPage> {
  List<Widget> myCardList = [
    const MealCart(
      mealName: "Food 1",
      mealPrice: 3400,
    ),
    const MealCart(
      mealName: "Food 2",
      mealPrice: 3100,
    ),
    const MealCart(
      mealName: "Food 3",
      mealPrice: 2331,
    ),
    const MealCart(
      mealName: "Food 4",
      mealPrice: 1400,
    ),
    const MealCart(
      mealName: "Food 5",
      mealPrice: 1670,
    ),
    const MealCart(
      mealName: "Food 6",
      mealPrice: 3500,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Meals",style: TextStyle(fontSize: 35),),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 20),
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  alignLabelWithHint: false,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(
                height: 600,
                child: GridView.builder(
                    itemCount: myCardList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 310,
                      mainAxisSpacing: 1,
                    ),
                    itemBuilder: (context, count) {
                      return myCardList[count];
                    }),
              ),
            ]),
      ),
    );
  }
}
