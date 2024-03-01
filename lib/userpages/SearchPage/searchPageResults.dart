import 'package:flutter/material.dart';

class SearchPageResults extends StatefulWidget {
  const SearchPageResults({super.key});

  @override
  State<SearchPageResults> createState() => _SearchPageResultsState();
}

class _SearchPageResultsState extends State<SearchPageResults> {

  List propertyDetails = [
    {
      "Photos": [
        "assets/interior1.jpeg",
        "assets/kitchen.jpg",
        "assets/bedroom.jpeg"
       ],
      "Price": "30,000/ Month",
      "BHK": "3 BHK Flat",
      "Location": "R R Solution, Gota, Ahmedabad",
      "Area": "1580 sq.ft",
      "Furniture Type": "Fully Furnished",
      "Person Image" : "assets/person.jpg",
      "Person Name" : "Dhrumil Rupapara",
      "Person Designation" : "Owner"
    },
    {
      "Photos": [
        "assets/interior1.jpeg",
        "assets/kitchen.jpg",
        "assets/bedroom.jpeg"
      ],
      "Price": "40,000/ Month",
      "BHK": "4 BHK Flat",
      "Location": "S P Highway, Gota, Ahmedabad",
      "Area": "1600 sq.ft",
      "Furniture Type": "Semi Furnished",
      "Person Image" : "assets/person2.jpg",
      "Person Name" : "Ved Patel",
      "Person Designation" : "Owner"
    }
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black87,
          ),
        ),
        title: const Row(
          children: [
            Text(
              "Ahmedabad",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontFamily: "openSans",
                fontWeight: FontWeight.w600
              ),
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
              color: Colors.black87,
              size: 20,
            )
          ],
        ),
        centerTitle: true,
        titleSpacing: 95,
        backgroundColor: Colors.white,
      ),
      backgroundColor: const Color(0xFFDDE6E8),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: ListView.builder(
          itemCount: propertyDetails.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              height: 450,
              width: double.maxFinite,
              padding: const EdgeInsets.only(
                  left: 20,
                  top: 15
              ),
              margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    height: 160,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: propertyDetails[index]["Photos"].length,
                      itemBuilder: (context, photoindex) {
                        return Container(
                          height: 150,
                          width: 270,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(propertyDetails[index]["Photos"][photoindex]),
                                  fit: BoxFit.cover
                              )
                          ),
                        );
                      },
                    ),
                  ),
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
                            fontWeight: FontWeight.w700,
                            fontFamily: "openSans",
                            fontStyle: FontStyle.normal,
                            fontSize: 20
                        ),
                      ),
                    ],
                  ),
                  Text(
                    propertyDetails[index]["BHK"],
                    style: const TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        fontFamily: "openSans",
                        fontWeight: FontWeight.w600,
                        color: Colors.black87
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      propertyDetails[index]["Location"],
                      style: TextStyle(
                          fontSize: 13,
                          fontStyle: FontStyle.normal,
                          fontFamily: "openSans",
                          fontWeight: FontWeight.w600,
                          color: Colors.black87.withOpacity(0.5)
                      ),
                    ),
                  ),
                  Text(
                    "${propertyDetails[index]["Area"]}, ${propertyDetails[index]["Furniture Type"]}",
                    style: const TextStyle(
                        color: Colors.black87,
                        fontFamily: "openSans",
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  Divider(
                    indent: 0,
                    endIndent: 20,
                    color: Colors.black87.withOpacity(0.6),
                  ),
                  const Text(
                    "Posted  By:",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        fontFamily: "openSans"
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            margin: const EdgeInsets.only(top: 20),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(image: AssetImage(propertyDetails[index]["Person Image"]),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(right: 15)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                propertyDetails[index]["Person Name"],
                                style: const TextStyle(
                                    fontFamily: "openSans",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87
                                ),
                              ),
                              Text(
                                propertyDetails[index]["Person Designation"],
                                style: TextStyle(
                                    fontFamily: "openSans",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87.withOpacity(0.5)
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 40,
                            width: 110,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(right: 20, bottom: 15),
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(8)),
                                color: const Color(0xFF2A9F7C).withOpacity(0.15)
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.message_outlined,
                                  color: Colors.black87,
                                  size: 16,
                                ),
                                Padding(padding: EdgeInsets.only(left: 3)),
                                Text(
                                  "Chat",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      fontFamily: "openSans"
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 110,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(8)),
                                color: const Color(0xFF2A9F7C).withOpacity(0.15)
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.black87,
                                  size: 16,
                                ),
                                Text(
                                  "See on Map",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      fontFamily: "openSans"
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}