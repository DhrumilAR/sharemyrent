import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sharemyrent/bottomnavigation/bottomnavigation.dart';
import 'package:sharemyrent/userpages/HomePage/homepage.dart';
import 'package:sharemyrent/loginandsignup/loginpage.dart';
import 'package:sharemyrent/userpages/rolepage/role.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isSecurePassword = true;
  bool isSecureConfirmPassword = true;

  Widget togglePassword() {
    return IconButton(
        onPressed: () {
          setState(() {
            isSecurePassword = !isSecurePassword;
          });
        },
        icon: isSecurePassword
            ? Icon(Icons.visibility_rounded,
                color: Colors.black.withOpacity(0.75))
            : const Icon(
                Icons.visibility_off_rounded,
                color: Colors.grey,
              ));
  }

  Widget togglePassword1() {
    return IconButton(
        onPressed: () {
          setState(() {
            isSecureConfirmPassword = !isSecureConfirmPassword;
          });
        },
        icon: isSecureConfirmPassword
            ? Icon(Icons.visibility_rounded,
                color: Colors.black.withOpacity(0.75))
            : const Icon(
                Icons.visibility_off_rounded,
                color: Colors.grey,
              ));
  }

  final key = GlobalKey<FormState>();
  final scrollController = ScrollController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController contactcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();


  void gotofield(TextEditingController controller) {
    final scrollOffset = scrollController.position.maxScrollExtent + 100;
    scrollController.animateTo(scrollOffset,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  void SignIn() {
    const Text("Welcome!");
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: key,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 140),
              padding: const EdgeInsets.only(left: 30, right: 30),
              color: Colors.white,
              child: Column(
                children: [
                  const Text(
                    "Get On Board",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "openSans",
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontStyle: FontStyle.normal),
                  ),
                  const Text(
                    "Renting Reimagined",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        fontFamily: "openSans",
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 40)),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline_rounded,
                            color: Colors.black,
                          ),
                          hintText: "Enter Your Full Name",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 15, bottom: 15),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black87),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black87),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                      controller: namecontroller,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Your Name is required";
                        }
                        String pattern = r'^[a-zA-Z\s]{1,40}$';
                        RegExp regexp = RegExp(pattern);
                        if (!regexp.hasMatch(value)) {
                          return "Enter a valid Name";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)), //FullName
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.black,
                          ),
                          hintText: "Enter Your E-Mail",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 15, bottom: 15),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black87),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black87),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                      controller: emailcontroller,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Your Email";
                        } else if (!EmailValidator.validate(value)) {
                          return "Enter a valid email address";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ), //EMail
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.phone_enabled_rounded,
                            color: Colors.black,
                          ),
                          hintText: "Enter Your Contact No.",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 15, bottom: 15),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black87),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black87),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                      obscureText: false,
                      controller: contactcontroller,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Mobile Number is required";
                        }
                        String pattern = r'^[0-9]{10}$';
                        RegExp regexp = RegExp(pattern);
                        if (!regexp.hasMatch(value)) {
                          return "Enter a valid Mobile Number";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ), //PhoneNumber
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.password_rounded,
                            color: Colors.black,
                          ),
                          hintText: "Set Your Password",
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.only(top: 15, bottom: 15),
                          suffixIcon: togglePassword(),
                          focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black87),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black87),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                      obscureText: isSecurePassword,
                      controller: passwordcontroller,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter the Password";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ), //Password
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.password_rounded,
                            color: Colors.black,
                          ),
                          hintText: "Confirm your Password",
                          contentPadding:
                              const EdgeInsets.only(top: 15, bottom: 15),
                          suffixIcon: togglePassword1(),
                          border: InputBorder.none,
                          focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black87),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black87),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                      obscureText: isSecureConfirmPassword,
                      controller: confirmpasswordcontroller,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Your Password to Confirm it";
                        } else if (value != passwordcontroller.text) {
                          return "Password does not match!";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ), //ConfirmPassword
                  GestureDetector(
                    onTap: () async{
                      if (key.currentState!.validate()) {
                        try {
                          final credentials = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                              email: emailcontroller.text.trim(),
                              password: passwordcontroller.text.trim()
                          );
                          FirebaseFirestore.instance.collection("User").add(
                              {
                                'Full Name' : namecontroller.text.trim(),
                                'E-Mail' : emailcontroller.text.trim(),
                                'Phone Number' : contactcontroller.text.trim(),
                                'Password' : passwordcontroller.text.trim()
                              }
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BottomNavigation(),
                            ),
                          );
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            print('The password provided is too weak.');
                          } else if (e.code == 'email-already-in-use') {
                            print('The account already exists for that email.');
                          }
                        } catch (e) {
                          print(e);
                        }
                      }
                      setState(() {}
                      );
                    },
                    child: GestureDetector(
                      onTap: () {
                        if(
                          namecontroller.text.isNotEmpty &&
                          emailcontroller.text.isNotEmpty &&
                          passwordcontroller.text.isNotEmpty &&
                          contactcontroller.text.isNotEmpty &&
                          confirmpasswordcontroller.text.isNotEmpty
                        ){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Role()));
                        } else {
                          print("Please fill up the given fields") ;
                        }
                      },
                      child: Container(
                        height: 50,
                        width: 320,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 40),
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(15))),
                        child: const Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            )
                        ),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 25)),
                  const Text(
                    "OR",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        fontStyle: FontStyle.normal
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 320,
                    margin: const EdgeInsets.only(top: 20, bottom: 20),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border(
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                            bottom: BorderSide(color: Colors.black)
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/googlesymbol.png",
                          height: 20,
                        ),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        const Text(
                          "SignIn with Google",
                          style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an Account?",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            color: Colors.black,
                            fontStyle: FontStyle.normal),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LogInPage()));
                          });
                        },
                        child: const Text(
                          "LogIn",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Colors.blue,
                              fontStyle: FontStyle.normal),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
