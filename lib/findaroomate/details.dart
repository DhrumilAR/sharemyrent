import 'package:flutter/material.dart';
import 'package:sharemyrent/findaroomate/HomePage/farmhomepage.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                    child: const Icon(
                      Icons.add,
                      size: 60,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "Enter Your Profile Picture",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontFamily: "hindmadurai",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  SizedBox(
                    width: 350,
                    height: 50,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Full Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          ),
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.black87,
                          )
                        )
                      ),
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontStyle: FontStyle.normal,
                        fontFamily: "openSans"
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  SizedBox(
                    width: 350,
                    height: 50,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              ),
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.black87,
                              )
                          )
                      ),
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontStyle: FontStyle.normal
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  SizedBox(
                    width: 350,
                    height: 50,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Phone Number",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              ),
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.black87,
                              )
                          )
                      ),
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontStyle: FontStyle.normal
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  SizedBox(
                    width: 350,
                    height: 50,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Date of Birth",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              ),
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.black87,
                              )
                          )
                      ),
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontStyle: FontStyle.normal
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  SizedBox(
                    width: 350,
                    height: 50,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Occupation",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              ),
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.black87,
                              )
                          )
                      ),
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontStyle: FontStyle.normal
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  SizedBox(
                    height: 150,
                    width: 350,
                    child: TextFormField(
                      maxLines: 8,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black87
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          )
                        ),
                        labelText: "Description",
                      ),
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontStyle: FontStyle.normal
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const FarmHomePage()));
              },
              child: Container(
                height: 50,
                width: 300,
                margin: const EdgeInsets.only(
                  bottom: 40
                ),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      15
                    )
                  ),
                  color: Colors.black87
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    fontFamily: "hindmadurai",
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
