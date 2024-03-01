import 'package:flutter/material.dart';
import 'package:sharemyrent/Intropages/appIntroPage2.dart';

class AppIntroPage1 extends StatefulWidget {
  const AppIntroPage1({super.key});

  @override
  State<AppIntroPage1> createState() => _AppIntroPage1State();
}

class _AppIntroPage1State extends State<AppIntroPage1> {
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
              "assets/appIntroPage1.png",
              width: 450,
              height: 450,
            ),
            const Text(
              "Renting a home, whether independently or with existing tenants, involves careful consideration of factors like location and budget. ShareMyRent streamlines the process by managing payments and facilitating transparent communication among all parties involved. Whether sharing expenses or renting solo, efficient management is crucial for a harmonious living experience.",
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AppIntroPage2()));
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
