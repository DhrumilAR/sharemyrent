import 'package:flutter/material.dart';
import 'package:sharemyrent/findaroomate/HomePage/farmhomepage.dart';
import 'package:sharemyrent/userpages/HomePage/homepage.dart';

class Role extends StatefulWidget {
  const Role({super.key});

  @override
  State<Role> createState() => _RoleState();
}

class _RoleState extends State<Role> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDE6E8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Select a Role",
            style: TextStyle(
              fontSize: 26,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              color: Color(0xFF172936)
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: Container(
              height: 170,
              width: 380,
              margin: const EdgeInsets.only(left: 15, right: 15, top: 32),
              padding: const EdgeInsets.only(top: 42,bottom: 37, left: 24, right: 17),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
                border: Border(
                  right: BorderSide(
                    color: Colors.black87,
                    width: 1.2
                  ),
                  bottom: BorderSide(
                    color: Colors.black87,
                    width: 1.2
                  )
                )
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Looking for a house",
                        style: TextStyle(
                          color: Color(0xFF172936),
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal,
                          fontSize: 16
                        ),
                      ),
                      Text("Find yourself an house with the\nexisting tenant to share your rent.",
                        style: TextStyle(
                            color: Color(0xFFA4A4AA),
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            fontSize: 14
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 120,
                    width: 105,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/lookingforhouse.jpg"), fit: BoxFit.cover)
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const FarmHomePage()));
            },
            child: Container(
              height: 170,
              width: 380,
              margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
              padding: const EdgeInsets.only(top: 42,bottom: 37, left: 24),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      width: 1.2,
                      color: Colors.black87
                    ),
                    right: BorderSide(
                      width: 1.2,
                      color: Colors.black87
                    )
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Looking for a Rent Sharer",
                        style: TextStyle(
                            color: Color(0xFF172936),
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.normal,
                            fontSize: 16
                        ),
                      ),
                      Text("Find yourself a roommate with\nwhom you van share your rent\nof house.",
                        style: TextStyle(
                            color: Color(0xFFA4A4AA),
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            fontSize: 14
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 120,
                    width: 105,
                    margin: const EdgeInsets.only(left: 25),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/findroommate.png"), fit: BoxFit.cover)
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
