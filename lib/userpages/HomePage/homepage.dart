import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sharemyrent/userpages/HomePage/placeinfo.dart';
import 'package:sharemyrent/userpages/SearchPage/searchPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  bool selectedvalue = false;

  List houseOnRent = [
    {
      "person" : "assets/person.jpg",
      "BHK" : "3 BHK Flat",
      "personName" : "Dhrumil Rupapara",
      "imageofplace" : "assets/houseonrent1.jpg",
      "Price": "12,000/Month",
      "Furniture Type": "Semi Furniture",
      "Address": "Dhanurdhar Flat, Maninagar, Ahmedabad",
      "Area": "550 Sq.Ft",
      "renterDesignation" : "Tenant"
    },
    {
      "person" : "assets/person2.jpg",
      "personName" : "Radhey Rupapara",
      "BHK" : "3 BHK Flat",
      "imageofplace" : "assets/houseonrent2.jpg",
      "Price": "14,000/Month",
      "Furniture Type": "Fully Furniture",
      "Address": "Aryan Impulse, Gota, Ahmedabad",
      "Area": "750 Sq. Ft",
      "renterDesignation" : "Owner"
    },
    {
      "person" : "assets/person3.jpg",
      "personName" : "Meet Rupapara",
      "BHK" : "4 BHK Flat",
      "imageofplace" : "assets/houseonrent4.jpg",
      "Price" : "22,000/Month",
      "Furniture Type": "Fully Furniture",
      "Address": "Tatsat Life, Vaishnao Devi Circle, Ahmedabad",
      "Area": "1850 Sq. Ft",
      "renterDesignation" : "Broker"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 380,
            width: double.maxFinite,
            padding: const EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 20),
            decoration: const BoxDecoration(
              color: Color(0xFF2D7976),
              image: DecorationImage(image: AssetImage("assets/homepagevector.png"),
                fit:BoxFit.scaleDown,
                alignment: Alignment.bottomRight,
                opacity: 0.65
              )
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          margin: const EdgeInsets.only(bottom: 50),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/applogo.png"),
                                fit: BoxFit.cover
                            ),
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          margin: const EdgeInsets.only(bottom: 50),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/person.jpg"),
                                fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "Hi Dhrumil! Searching in",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                        fontFamily: "openSans",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage()));
                      },
                      child: const Text(
                        "Ahmedabad",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          fontFamily: "openSans",
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 140,
                          margin: const EdgeInsets.only(top: 50),
                          alignment: Alignment.center,
                         decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(15)),
                              color: Colors.white.withOpacity(0.7),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black87.withOpacity(0.4),
                                  blurRadius: 5,
                                  blurStyle: BlurStyle.normal,
                                  spreadRadius: 3,
                                  offset: const Offset(3, 3)
                                )
                              ],
                              border: Border.all(
                                color: const Color(0xFF2D7976),
                                width: 1.5,
                              ),
                          ),
                          child: const Text(
                            "Share your rent",
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: "openSans",
                                fontStyle: FontStyle.normal,
                                fontSize: 12,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 140,
                          margin: const EdgeInsets.only(top: 50),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(15)),
                              color: Colors.white.withOpacity(0.7),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black87.withOpacity(0.4),
                                  blurRadius: 5,
                                  blurStyle: BlurStyle.normal,
                                  spreadRadius: 3,
                                  offset: const Offset(3, 3)
                                )
                              ],
                              border: Border.all(
                                color: const Color(0xFF2D7976),
                                width: 1.5,
                            ),
                          ),
                          child: const Text(
                            "Rent Entire Property",
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: "openSans",
                                fontStyle: FontStyle.normal,
                                fontSize: 12,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 560,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  color: Colors.white
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 320,
                      width: double.maxFinite,
                      padding: const EdgeInsets.only(
                          bottom: 20, right: 30, left: 30, top: 20
                      ),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 10,
                            blurStyle: BlurStyle.normal,
                            spreadRadius: 5
                          )
                        ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Pay Your Rent",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontStyle: FontStyle.normal,
                              color: Colors.black87,
                              fontFamily: "openSans",
                            ),
                          ),
                          Divider(
                            indent: 0,
                            endIndent: 0,
                            color: Colors.grey.withOpacity(0.5),
                            thickness: 2.5,
                          ),
                          const Padding(padding: EdgeInsets.only(top: 20)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                padding: const EdgeInsets.only(right: 20),
                                margin: const EdgeInsets.only(top: 30),
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)
                                    ),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black12.withOpacity(0.5),
                                          spreadRadius: 10,
                                          blurStyle: BlurStyle.outer,
                                          blurRadius: 20
                                      )
                                    ]
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Pay Rent with\nCredit Card",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 15,
                                          fontStyle: FontStyle.normal,
                                          fontFamily: "openSans",
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 2)
                                    ),
                                    const Text(
                                      "Get 40% cashback on your\nfirst payment",
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 10,
                                          fontStyle: FontStyle.normal,
                                          fontFamily: "openSans",
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          "assets/paymentMethod.jpg",
                                          height: 78,
                                          width: 78,
                                          fit: BoxFit.cover,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          alignment: Alignment.center,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black87,
                                          ),
                                          child: const Icon(
                                            Icons.arrow_forward_ios,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 150,
                                width: 150,
                                padding: const EdgeInsets.only(right: 20),
                                margin: const EdgeInsets.only(top: 30),
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)
                                    ),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black12.withOpacity(0.5),
                                          spreadRadius: 10,
                                          blurStyle: BlurStyle.outer,
                                          blurRadius: 20
                                      )
                                    ]
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Dhrumil, Save\nwith Brokerage",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 15,
                                          fontStyle: FontStyle.normal,
                                          fontFamily: "openSans",
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    const Padding(padding: EdgeInsets.only(top: 2)),
                                    const Text(
                                      "with Premium. Upto 50% off till",
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 10,
                                          fontStyle: FontStyle.normal,
                                          fontFamily: "openSans",
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          "assets/premiumaccount.jpg",
                                          height: 78,
                                          width: 78,
                                          fit: BoxFit.cover,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          alignment: Alignment.center,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black87,
                                          ),
                                          child: const Icon(
                                            Icons.arrow_forward_ios,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PlaceInfo(
                          price: "12000/Month",
                          address: "Dhanurdhar flat, Daxini Society, Maninagar, Ahmedabad",
                          area: "585 sq.ft",
                          bhk: "3 BHK",
                          furnitureType: "Semi Furnished",
                          images: "assets/houseonrent2.jpg",
                          renterName: "Dhrumil Rupapara",
                          rentersDesignation: "Tenant",
                        ),));
                      },
                      child: Container(
                        height: 260,
                        width: double.maxFinite,
                        margin: const EdgeInsets.only(top: 15),
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        decoration: const BoxDecoration(
                          color: Colors.white
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Zero Brokerage Rental Properties",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                    fontFamily: "openSans",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 17,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(left: 10)),
                                Text(
                                  "See All",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple,
                                    fontFamily: "openSans",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(right: 2))
                              ],
                            ),
                            const Padding(padding: EdgeInsets.only(top: 10)),
                            SizedBox(
                              height: 196,
                              width: double.maxFinite,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 1,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    height: 200,
                                    width: 300,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 300,
                                          margin: const EdgeInsets.only(bottom: 10),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                15
                                              )
                                            ),
                                            image: DecorationImage(
                                              image:AssetImage("assets/houseonrent2.jpg"),
                                              fit: BoxFit.cover
                                            )
                                          ),
                                        ),
                                        const Text(
                                          "12,000/Months",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                            fontFamily: "openSans",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15,
                                          ),
                                        ),
                                        const Padding(padding: EdgeInsets.only(top: 5)),
                                        const Text(
                                          "Without Brokerage 1 BHK Flat\nDhanurdhar flat, Daxini Society, Maninagar, Ahmedabad",
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black87,
                                            fontFamily: "openSans",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 12,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const Padding(padding: EdgeInsets.only(top: 5)),
                                        const Text(
                                          "Semi Furnished . 585 sq.ft",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                            fontFamily: "openSans",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ) ;
                                },
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 405,
                      width: double.maxFinite,
                      margin: const EdgeInsets.only(top: 15),
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Better Priced Properties",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontFamily: "openSans",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 17,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(right: 100)),
                              Text(
                                "See All",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                  fontFamily: "openSans",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(right: 2))
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          SizedBox(
                            height: 350,
                            width: double.maxFinite,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => PlaceInfo(
                                        price: houseOnRent[index]["Price"],
                                        images: houseOnRent[index]["imageofplace"],
                                        bhk: houseOnRent[index]["BHK"],
                                        address: houseOnRent[index]["Address"],
                                        furnitureType: houseOnRent[index]["Furniture Type"],
                                        area: houseOnRent[index]["Area"],
                                        renterName: houseOnRent[index]["personName"],
                                        rentersDesignation: houseOnRent[index]["renterDesignation"]
                                    )));
                                  },
                                  child: SizedBox(
                                    height: 300,
                                    width: 300,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 250,
                                          width: 250,
                                          margin: const EdgeInsets.only(bottom: 10),
                                          decoration: BoxDecoration(
                                              borderRadius: const BorderRadius.all(
                                                  Radius.circular(
                                                      15
                                                  )
                                              ),
                                              image: DecorationImage(
                                                  image:AssetImage(houseOnRent[index]["imageofplace"]),
                                                  fit: BoxFit.cover
                                              ),
                                          ),
                                        ),
                                        Text(
                                          houseOnRent[index]["Price"],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                            fontFamily: "openSans",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15,
                                          ),
                                        ),
                                        const Padding(padding: EdgeInsets.only(top: 5)),
                                        Text(
                                          "${houseOnRent[index]["BHK"]}\n${houseOnRent[index]["Address"]}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black87,
                                            fontFamily: "openSans",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 12,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const Padding(padding: EdgeInsets.only(top: 5)),
                                        const Text(
                                          "Semi Furnished . 585 sq.ft",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                            fontFamily: "openSans",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ) ;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 480,
                      width: double.maxFinite,
                      margin: const EdgeInsets.only(top: 15),
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20
                      ),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20
                          )
                        ),
                        color: Colors.white
                      ),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Suggested For You",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "openSans",
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                "See All",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 12,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "openSans",
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          const Divider(
                            indent: 2,
                            endIndent: 2,
                          ),
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          CarouselSlider.builder(
                            itemCount: 3,
                            options: CarouselOptions(
                              height: 370,
                              scrollDirection: Axis.horizontal,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 5),
                              autoPlayAnimationDuration: const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              initialPage: 0,
                              enlargeFactor: 0.3,
                              animateToClosest: true,
                              pauseAutoPlayOnTouch: true,
                              enableInfiniteScroll: false,
                            ),
                            itemBuilder: (context, index, realIndex) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => PlaceInfo(
                                      price: houseOnRent[index]["Price"],
                                      images: houseOnRent[index]["imageofplace"],
                                      bhk: houseOnRent[index]["BHK"],
                                      address: houseOnRent[index]["Address"],
                                      furnitureType: houseOnRent[index]["Furniture Type"],
                                      area: houseOnRent[index]["Area"],
                                      renterName: houseOnRent[index]["personName"],
                                      rentersDesignation: houseOnRent[index]["renterDesignation"]
                                  )));
                                },
                                child: Container(
                                  height: 330,
                                  width: 280,
                                  margin: const EdgeInsets.only(top: 5),
                                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        10
                                      )
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        blurStyle: BlurStyle.normal,
                                        blurRadius: 7,
                                        spreadRadius: 5,
                                        offset: const Offset(3.0, 5.0)
                                      )
                                    ],
                                    image: DecorationImage(
                                      image: AssetImage(houseOnRent[index]["imageofplace"]),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 30,
                                                width: 30,
                                                margin: const EdgeInsets.only(right: 10),
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(image: AssetImage(houseOnRent[index]["person"]),
                                                      fit: BoxFit.cover
                                                  )
                                                ),
                                              ),
                                              Text(
                                                houseOnRent[index]["personName"],
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "openSans",
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 15,
                                                  color: Colors.black87
                                                ),
                                              )
                                            ],
                                          ),
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.black45
                                            ),
                                            alignment: Alignment.center,
                                            child: const Icon(
                                              Icons.favorite_border,
                                              size: 18,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        height: 120,
                                        width: double.maxFinite,
                                        padding: const EdgeInsets.only(left: 20),
                                        decoration: BoxDecoration(

                                          color: Colors.black87.withOpacity(0.65),
                                          borderRadius: const BorderRadius.all(Radius.circular(15))
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              houseOnRent[index]["Price"],
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontStyle: FontStyle.normal,
                                                  fontFamily: "openSans",
                                                  fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Text(
                                              houseOnRent[index]["BHK"],
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "openSans",
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 12,
                                                  color: Colors.white,
                                              ),
                                            ),
                                            const Padding(padding: EdgeInsets.only(top: 5)),
                                            Text(
                                              houseOnRent[index]["Address"],
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "openSans",
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 10,
                                                  color: Colors.white,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                            Text(
                                              "${houseOnRent[index]["Furniture Type"]} . ${houseOnRent[index]["Area"]}",
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "openSans",
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 12,
                                                  color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 405,
                      width: double.maxFinite,
                      margin: const EdgeInsets.only(top: 15),
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      decoration: const BoxDecoration(
                          color: Colors.white
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Recently Added",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontFamily: "openSans",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 17,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(right: 160)),
                              Text(
                                "See All",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                  fontFamily: "openSans",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(right: 2))
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          SizedBox(
                            height: 350,
                            width: double.maxFinite,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: houseOnRent.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => PlaceInfo(
                                        price: houseOnRent[index]["Price"],
                                        images: houseOnRent[index]["imageofplace"],
                                        bhk: houseOnRent[index]["BHK"],
                                        address: houseOnRent[index]["Address"],
                                        furnitureType: houseOnRent[index]["Furniture Type"],
                                        area: houseOnRent[index]["Area"],
                                        renterName: houseOnRent[index]["personName"],
                                        rentersDesignation: houseOnRent[index]["renterDesignation"]
                                    )));
                                  },
                                  child: SizedBox(
                                    height: 300,
                                    width: 300,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 250,
                                          width: 250,
                                          margin: const EdgeInsets.only(bottom: 10),
                                          decoration: BoxDecoration(
                                              borderRadius: const BorderRadius.all(
                                                  Radius.circular(
                                                      15
                                                  )
                                              ),
                                              image: DecorationImage(
                                                  image:AssetImage(houseOnRent[index]["imageofplace"]),
                                                  fit: BoxFit.cover
                                              )
                                          ),
                                        ),
                                        Text(
                                          houseOnRent[index]["Price"],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                            fontFamily: "openSans",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15,
                                          ),
                                        ),
                                        const Padding(padding: EdgeInsets.only(top: 5)),
                                        Text(
                                          "${houseOnRent[index]["BHK"]}\n${houseOnRent[index]["Address"]}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black87,
                                            fontFamily: "openSans",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 12,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const Padding(padding: EdgeInsets.only(top: 5)),
                                        Text(
                                          "${houseOnRent[index]["Furniture Type"]} . ${houseOnRent[index]["Area"]}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                            fontFamily: "openSans",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ) ;
                              },
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: 260,
                      width: double.maxFinite,
                      margin: const EdgeInsets.only(top: 15),
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      decoration: const BoxDecoration(
                          color: Colors.white
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Fully Furnished",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontFamily: "openSans",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 17,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(right: 160)),
                              Text(
                                "See All",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                  fontFamily: "openSans",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(right: 2))
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          SizedBox(
                            height: 196,
                            width: double.maxFinite,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => PlaceInfo(
                                        price: houseOnRent[index]["Price"],
                                        images: houseOnRent[index]["imageofplace"],
                                        bhk: houseOnRent[index]["BHK"],
                                        address: houseOnRent[index]["Address"],
                                        furnitureType: houseOnRent[index]["Furniture Type"],
                                        area: houseOnRent[index]["Area"],
                                        renterName: houseOnRent[index]["personName"],
                                        rentersDesignation: houseOnRent[index]["renterDesignation"]
                                    )));
                                  },
                                  child: SizedBox(
                                    height: 200,
                                    width: 300,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 300,
                                          margin: const EdgeInsets.only(bottom: 10, right: 25),
                                          decoration: BoxDecoration(
                                              borderRadius: const BorderRadius.all(
                                                  Radius.circular(
                                                      15
                                                  )
                                              ),
                                              image: DecorationImage(
                                                  image:AssetImage(houseOnRent[index]["imageofplace"]),
                                                  fit: BoxFit.cover
                                              )
                                          ),
                                        ),
                                        Text(
                                          houseOnRent[index]["Price"],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                            fontFamily: "openSans",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15,
                                          ),
                                        ),
                                        const Padding(padding: EdgeInsets.only(top: 5)),
                                        Text(
                                          "${houseOnRent[index]["BHK"]}\n${houseOnRent[index]["Address"]}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black87,
                                            fontFamily: "openSans",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 12,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const Padding(padding: EdgeInsets.only(top: 5)),
                                        Text(
                                          "${houseOnRent[index]["Furniture Type"]} . ${houseOnRent[index]["Area"]}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                            fontFamily: "openSans",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ) ;
                              },
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      width: double.maxFinite,
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        image: const DecorationImage(image: AssetImage("assets/sharetheapp.jpg")),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black87.withOpacity(0.4),
                            spreadRadius: 5,
                            blurStyle: BlurStyle.normal,
                            blurRadius: 10
                          )
                        ]
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            color: const Color(0xFFF8D232),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black87.withOpacity(0.4),
                                blurRadius: 10,
                                blurStyle: BlurStyle.normal,
                                spreadRadius: 5
                              )
                            ]
                          ),
                          child: const Text(
                            "Share if you like",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                              fontFamily: "openSans",
                              fontStyle: FontStyle.normal,
                              fontSize: 12
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
