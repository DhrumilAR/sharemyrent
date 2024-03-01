import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sharemyrent/userpages/listaproperty/propertydetails.dart';

class ListAProperty extends StatefulWidget {
  const ListAProperty({super.key});

  @override
  State<ListAProperty> createState() => _ListAPropertyState();
}

class _ListAPropertyState extends State<ListAProperty> {

  int? selectedOption;
  TextEditingController pincodeController = TextEditingController();
  TextEditingController landmarkController = TextEditingController();
  TextEditingController houseController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController bhkController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  TextEditingController furnitureController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String getOwnerType(int? option){
   switch (option){
     case 1:
       return "Owner";

     case 2:
       return "Broker";

     case 3:
       return "Tenant";

     default:
       return "";
   }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDE6E8),
      body: Stack(
        children:[
          Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250,
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/listaproperty.png"),
                      opacity: 0.8,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(bottom:0),
                  child: const Text(
                    "Post Your Property",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontFamily: "openSans",
                      fontStyle: FontStyle.normal,
                      fontSize: 25,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.black87,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Choose your designation :",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      fontFamily: "openSans",
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedOption = 1;
                          });
                        },
                        child: SizedBox(
                          height: 40,
                          width: 100,
                          child: Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: selectedOption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption = value;
                                  });
                                },
                              ),
                              const Text(
                                "Owner",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "openSans",
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedOption = 2;
                          });
                        },
                        child: SizedBox(
                          height: 40,
                          width: 100,
                          child: Row(
                            children: [
                              Radio(
                                value: 2,
                                groupValue: selectedOption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption = value;
                                  });
                                },
                              ),
                              const Text(
                                "Broker",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "openSans",
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedOption = 3;
                          });
                        },
                        child: SizedBox(
                          height: 40,
                          width: 100,
                          child: Row(
                            children: [
                              Radio(
                                value: 3,
                                groupValue: selectedOption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption = value;
                                  });
                                },
                              ),
                              const Text(
                                "Tenant",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "openSans",
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Text(
                  "Enter Address :",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      fontFamily: "openSans",
                      fontWeight: FontWeight.w600,
                      color: Colors.black87
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                textformfields(
                  containerwidth: double.maxFinite,
                  labeledtext: "Enter House No., Building/Society Name",
                  hinttext: "e.g. 34, Vrindavan Society",
                  textControllers: houseController
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                textformfields(
                    containerwidth: double.maxFinite,
                    labeledtext: "Landmark, Road Name, City",
                    hinttext: "e.g. opp. Azad Maidan, Mukerjee Nagar, Ahmedabad",
                    textControllers: landmarkController
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textformfields(
                          containerwidth: 170,
                          labeledtext: "District",
                          hinttext: "e.g. Ahmedabad",
                          textControllers: districtController
                      ),
                      textformfields(
                        containerwidth: 170,
                        hinttext: "State",
                        labeledtext: "Gujarat",
                        textControllers: stateController
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textformfields(
                      containerwidth: 170,
                      labeledtext: "Pincode",
                      hinttext: "e.g. 393008",
                      textControllers: pincodeController
                    ),
                    Container(
                      height: 40,
                      width: 170,
                      margin: const EdgeInsets.only(top: 7.5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        color: const Color(0xFF2D7976).withOpacity(0.8)
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.my_location_rounded,
                            color: Colors.white,
                              size: 15,
                          ),
                          Text(
                            "Use Current Location",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: "openSans",
                              fontSize: 14,
                              fontStyle: FontStyle.normal
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 15)),
                const Text(
                  "Property Details :",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    fontFamily: "openSans",
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 15)),
                textformfields(
                    hinttext: "Enter Your Full Name",
                    labeledtext: "Name",
                    containerwidth: 360,
                    textControllers: nameController
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Furniture Type:",
                          style: TextStyle(
                            fontFamily: "openSans",
                            fontStyle: FontStyle.normal,
                            fontSize: 15,
                            color: Colors.black87,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        textformfields(
                          containerwidth: 110,
                          labeledtext: "Furniture Type",
                          hinttext: "e.g. Fully Furnished",
                          textControllers: furnitureController
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Area of Property:",
                          style: TextStyle(
                              fontFamily: "openSans",
                              fontStyle: FontStyle.normal,
                              fontSize: 15,
                              color: Colors.black87,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        textformfields(
                            containerwidth: 110,
                            labeledtext: "Area",
                            hinttext: "e.g. Area",
                            textControllers: areaController
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Bedrooms:",
                          style: TextStyle(
                              fontFamily: "openSans",
                              fontStyle: FontStyle.normal,
                              fontSize: 15,
                              color: Colors.black87,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        textformfields(
                            containerwidth: 110,
                            labeledtext: "BedRooms",
                            hinttext: "e.g. Fully Furnished",
                            textControllers: bhkController
                        )
                      ],
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.only(bottom: 100))
              ],
            ),
          ),
        ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () async{
                  try{
                    await FirebaseFirestore.instance.collection("Properties").add({
                      "Address" : "${houseController.text}, ${landmarkController.text}, ${districtController.text}",
                      "BHK" : bhkController.text,
                      "furnitureType" : furnitureController.text,
                      "area" : areaController.text,
                      "listerName" : nameController.text,
                      "ownerType" : getOwnerType(selectedOption)
                    });
                    print("Values added successfully");
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PropertyDetails()));
                  } catch (e){
                    print("Failed to add a property: $e");
                  }
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PropertyDetails()));
                },
                child: Container(
                  height: 50,
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(bottom: 20, top: 80, left: 20, right: 20),
                  alignment: Alignment.center,
                  decoration:  BoxDecoration(
                      color: const Color(0xFF2D7976),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: const Color(0xFF2D7976),
                        width: 1.5,
                      )
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      fontFamily: "openSans",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          )
        ]
      ),
    );
  }
  textformfields({
    double? containerwidth,
    String? labeledtext,
    String? hinttext,
    TextEditingController? textControllers
  }){
    return Container(
      height: 50,
      width: containerwidth!,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 8),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white
      ),
      child: TextFormField(
          decoration: InputDecoration(
            labelText: labeledtext!,
            hintText: hinttext!,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black87.withOpacity(0.5),
                  width: 1.2
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            hintStyle: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w500,
              fontFamily: "openSans",
              fontSize: 15,
              fontStyle: FontStyle.normal,
            ),
            labelStyle: const TextStyle(
                color: Color(0xFF2D7976),
                fontStyle: FontStyle.normal,
                fontSize: 15,
                fontFamily: "openSans",
                fontWeight: FontWeight.w600
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF2D7976),
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                    color: Color(0xFF2D7976)
                )
            ),
          ),
          maxLines: 1,
          controller: textControllers,
      ),
    );
  }
}
