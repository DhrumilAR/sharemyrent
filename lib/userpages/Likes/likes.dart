import 'package:flutter/material.dart';

class Likes extends StatefulWidget {
  const Likes({super.key});

  @override
  State<Likes> createState() => _LikesState();
}

class _LikesState extends State<Likes> {

  List propertyDetails = [
    {
      "images" : [
        "assets/interior1.jpeg",
        "assets/kitchen.jpg",
        "assets/houseonrent2.jpg"
      ],
      "Price": "15000/ Month",
      "BHK" : "2 BHK",
      "Address" : "Paras, Chinar Bungalows, Prahlad Nagar , Ahmedabad",
      "Area" : "1200 sqft",
      "Furniture Type" : " UnFurnished",
      "ListerImage" : "assets/person.jpg",
      "ListerName" : "Dhrumil Rupapara",
      "Lister Designation" : "Owner"
    },
    {
      "images" : [
        "assets/interior1.jpeg",
        "assets/kitchen.jpg",
        "assets/houseonrent2.jpg"
      ],
      "Price": "32000/ Month",
      "BHK" : "4 BHK",
      "Address" : "42, Siddharth Heights, Sindhu Bhavan, Ahmedabad",
      "Area" : "1600 sqft",
      "Furniture Type" : "Fully Furnished",
      "ListerImage" : "assets/person.jpg",
      "ListerName" : "Ved Patel",
      "Lister Designation" : "Owner"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_outlined,
          size: 25,
          color: Colors.black87,
        ),
        backgroundColor: const Color(0xFFDDE1DD),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 40,
              width: double.maxFinite,
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                color: const Color(0xFFDDE1DD),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87.withOpacity(0.2),
                    blurRadius: 5,
                    blurStyle: BlurStyle.normal,
                    spreadRadius: 5,
                    offset: const Offset(0, 5)
                  )
                ]
              ),
              child: const Text(
                "Liked Places",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontFamily: "openSans",
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 770,
                    width: double.maxFinite,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: propertyDetails.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 500,
                          width: double.maxFinite,
                          margin: const EdgeInsets.all(20),
                          padding: const EdgeInsets.only(left: 20),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(05, 05),
                                  spreadRadius: 5,
                                  blurStyle: BlurStyle.normal,
                                  blurRadius: 10
                              )
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 170,
                                width: double.maxFinite,
                                padding: const EdgeInsets.only(top: 15),
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: propertyDetails[0]["images"].length,
                                  itemBuilder: (context, photoindex) {
                                    return Container(
                                      height: 150,
                                      width: 200,
                                      margin: const EdgeInsets.only(right: 20),
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                                          image: DecorationImage(image: AssetImage(propertyDetails[index]["images"][photoindex]),
                                              fit: BoxFit.cover
                                          )
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0, bottom: 5.0, right: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.currency_rupee,
                                          color: Colors.black87,
                                          size: 20,
                                        ),
                                        Text(
                                          propertyDetails[index]["Price"],
                                          style: const TextStyle(
                                              color: Colors.black87,
                                              fontFamily: "openSans",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 23,
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                propertyDetails[index]["BHK"],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "openSans",
                                  color: Colors.black87
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0,bottom: 3.0),
                                child: Text(
                                  propertyDetails[index]["Address"],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "openSans",
                                    color: Colors.black87.withOpacity(0.6)
                                  ),
                                ),
                              ),
                              Text(
                                "${propertyDetails[index]["Area"]} . ${propertyDetails[index]["Furniture Type"]}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "openSans",
                                  color: Colors.black87
                                ),
                              ),
                              const Padding(padding: EdgeInsets.only(top: 10)),
                              Text(
                                "Comment What You Like",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "openSans",
                                    color: Colors.black87.withOpacity(0.7)
                                ),
                              ),
                              Container(
                                height: 40,
                                width: double.maxFinite,
                                margin: const EdgeInsets.only(right: 20, top: 5),
                                padding: const EdgeInsets.only(left: 10, bottom: 6),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  color: Color(0xFFDDE6E8)
                                ),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintTextDirection: TextDirection.ltr,
                                    alignLabelWithHint: true,
                                    hintStyle: TextStyle(
                                      color: Color(0xFF737373),
                                      fontFamily: "openSans",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500
                                    ),
                                    enabledBorder: InputBorder.none,
                                    hintText: "Add your comment"
                                  ),
                                  textAlignVertical: TextAlignVertical.center,
                                ),
                              ),
                              SizedBox(
                                height: 120,
                                width: double.maxFinite,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 50,
                                          margin: const EdgeInsets.only(right: 15),
                                          alignment: Alignment.center,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(image: AssetImage("assets/person.jpg"),
                                              fit: BoxFit.cover
                                            )
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              propertyDetails[index]["ListerName"],
                                              style: const TextStyle(
                                                fontFamily: "openSans",
                                                fontStyle: FontStyle.normal,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            ),
                                            Text(
                                              propertyDetails[index]["Lister Designation"],
                                              style: TextStyle(
                                                fontFamily: "openSans",
                                                fontStyle: FontStyle.normal,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87.withOpacity(0.6),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 100,
                                          alignment: Alignment.center,
                                          margin: const EdgeInsets.only(right: 20, top: 10),
                                          decoration: BoxDecoration(
                                            color: Colors.green.withOpacity(0.35),
                                            borderRadius: const BorderRadius.all(Radius.circular(8)),
                                            border: Border.all(
                                              color: Colors.green
                                            )
                                          ),
                                          child: const Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.message_outlined,
                                                color: Colors.black87,
                                                size: 15,
                                              ),
                                              Padding(padding: EdgeInsets.only(left: 3)),
                                              Text(
                                                "Message",
                                                style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15,
                                                  fontStyle: FontStyle.normal,
                                                  fontFamily: "openSans",
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 40,
                                          width: 100,
                                          margin: const EdgeInsets.only(right: 20),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: Colors.green.withOpacity(0.35),
                                              borderRadius: const BorderRadius.all(Radius.circular(8)),
                                              border: Border.all(
                                                  color: Colors.green
                                              )
                                          ),
                                          child: const Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                color: Colors.black87,
                                                size: 15,
                                              ),
                                              Padding(padding: EdgeInsets.only(left: 3)),
                                              Text(
                                                "Location",
                                                style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15,
                                                  fontStyle: FontStyle.normal,
                                                  fontFamily: "openSans",
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
