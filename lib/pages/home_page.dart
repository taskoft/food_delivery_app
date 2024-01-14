import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/meals_page.dart';
import 'package:food_delivery_app/widgets/meal_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0),
        color: const Color.fromRGBO(245, 245, 248, 10),
      ),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: const Duration(milliseconds: 250),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          isDrawerOpen
              ? IconButton(
                  icon: const Icon(
                    Icons.arrow_back_sharp,
                    size: 40,
                  ),
                  onPressed: () {
                    setState(
                      () {
                        xOffset = 0;
                        yOffset = 0;
                        scaleFactor = 1;
                        isDrawerOpen = false;
                      },
                    );
                  })
              : IconButton(
                  onPressed: () {
                    setState(() {
                      xOffset = 230;
                      yOffset = 150;
                      scaleFactor = 0.6;
                      isDrawerOpen = true;
                    });
                  },
                  icon: const Icon(Icons.list),
                ),
          const Padding(
            padding: EdgeInsets.only(left: 45),
            child: Text(
              "Delicious \nfood for you",
              style: TextStyle(
                  fontSize: 44,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
            child: TextField(
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
          ),
          Container(
            padding: const EdgeInsets.only(left: 35),
            height: 100,
            width: 380,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TextButton(
                  onPressed: () {
                    currentIndex = 0;
                    setState(() {});
                  },
                  child: Text(
                    'Foods',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w100,
                        color: currentIndex == 0
                            ? const Color.fromRGBO(255, 75, 58, 10)
                            : Colors.black45),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    currentIndex = 1;
                    setState(() {});
                  },
                  child: Text(
                    'Vegan',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w100,
                        color: currentIndex == 1
                            ? const Color.fromRGBO(255, 75, 58, 10)
                            : Colors.black45),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    currentIndex = 2;
                    setState(() {});
                  },
                  child: Text(
                    'Drink',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w100,
                        color: currentIndex == 2
                            ? const Color.fromRGBO(255, 75, 58, 10)
                            : Colors.black45),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    currentIndex = 3;
                    setState(() {});
                  },
                  child: Text(
                    'Snack',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w100,
                        color: currentIndex == 3
                            ? const Color.fromRGBO(255, 75, 58, 10)
                            : Colors.black45),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    currentIndex = 4;
                    setState(() {});
                  },
                  child: Text(
                    'Sauce',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w100,
                        color: currentIndex == 4
                            ? const Color.fromRGBO(255, 75, 58, 10)
                            : Colors.black45),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 280),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MealsPage()));
                },
                child: const Text("See More")),
          ),
          IndexedStack(
            index: currentIndex,
            children: [
              SizedBox(
                height: 310,
                width: 400,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MealCart(mealName: "Tavuk Dönerto", mealPrice: 5100),
                    MealCart(mealName: "Milkshake", mealPrice: 1200),
                    MealCart(mealName: "Adana", mealPrice: 100),
                    MealCart(mealName: "Caz", mealPrice: 5200),
                  ],
                ),
              ),
              SizedBox(
                height: 310,
                width: 400,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MealCart(mealName: "Vegan Something", mealPrice: 5100),
                    MealCart(
                        mealName: "Burger without burger", mealPrice: 1200),
                  ],
                ),
              ),
              const Text("SOMETHING1"),
              const Text("SOMETHING2"),
              const Text("SOMETHING3"),
            ],
          )
        ],
      ),
    );
  }
}
