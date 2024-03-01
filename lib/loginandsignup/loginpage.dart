import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sharemyrent/bottomnavigation/bottomnavigation.dart';
import 'package:sharemyrent/loginandsignup/signuppage.dart';
import 'package:sharemyrent/main.dart';
import 'package:sharemyrent/userpages/listaproperty/listaproperty.dart';
import 'package:sharemyrent/userpages/listaproperty/propertydetails.dart';


class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<LogInPage> {

  bool isSecurePassword = true;//obscure-text for password
  bool isPasswordCorrect = true;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  Widget togglePassword(){
    return IconButton(onPressed: () {
      setState(() {
        isSecurePassword = !isSecurePassword;
      });
    }, icon: isSecurePassword ? Icon(Icons.visibility, color: Colors.black.withOpacity(0.75)) : const Icon(Icons.visibility_off, color: Colors.grey)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 60),
            decoration: const BoxDecoration(
              color: Colors.white
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontFamily: "openSans",
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const Text("House Hunting, Simplified",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "openSans",
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    color: Colors.black
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                SizedBox(
                  height: 50,
                  width: 320,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_rounded,
                        color: Colors.black,
                      ),
                      hintText: "Enter Your E-Mail",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    textAlignVertical: TextAlignVertical.bottom,
                    controller: emailcontroller,
                    validator: (value) {
                      if(value == null || value.isEmpty){
                        return "Enter Email";
                      }else if(!EmailValidator.validate(value)){
                        return "Enter a valid E-Mail address";
                      }else{
                        return null;
                      }
                    },
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                SizedBox(
                  height: 50,
                  width: 320,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password_rounded,
                        color: Colors.black,
                      ),
                      suffixIcon: togglePassword(),
                      hintText: "Enter Your Password",
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black87,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    ),
                    textAlignVertical: TextAlignVertical.bottom,
                    controller: passwordcontroller,
                    obscureText: isSecurePassword,
                    validator: (value) {
                      if(value == null || value.isEmpty){
                        return "Enter your password";
                      }else{
                        return null;
                      }
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  height: 100,
                  width: 400,
                  padding: const EdgeInsets.only(left: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.blue,
                          fontStyle: FontStyle.normal,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () async{
                          try{
                            UserCredential result = await FirebaseAuth.instance.signInWithEmailAndPassword(
                                email: emailcontroller.text.trim(),
                                password: passwordcontroller.text.trim()
                            );
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ListAProperty()));
                            hiveBox.put("emailId", emailcontroller.text.trim());
                          }
                          catch(e){
                            print("Either email or password is incorrect");
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 320,
                          height: 50,
                          margin: const EdgeInsets.only(top: 15),
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          child: const Text(
                            "LogIn",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              fontStyle: FontStyle.normal
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Text(
                  "OR",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 50,
                  width: 320,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.black),
                      bottom: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black)
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/googlesymbol.png",
                        width: 15,
                        height: 15,
                      ),
                      const Padding(padding: EdgeInsets.only(left: 10)),
                      const Text(
                        "Sign-In with Google",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          fontStyle: FontStyle.normal
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an Account?",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignUpPage()));
                        });
                      },
                      child: const Text("SignUp",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
