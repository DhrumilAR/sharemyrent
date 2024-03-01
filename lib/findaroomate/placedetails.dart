import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class PlaceDetails extends StatefulWidget {
  const PlaceDetails({super.key});

  @override
  State<PlaceDetails> createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {

  bool hasTerrace = false;
  bool hasGym = false;
  bool hasCentralAC = false;
  bool hasPlayingArea = false;
  bool haselevator = false;
  bool hassecurityServices = false;
  bool hasmaintenanceServices = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 30),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 90.0),
                    child: Text(
                      "Welcome User!",
                      style: TextStyle(
                        color: Colors.black87,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        fontFamily: "lustria"
                      ),
                    ),
                  ),
                  const Text(
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tFirst things first.\nEnter the requiered details of the place that you've rented",
                    style: TextStyle(
                        color: Colors.black87,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        fontFamily: "lustria"
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  const Divider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 2,
                    color: Colors.black,
                  ),
                  const Text("Location Details",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 24,
                      fontFamily:"lustria",
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    margin: const EdgeInsets.only(top: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "House No/Society Name",
                        hintText: "E.g. 37, Jaldarshan Society",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10
                            )
                          )
                        ),
                      ),
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Land Mark/Nearest Prominent Place",
                        hintText: "E.g. Opp. St. Stephen's Church",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(
                                    10
                                )
                            )
                        ),
                      ),
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Street's Name",
                        hintText: "E.g. Manekshaw Street",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(
                                    10
                                )
                            )
                        ),
                      ),
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "City",
                        hintText: "E.g. New Delhi",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(
                                    10
                                )
                            )
                        ),
                      ),
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "District",
                        hintText: "E.g. NCR",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(
                                    10
                                )
                            )
                        ),
                      ),
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "State",
                        hintText: "E.g. Delhi",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(
                                    10
                                )
                            )
                        ),
                      ),
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  Container(
                    height: 50,
                    width: 350,
                    margin: const EdgeInsets.only(bottom: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Country",
                        hintText: "e.g. India",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(
                                    10
                                )
                            )
                        ),
                      ),
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Divider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 2,
                    color: Colors.black,
                  ),
                  const Text(
                    "Amenities",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 24,
                        fontFamily:"lustria",
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),
                  ),
                  /*CheckboxListTile(
                      value: hasTerrace,
                      title: const Text("Terrace"),
                      onChanged: (value) {
                        setState(() {
                          hasTerrace = value!;
                        });
                      },
                  ),
                  CheckboxListTile(
                    value: hasCentralAC,
                    title: const Text("CentralAC/Heater"),
                    onChanged: (value) {
                      setState(() {
                        hasCentralAC = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    value: haselevator,
                    title: const Text("Elevator"),
                    onChanged: (value) {
                      setState(() {
                        haselevator = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    value: hasGym,
                    title: const Text("Gym"),
                    onChanged: (value) {
                      setState(() {
                        hasGym = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    value: hasmaintenanceServices,
                    title: const Text("Maintenance Service"),
                    onChanged: (value) {
                      setState(() {
                        hasmaintenanceServices = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    value: hasPlayingArea,
                    title: const Text("Playing Area"),
                    onChanged: (value) {
                      setState(() {
                        hasPlayingArea = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    value: hassecurityServices,
                    title: const Text("Security Services"),
                    onChanged: (value) {
                      setState(() {
                        hassecurityServices = value!;
                      });
                    },
                  ),*/
                  amenities(
                    iconsofamenities: Icons.balcony_sharp,
                    text: "Terrace",
                    ischecked: hasTerrace
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
  amenities({
    IconData? iconsofamenities,
    String? text,
    bool? ischecked
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          ischecked = ischecked!;
        });
      },
      child: Container(
        height: 72,
        width: 72,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(7)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 5,
                  blurStyle: BlurStyle.normal,
                  spreadRadius: 5)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RoundCheckBox(
                  onTap: (p0) {
                    setState(() {
                      ischecked = p0!;
                    });
                  },
                  checkedWidget:
                  const Icon(Icons.check, size: 8, color: Colors.white),
                  size: 10,
                  isRound: true,
                  isChecked: ischecked,
                  animationDuration: const Duration(milliseconds: 5),
                  border: Border.all(color: Colors.transparent),
                )
              ],
            ),
            Icon(
              iconsofamenities!,
              color: Colors.black87,
              size: 25,
            ),
            Text(
              text!,
              style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  fontStyle: FontStyle.normal),
            )
          ],
        ),
      ),
    );
  }
}
