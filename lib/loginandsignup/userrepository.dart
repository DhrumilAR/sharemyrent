import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharemyrent/loginandsignup/saveuserdata.dart';

//all the queries regarding user data for firestore such as CRUD will be operated from here

class UserRepository extends GetxController {

  static UserRepository get instance => Get.find() ;

  final db = FirebaseFirestore.instance;

  createUser(UserModel user){
    db.collection("User").add(user.toJSon()).whenComplete(
            () => Get.snackbar("Success", "Your account has been created.",
                  snackPosition:  SnackPosition.BOTTOM,
                  backgroundColor: Colors.blue.withOpacity(0.1),
                  colorText: Colors.blue
            ),
      ).catchError((error, stackTrace) async{
          await Get.snackbar("Error", "Something went wrong try again",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.blue.withOpacity(0.1),
            colorText: Colors.blue
        );
        print("ERROR - $error");
      }
    );
  }
}