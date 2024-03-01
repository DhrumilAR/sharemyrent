import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:sharemyrent/Intropages/appIntroPage1.dart';
import 'package:sharemyrent/Intropages/appIntroPage2.dart';
import 'package:sharemyrent/Intropages/splashScreen.dart';
import 'package:sharemyrent/Profile/profile.dart';
import 'package:sharemyrent/chatRoom/chatUserScreen.dart';
import 'package:sharemyrent/findaroomate/HomePage/farmhomepage.dart';
import 'package:sharemyrent/findaroomate/details.dart';
import 'package:sharemyrent/findaroomate/placedetails.dart';
import 'package:sharemyrent/findaroomate/profilefarm/profileFarm.dart';
import 'package:sharemyrent/loginandsignup/loginpage.dart';
import 'package:sharemyrent/startScreen.dart';
import 'package:sharemyrent/testing.dart';
import 'package:sharemyrent/userpages/HomePage/homepage.dart';
import 'package:sharemyrent/userpages/HomePage/placeinfo.dart';
import 'package:sharemyrent/userpages/Likes/likes.dart';
import 'package:sharemyrent/userpages/SearchPage/searchFiltersPage.dart';
import 'package:sharemyrent/userpages/SearchPage/searchPage.dart';
import 'package:sharemyrent/userpages/SearchPage/searchPageResults.dart';
import 'package:sharemyrent/userpages/listaproperty/listaproperty.dart';
import 'package:sharemyrent/userpages/listaproperty/propertydetails.dart';
import 'package:sharemyrent/userpages/rolepage/role.dart';
import 'package:firebase_app_check/firebase_app_check.dart';


void main() async{
  await Hive.initFlutter();
  await Hive.openBox("localData");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.debug,
  );
  runApp(const ShareMyRent());
}

final hiveBox = Hive.box("localData");

class ShareMyRent extends StatelessWidget {
  const ShareMyRent({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInPage(),
    );
  }
}
