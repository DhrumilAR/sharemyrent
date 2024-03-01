//FIND A ROOM MATE

import 'package:flutter/material.dart';
import 'package:sharemyrent/findaroomate/HomePage/profileInfo.dart';

class FarmHomePage extends StatefulWidget {
  const FarmHomePage({super.key});

  @override
  State<FarmHomePage> createState() => _FarmHomePageState();
}

class _FarmHomePageState extends State<FarmHomePage> {

  List profileList1 = [
    {
      "profileImage" : "assets/person.jpg",
      "profileName" : "Dhrumil Rupapara",
      "profileGender" : "Male",
      "profileAge" : "20",
      "profileOccupation" : "Engineer"
    },
    {
      "profileImage" : "assets/person5.jpg",
      "profileName" : "Meet Patel",
      "profileGender" : "Male",
      "profileAge" : "19",
      "profileOccupation" : "Student"
    },
    {
      "profileImage" : "assets/person6.jpg",
      "profileName" : "Stephnie Paul",
      "profileGender" : "Female",
      "profileAge" : "19",
      "profileOccupation" : "Student"
    },
  ];

  List profileList2 = [
    {
      "profileImage" : "assets/person2.jpg",
      "profileName" : "Kedar Vyas",
      "profileGender" : "Male",
      "profileAge" : "20",
      "profileOccupation" : "Backend Developer"
    },
    {
      "profileImage" : "assets/person3.jpg",
      "profileName" : "Kathan Gabani",
      "profileGender" : "Male",
      "profileAge" : "21",
      "profileOccupation" : "Wrestler"
    },
    {
      "profileImage" : "assets/person4.jpg",
      "profileName" : "Ved Patel",
      "profileGender" : "Male",
      "profileAge" : "25",
      "profileOccupation" : "Doctor"
    },
  ];

