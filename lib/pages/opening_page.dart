import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/repository/auth/login/login_repository.dart';
import 'login_screen_page.dart';

class OpeningPage extends StatelessWidget {
  const OpeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 75, 58, 30),
      // const Color.fromRGBO(255, 75, 58, 100),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 30, 0, 0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(80)),
              height: 80,
              width: 80,
              child: Image.asset(
                "assets/cheff.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50),
            child: Text(
              "Food for Everyone",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontSize: 75,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
            ),
          ),
          SizedBox(
            height: 400,
            width: 480,
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/boy.png",
                      width: 240,
                      height: 350,
                      fit: BoxFit.contain,
                    )),
                Positioned(
                    top: 0,
                    left: 0,
                    child: Image.asset(
                      "assets/girl.png",
                      width: 240,
                      height: 350,
                      fit: BoxFit.contain,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    fixedSize: MaterialStateProperty.all(const Size(300, 70))),
                onPressed: () {
                  /* Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreenPage()),
                  );*/
                  /* Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreenPage()),
                      (route) => false);*/

                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RepositoryProvider(
                                create: ((context) => LoginRepository()),
                                child: const LoginScreenPage(),
                              )),
                      (route) => false);
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                      fontFamily: 'Dance',
                      fontSize: 30,
                      color: Color.fromRGBO(255, 75, 58, 10)),
                )),
          ),
        ],
      ),
    );
  }
}
