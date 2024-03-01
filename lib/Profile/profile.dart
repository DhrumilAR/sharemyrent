import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  String countrycode = "";
  int selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      "Index 0: Exploring Listings",
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontSize: 24,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  Container(
                    height: 33,
                    width: 98,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.white.withOpacity(0.7),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          "Edit Profile",
                          style: TextStyle(
                            color: Color(0xFF6759FF),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                          ),
                        ),
                        Icon(
                          Icons.edit,
                          size: 12,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                height: 88,
                width: 343,
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      margin: const EdgeInsets.only(right: 16),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage("assets/img1.png"))
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Alex Ferguson",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontStyle: FontStyle.normal
                          ),
                        ),
                        Text(
                          "@alexferguson@gmail.com",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF888C97),
                              fontStyle: FontStyle.normal
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 412,
                width: 343,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Container(
                      height: 77,
                      width: 311,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Phone Number",
                            style: TextStyle(
                              color: Color(0xFF1A1D1F),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                              fontSize: 15
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  showCountryPicker(
                                      context: context,
                                      onSelect: (Country c) {
                                        print(c.countryCode.toString());
                                        print(c.phoneCode.toString());
                                        countrycode = c.phoneCode.toString();
                                        setState(() {

                                        });
                                      },
                                      countryListTheme: const CountryListThemeData(
                                        textStyle: TextStyle(fontSize: 20),
                                        inputDecoration: InputDecoration(
                                          hintText: "Type to Search",
                                          labelText: "Search"
                                        )
                                      ),
                                  );
                                },
                                child: Container(
                                  height: 44,
                                  width: 80,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.only(
                                    left: 20
                                  ),
                                  margin: const EdgeInsets.only(top: 8),
                                  color: const Color(0xFFF5F5F5),
                                  child: Row(
                                    children: [
                                      Text(
                                        countrycode,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal,
                                          color: Color(0xFF1A1B28)
                                        ),
                                      ),
                                      const Icon(Icons.arrow_drop_down_outlined, size: 14, color: Color(0xFF1A1B2D),),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 44,
                                width: 212,
                                color: const Color(0xFFF5F5F5),
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.only(left: 15, top: 8),
                                padding: const EdgeInsets.only(left: 20),
                                child: const Text(
                                  "9316014055",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xFF1A1B28)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 77,
                      width: 311,
                      margin: const EdgeInsets.only(top: 24),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "E-Mail",
                            style: TextStyle(
                                color: Color(0xFF1A1D1F),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                                fontSize: 15
                            ),
                          ),
                          Container(
                            height: 44,
                            width: 311,
                            padding: const EdgeInsets.only(
                                left: 20
                            ),
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(top: 8),
                            color: const Color(0xFFF5F5F5),
                            child: const Text(
                              "alexferguson@gmail.com",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF1A1B2D),
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 14
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 77,
                      width: 311,
                      margin: const EdgeInsets.only(top: 24),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Gender",
                            style: TextStyle(
                                color: Color(0xFF1A1D1F),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                                fontSize: 15
                            ),
                          ),
                          Container(
                            height: 44,
                            width: 311,
                            padding: const EdgeInsets.only(
                                left: 20
                            ),
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(top: 8),
                            color: const Color(0xFFF5F5F5),
                            child: const Text(
                              "Male",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xFF1A1B2D),
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 77,
                      width: 311,
                      margin: const EdgeInsets.only(top: 24),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Date of Birth",
                            style: TextStyle(
                                color: Color(0xFF1A1D1F),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                                fontSize: 15
                            ),
                          ),
                          Container(
                            height: 44,
                            width: 311,
                            padding: const EdgeInsets.only(
                                left: 20
                            ),
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(top: 8),
                            color: const Color(0xFFF5F5F5),
                            child: const Text(
                              "Not Set",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xFF1A1B2D),
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