  List profileList3 = [
    {
      "profileImage" : "assets/person.jpg",
      "profileName" : "Dhrumil Rupapara",
      "profileGender" : "Male",
      "profileAge" : "21",
      "profileOccupation" : "Backend Developer"
    },
    {
      "profileImage" : "assets/person5.jpg",
      "profileName" : "Meet Patel",
      "profileGender" : "Male",
      "profileAge" : "19",
      "profileOccupation" : "Wrestler"
    },
    {
      "profileImage" : "assets/person6.jpg",
      "profileName" : "Stephnie Paul",
      "profileGender" : "Female",
      "profileAge" : "19",
      "profileOccupation" : "Doctor"
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F9FA),
      body: Stack(
        children: [
          Container(
            height: 300,
            width: double.maxFinite,
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
              color: const Color(0xFF3B1833).withOpacity(0.5),
              image: const DecorationImage(
                image: AssetImage("assets/farm__1_-removebg-preview.png"),
                opacity: 0.5
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.only(bottom: 50),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/applogo.png"),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.only(bottom: 50),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/person.jpg"),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: 250,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: const Color(0xFF8C5E81).withOpacity(0.4),
                    border: Border.all(color: const Color(0xFF8C5E81).withOpacity(0.6))
                  ),
                  child: Text(
                    "Welcome Back! Dhrumil",
                    style: TextStyle(
                      fontFamily: "openSans",
                      color: Colors.black87,
                      wordSpacing: 3,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.3,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.black87.withOpacity(0.6),
                          blurRadius: 2,
                          offset: const Offset(1,1)
                        )
                      ]
                    ),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 590,
              width: double.maxFinite,
              padding: const EdgeInsets.only(left: 20, top: 30),
              child:  SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Suggested Profiles",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.5,
                            fontStyle: FontStyle.normal,
                            fontFamily: "openSans",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Text(
                            "See All",
                            style: TextStyle(
                              color: Color(0xFF2D7976),
                              fontWeight: FontWeight.bold,
                              fontSize: 14.5,
                              fontStyle: FontStyle.normal,
                              fontFamily: "openSans",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 220,
                      width: double.maxFinite,
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: profileList1.length,
                          itemBuilder: (context, index) {
                            return listItems(
                              personName: profileList1[index]["profileName"],
                              profilePhoto: profileList1[index]["profileImage"],
                              occupation: profileList1[index]["profileOccupation"],
                              gender: profileList1[index]["profileGender"],
                              age: profileList1[index]["profileAge"]
                            );
                          },
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Actively Searching Profiles",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.5,
                            fontStyle: FontStyle.normal,
                            fontFamily: "openSans",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Text(
                            "See All",
                            style: TextStyle(
                              color: Color(0xFF2D7976),
                              fontWeight: FontWeight.bold,
                              fontSize: 14.5,
                              fontStyle: FontStyle.normal,
                              fontFamily: "openSans",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 220,
                      width: double.maxFinite,
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: profileList1.length,
                        itemBuilder: (context, index) {
                          return listItems(
                              personName: profileList2[index]["profileName"],
                              profilePhoto: profileList2[index]["profileImage"],
                              occupation: profileList2[index]["profileOccupation"],
                              gender: profileList2[index]["profileGender"],
                              age: profileList2[index]["profileAge"]
                          );
                        },
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Listings",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.5,
                            fontStyle: FontStyle.normal,
                            fontFamily: "openSans",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Text(
                            "See All",
                            style: TextStyle(
                              color: Color(0xFF2D7976),
                              fontWeight: FontWeight.bold,
                              fontSize: 14.5,
                              fontStyle: FontStyle.normal,
                              fontFamily: "openSans",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 220,
                      width: double.maxFinite,
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: profileList1.length,
                        itemBuilder: (context, index) {
                          return listItems(
                              personName: profileList3[index]["profileName"],
                              profilePhoto: profileList3[index]["profileImage"],
                              occupation: profileList3[index]["profileOccupation"],
                              gender: profileList3[index]["profileGender"],
                              age: profileList3[index]["profileAge"]
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(image: AssetImage("assets/sharetheapp.jpg"), fit: BoxFit.cover)
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 30,
                            width: 140,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(bottom: 20),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFFF8D232)
                            ),
                            child: const Text(
                              "Share the Application",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                fontStyle: FontStyle.normal,
                                fontFamily: "openSans",
                                shadows: [
                                  Shadow(
                                    color: Colors.blue,
                                    offset: Offset(0.5, 0.5),
                                    blurRadius: 1
                                  )
                                ]
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
listItems({
    String? profilePhoto,
    String? personName,
    String? gender,
    String? age,
    String? occupation,
}){
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileFAR(
            picture: profilePhoto,
            name: personName,
            age : age,
            gender : gender,
            occupation : occupation
        )
        )
        );
      },
      child: Container(
        height: 200,
        width: 150,
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black87.withOpacity(0.2),
                blurRadius: 3,
                offset: const Offset(2, 2),
                blurStyle: BlurStyle.normal,
              )
            ],
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border(
              right: BorderSide(
                  color: Colors.black87.withOpacity(0.3),
                  width: 1.5
              ),
              bottom: BorderSide(
                  color: Colors.black87.withOpacity(0.3),
                  width: 1.5
              ),
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                profilePhoto!,
                height: 120,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 3.0),
              child: Text(
                personName!,
                style: const TextStyle(
                    color: Colors.black87,
                    fontFamily: "openSans",
                    fontStyle: FontStyle.normal,
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 2.0),
              child: Text(
                gender!,
                style: const TextStyle(
                    color: Colors.black87,
                    fontFamily: "openSans",
                    fontStyle: FontStyle.normal,
                    fontSize: 13,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 2.0),
              child: Text(
                age!,
                style: const TextStyle(
                    color: Colors.black87,
                    fontFamily: "openSans",
                    fontStyle: FontStyle.normal,
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 2.0),
              child: Text(
                occupation!,
                style: const TextStyle(
                    color: Colors.black87,
                    fontFamily: "openSans",
                    fontStyle: FontStyle.normal,
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
