import 'package:flutter/material.dart';
import 'package:sharemyrent/chatRoom/Functions.dart';

class ChatUsersScreen extends StatefulWidget {
  const ChatUsersScreen({super.key});

  @override
  State<ChatUsersScreen> createState() => _ChatUsersScreenState();
}

class _ChatUsersScreenState extends State<ChatUsersScreen> {

  @override
  void initState(){
    Functions.updateAvailability();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Chat Box",
          style: TextStyle(
            color: Colors.black87,
            fontFamily: "openSans",
            fontStyle: FontStyle.normal,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF2D7976).withOpacity(0.7),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 200,
              width: double.maxFinite,
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: const Color(0xFF2D7976).withOpacity(0.7),
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(12)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Recent Messages",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontFamily: "openSans",
                    ),
                  ),
                  Container(
                    height: 120,
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 100,
                            width: 70,
                            margin: const EdgeInsets.only(right: 25),
                            child: Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage("assets/person.jpg"),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Dhrumil Rupapara",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "openSans",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          );
                        },
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 210.0, left: 20),
            child: Text(
              "Messages",
              style: TextStyle(
                color: Colors.black87,
                fontFamily: "openSans",
                fontStyle: FontStyle.normal,
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 565,
              width: double.maxFinite,
              padding: const EdgeInsets.only(right: 20, top: 30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 550,
                      width: double.maxFinite,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Container(
                            height: 80,
                            width: double.maxFinite,
                            padding: const EdgeInsets.only(right: 10),
                            child: Row(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 180,
                                      padding: const EdgeInsets.symmetric(horizontal: 3),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage("assets/person.jpg"),
                                        )
                                      ),
                                    ),
                                    const Text(
                                      "Dhrumil Rupapara",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "openSans",
                                        color: Colors.black87
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
