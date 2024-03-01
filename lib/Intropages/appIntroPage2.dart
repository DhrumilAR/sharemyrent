import 'package:flutter/material.dart';
import 'package:sharemyrent/startScreen.dart';

class AppIntroPage2 extends StatefulWidget {
  const AppIntroPage2({super.key});

  @override
  State<AppIntroPage2> createState() => _AppIntroPage2State();
}

class _AppIntroPage2State extends State<AppIntroPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/appIntro2.jpg",
              width: 450,
              height: 400,
            ),
            const Text(
              "ShareMyRent simplifies the process of finding a compatible roommate for tenants looking to share rent expenses. Through profile creation and preference settings, users can quickly identify suitable matches based on location, budget, and lifestyle compatibility. With features for messaging, ShareMyRent ensures transparent communication and facilitates a seamless transition into shared living.",
              style: TextStyle(
                  color: Colors.black87,
                  fontFamily: "openSans",
                  fontStyle: FontStyle.normal,
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  height: 1.7
              ),
              textAlign: TextAlign.justify,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const StartScreen()));
                },
                child: Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green.withOpacity(0.3),
                      border: Border.all(
                          color: Colors.green,
                          width: 1.5
                      )
                  ),
                  child: const Icon(
                    Icons.navigate_next,
                    color: Colors.green,
                    size: 40,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
