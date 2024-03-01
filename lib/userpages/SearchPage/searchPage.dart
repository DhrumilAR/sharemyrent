import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
        decoration: const BoxDecoration(
          color: Color(0xFFDDE6E8)
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "You are looking to rent in",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: "openSans",
                  fontStyle: FontStyle.normal
                ),
              ),
              Text(
                "Choose a city here which can be changed later on",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontFamily: "openSans",
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Colors.black87.withOpacity(0.6)
                ),
              ),
              Container(
                height: 50,
                width: double.maxFinite,
                padding: const EdgeInsets.only(left: 20),
                margin: const EdgeInsets.only(top: 20, bottom: 15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: TextFormField(
                  decoration:  InputDecoration(
                    hintText: "Type city here...",
                    hintStyle: TextStyle(
                      color: Colors.black87.withOpacity(0.6),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      fontFamily: "openSans",
                      fontStyle: FontStyle.normal
                    ),
                    border: InputBorder.none,
                    alignLabelWithHint: true,
                    suffixIcon: const Icon(
                      Icons.search,
                      size: 20,
                      color: Color(0xFF2A9F7C),
                    )
                  ),
                ),
              ),
              const Row(
                children: [
                  Icon(
                    Icons.my_location_outlined,
                    color: Color(0xFF2A9F7C),
                    size: 25,
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text(
                    "Use my Current Location",
                    style: TextStyle(
                      color: Color(0xFF2A9F7C),
                      fontStyle: FontStyle.normal,
                      fontFamily: "openSans",
                      fontWeight: FontWeight.w500,
                      fontSize: 15
                    ),
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 45)),
              Text(
                "Popular Cities",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  fontFamily: "openSans",
                  fontStyle: FontStyle.normal,
                  color: Colors.black87.withOpacity(0.6)
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      popularCities(
                        cityName: "Ahmedabad",
                        cityIcon: "assets/Ahmedabad-512.jpg"
                      ),
                      popularCities(
                        cityName: "Mumbai",
                        cityIcon: "assets/Mumbai-512.jpg"
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      popularCities(
                          cityName: "Bengaluru",
                          cityIcon: "assets/Bengaluru-512.jpg"
                      ),
                      popularCities(
                          cityName: "Chennai",
                          cityIcon: "assets/Chennai-512.jpg"
                      )
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      popularCities(
                          cityName: "Hyderabad",
                          cityIcon: "assets/Hyderabad-512.jpg"
                      ),
                      popularCities(
                          cityName: "Pune",
                          cityIcon: "assets/Pune-512.jpg"
                      )
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      popularCities(
                          cityName: "Delhi",
                          cityIcon: "assets/Delhi_NCR-512.jpg"
                      ),
                      popularCities(
                          cityName: "Kolkata",
                          cityIcon: "assets/Kolkata-512.jpg"
                      )
                    ],
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  "assets/searchpageimage.png",
                  height: 320,
                  width: 320,
                  alignment: Alignment.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  popularCities({
    required String? cityName,
    required String? cityIcon
}){
    return Container(
        height: 50,
        width: 160,
        alignment: Alignment.center,
        padding: const EdgeInsets.only(right: 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Image.asset(
                      cityIcon!,
                      height: 40,
                      width: 40,
                      alignment: Alignment.center,
                  ),
                  Text(
                      cityName!,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontStyle: FontStyle.normal,
                        fontFamily: "openSans",
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                     ),
                  )
              ]
           ),
       );
  }
}
