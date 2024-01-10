import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/main_state.dart';
import 'package:food_delivery_app/widgets/bottom_text_button.dart';

class LoginScreenPage extends StatefulWidget {
  const LoginScreenPage({super.key});

  @override
  State<LoginScreenPage> createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.white),
            alignment: Alignment.bottomCenter,
            child: Column(children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.ac_unit_outlined,
                color: Color.fromRGBO(255, 75, 58, 100),
                size: 180,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        currentIndex = 0;
                        setState(() {});
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )),
                  const SizedBox(
                    width: 50,
                  ),
                  TextButton(
                      onPressed: () {
                        currentIndex = 1;
                        setState(() {});
                      },
                      child: const Text(
                        "Sing-up",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )),
                ],
              )
            ]),
          ),
          IndexedStack(
            index: currentIndex,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Divider(
                            color: Color.fromRGBO(255, 75, 58, 100),
                            endIndent: 180,
                            thickness: 4,
                            indent: 30),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text("Email address",
                            style:
                                TextStyle(fontSize: 20, color: Colors.black45)),
                        const TextField(style: TextStyle(fontSize: 20)),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text("Password",
                            style:
                                TextStyle(fontSize: 20, color: Colors.black45)),
                        const TextField(
                          style: TextStyle(fontSize: 20),
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextButton(
                            style:
                                const ButtonStyle(alignment: Alignment.topLeft),
                            onPressed: () {},
                            child: const Text(
                              "Forgot passcode?",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(255, 75, 58, 100),
                                  fontWeight: FontWeight.w600),
                            )),
                        const SizedBox(
                          height: 160,
                        ),
                        MyBottomTextButton(
                            text: 'Login',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MainState()));
                            }),
                      ]),
                ),
              ),
              const Center(
                child: Text("INDEX 1"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
