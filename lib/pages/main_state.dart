import 'package:flutter/material.dart';

import 'home_page.dart';

class MainState extends StatefulWidget {
  const MainState({super.key});

  @override
  State<MainState> createState() => _MainStateState();
}

class _MainStateState extends State<MainState> {
  int currentIndex = 0;
  String appBarTitle = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 248, 10),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            actions: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 25, 0),
                  child: Icon(
                    currentIndex == 0
                        ? Icons.shopping_cart_checkout_outlined
                        : Icons.question_mark,
                    color: Colors.black54,
                  ))
            ],
            leading: const Icon(Icons.list_outlined),
            elevation: 0,
            centerTitle: true,
            title: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  appBarTitle,
                  style: const TextStyle(fontSize: 33),
                )),
            backgroundColor: const Color(0x00ffffff),
            // centerTitle: true,
          )),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (newIndex) {
            debugPrint("ONTAP");
            currentIndex = newIndex;
            if (currentIndex == 0) {
              appBarTitle = "Home";
            } else if (currentIndex == 1) {
              appBarTitle = "Favorites";
            } else if (currentIndex == 2) {
              appBarTitle = "Profile";
            } else if (currentIndex == 3) {
              appBarTitle = "History";
            }
            setState(() {});
          },
          currentIndex: currentIndex,
          elevation: 0,
          backgroundColor: const Color(0x00ffffff),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: const Color.fromARGB(255, 3, 3, 3),
          selectedItemColor: const Color.fromRGBO(250, 74, 12, 40),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
                backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.man_2_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.history_edu_outlined), label: "")
          ]),
      body: IndexedStack(
        index: currentIndex,
        children: const [
          HomePage(),
          Text("FAVORITES PAGE"),
          Text("PROFILE PAGE"),
          Text("HISTORY PAGE")
        ],
      ),
    );
  }
}
