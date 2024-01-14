import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/privacy_policy_page.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(250, 74, 12, 80),
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Row(
              children: [
                const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Profile",
                      style: TextStyle(fontSize: 32, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              endIndent: 195,
              indent: 45,
              color: Colors.white,
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.content_paste_go_outlined,
                  color: Colors.white,
                  size: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PrivacyPolicyPage()));
                    },
                    child: const Text(
                      "Privacy policy",
                      style: TextStyle(fontSize: 32, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              endIndent: 195,
              indent: 45,
              color: Colors.white,
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.security,
                  color: Colors.white,
                  size: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Security",
                      style: TextStyle(fontSize: 32, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 350,
            ),
            const Row(children: [
              Text(
                "Log-out",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
              Icon(
                Icons.arrow_right_alt_outlined,
                color: Colors.white,
                size: 40,
              )
            ]),
          ],
        ),
      ),
    );
  }
}
