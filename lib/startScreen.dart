import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:sharemyrent/loginandsignup/loginpage.dart';
import 'package:sharemyrent/loginandsignup/signuppage.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    super.initState();
  }

  void initTimer() async {
    if (await checkInternet()) {
      Timer(const Duration(seconds: 2), () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SignUpPage()));
      });
    }
  }

  Future<bool> checkInternet() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.ethernet) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // this snippet is for some time only until the database is connected
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: const BoxDecoration(
            color: Colors.white
          ),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/applogo.png",
                height: 500,
                width: 500,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInPage()));
                        });
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width/2.5,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(bottom: 50),
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Colors.black
                            ),
                            right: BorderSide(
                                color: Colors.black
                            ),
                            left: BorderSide(
                                color: Colors.black
                            ),
                            bottom: BorderSide(
                                color: Colors.black
                            )
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                    ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage()));
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width/2.5,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(bottom: 50),
                    decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              color: Colors.black
                          ),
                          right: BorderSide(
                              color: Colors.black
                          ),
                          left: BorderSide(
                              color: Colors.black
                          ),
                          bottom: BorderSide(
                              color: Colors.black
                          )
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.black
                    ),
                    child: const Text(
                      "SignUp",
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.normal
                        ),
                      )
                    ),
                )
                ],
                        ),
              ),
            ],
          ),
      )
    );
  }
}


/*GestureDetector(
        onTap: () {
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage()));
          });
        },
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            color: Colors.white,
            child: const Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontStyle: FontStyle.normal
              ),

            )
        ),
      ),
    );
  }
}*/
