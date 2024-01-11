import 'package:flutter/material.dart';
import 'login_screen_page.dart';

class OpeningPage extends StatelessWidget {
  const OpeningPage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.grey.shade600,
      // const Color.fromRGBO(255, 75, 58, 100),
      body: Column(
        /*  mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,*/
        children: [
         const SizedBox(
            height: 100,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginScreenPage()));
              },
              child: const Text(
                "Get Started",
                style: TextStyle(
                    fontFamily: 'Dance', fontSize: 30, color: Colors.black87),
              )),
         const SizedBox(
            height: 100,
          ),
         /* SvgPicture.asset(
            "assets/opening_page_girl_image.svg",height: 100,width: 100, fit: BoxFit.contain,,
          ),*/ 
        ],
      ),
    );
  }
}
