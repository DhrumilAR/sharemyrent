import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sharemyrent/Intropages/appIntroPage1.dart';
import 'package:sharemyrent/userpages/HomePage/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    
    Timer(const Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const AppIntroPage1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "assets/applogo.png",
            height: 500,
            width: 500,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
