import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Functions{
  static void updateAvailability() {
    final fireStore  =  FirebaseFirestore.instance;
    final auth = FirebaseAuth.instance;
    final data = {
      "name"
    };
  }
}