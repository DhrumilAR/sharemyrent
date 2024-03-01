import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:sharemyrent/userpages/SearchPage/searchPageResults.dart';

class SearchFiltersPage extends StatefulWidget {
  const SearchFiltersPage({super.key});

  @override
  State<SearchFiltersPage> createState() => _SearchFiltersPageState();
}

class _SearchFiltersPageState extends State<SearchFiltersPage> {

  List bhkType = [
    "\t1 RK",
    "\t1 BHK",
    "\t2 BHK",
    "\t3 BHK",
    "\t3+ BHK"
  ];

  List propertyType = [
    "\tIndependent",
    "\tShare Rent"
  ];

  List furnishedType = [
    "\tUnFurnished",
    "\tSemi Furnished",
    "\tFully Furnished"
  ];

  List availability = [
    "\tWithin a Week",
    "\tWithin 15 Days",
    "\tWithin a Month"
  ];

  RangeValues currentRangeValues = const RangeValues(10000.0, 200000.0);
  RangeValues areaSqft = const RangeValues(0, 5000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFDDE1DD),
        leading: Icon(
          Icons.arrow_back_outlined,
          size: 30,
          color: Colors.black87.withOpacity(0.6),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xFFDDE6E8),
        child: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: double.maxFinite,
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0xFFDDE1DD),
                      boxShadow:[
                        BoxShadow(
                          color: Colors.black38,
                          offset: Offset(0, 10),
                          spreadRadius: 2,
                          blurStyle: BlurStyle.normal,
                          blurRadius: 10
                        )
                      ]
                    ),
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Filters",
                              style: TextStyle(
                                color: Colors.black87,
                                fontStyle: FontStyle.normal,
                                fontFamily: "openSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                              ),
                            ),
                            Text(
                              "Clear all",
                              style: TextStyle(
                                color: Colors.deepPurpleAccent,
                                fontStyle: FontStyle.normal,
                                fontFamily: "openSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),
                            ),
                          ],
                        ),
                        Divider(

                        ),
                        Padding(padding: EdgeInsets.only(top: 8)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "You are searching in",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontStyle: FontStyle.normal,
                                      fontFamily: "openSans",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13
                                  ),
                                ),
                                Text(
                                  "\tAhmedabad",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.black87,
                                      fontFamily: "openSans"
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                 "Change Location",
                                  style: TextStyle(
                                    fontFamily: "openSans",
                                    color: Colors.black87,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black87,
                                  size: 10,
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 25),
                    child: Text(
                      "BHK Type",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        fontFamily: "openSans",
                        color: Colors.black87
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(left: 20),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 40,
                          width: 80,
                          margin: const EdgeInsets.only(right: 15),
                          alignment: AlignmentDirectional.center,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8)
                            ),
                            border: Border.all(
                              color: Colors.black87.withOpacity(0.5),
                              width: 1.8,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundCheckBox(
                                 isChecked: false,
                                 onTap: (selected) {},
                                 isRound: true,
                                 size: 20,
                                 checkedColor: const Color(0xFF2A9F7C),
                                 uncheckedColor: Colors.transparent,
                                 border: Border.all(color: Colors.black87),
                                 animationDuration: const Duration(
                                  milliseconds: 10
                                ),
                                  checkedWidget: const Icon(
                                    Icons.check,
                                    size: 15,
                                    color: Colors.white,
                                ),
                              ),
                              Text(
                                bhkType[index],
                                style: const TextStyle(
                                  color: Colors.black87,
                                  fontFamily: "openSans",
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20),
                    child: Text(
                      "Budget",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "openSans",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20, top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Min. Rent: ${currentRangeValues.start.round().toString()}",
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "openSans",
                            fontStyle: FontStyle.normal,
                            color: Colors.black87,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "Max. Rent: ${currentRangeValues.end.round().toString()}",
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "openSans",
                            fontStyle: FontStyle.normal,
                            color: Colors.black87,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  RangeSlider(
                    values: currentRangeValues,
                    divisions: 100,
                    max: 200000,
                    min: 0,
                    labels: RangeLabels(
                      currentRangeValues.start.round().toString(),
                      currentRangeValues.end.round().toString()
                    ),
                    onChanged: (value) {
                      setState(() {
                        currentRangeValues = value;
                      });
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 10),
                    child: Text(
                      "Property Type",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        fontStyle: FontStyle.normal,
                        fontFamily: "openSans",
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    height: 50,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: propertyType.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 40,
                            width: 120,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(right: 15, top: 10),
                            decoration: BoxDecoration(
                              borderRadius:const BorderRadius.all(
                                Radius.circular(10)
                              ),
                              border: Border.all(
                                color: Colors.black87.withOpacity(0.5),
                                width: 2
                              )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundCheckBox(
                                  isChecked: false,
                                  onTap: (selected) {},
                                  isRound: true,
                                  size: 20,
                                  checkedColor: const Color(0xFF2A9F7C),
                                  uncheckedColor: Colors.transparent,
                                  border: Border.all(color: Colors.black87),
                                  animationDuration: const Duration(
                                      milliseconds: 10
                                  ),
                                  checkedWidget: const Icon(
                                    Icons.check,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  propertyType[index],
                                  style: const TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "openSans",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 13
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 25),
                    child: Text(
                      "Budget",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: "openSans",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20, top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Min. Area: ${areaSqft.start.round().toString()}",
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "openSans",
                            fontStyle: FontStyle.normal,
                            color: Colors.black87,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "Max. Area: ${areaSqft.end.round().toString()}",
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "openSans",
                            fontStyle: FontStyle.normal,
                            color: Colors.black87,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  RangeSlider(
                    values: areaSqft,
                    divisions: 100,
                    max: 5000,
                    min: 0.0,
                    labels: RangeLabels(
                        areaSqft.start.round().toString(),
                        areaSqft.end.round().toString()
                    ),
                    onChanged: (value) {
                      setState(() {
                        areaSqft = value;
                      });
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 25),
                    child: Text(
                      "Furnishing Type",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          fontFamily: "openSans",
                          color: Colors.black87
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(left: 20),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: furnishedType.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 40,
                          width: 125,
                          margin: const EdgeInsets.only(right: 15),
                          alignment: AlignmentDirectional.center,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(8)
                            ),
                            border: Border.all(
                              color: Colors.black87.withOpacity(0.5),
                              width: 1.8,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundCheckBox(
                                isChecked: false,
                                onTap: (selected) {},
                                isRound: true,
                                size: 20,
                                checkedColor: const Color(0xFF2A9F7C),
                                uncheckedColor: Colors.transparent,
                                border: Border.all(color: Colors.black87),
                                animationDuration: const Duration(
                                    milliseconds: 10
                                ),
                                checkedWidget: const Icon(
                                  Icons.check,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                furnishedType[index],
                                style: const TextStyle(
                                    color: Colors.black87,
                                    fontFamily: "openSans",
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 25),
                    child: Text(
                      "Availability",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          fontFamily: "openSans",
                          color: Colors.black87
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(left: 20),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: availability.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 40,
                          width: 125,
                          margin: const EdgeInsets.only(right: 15),
                          alignment: AlignmentDirectional.center,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(8)
                            ),
                            border: Border.all(
                              color: Colors.black87.withOpacity(0.5),
                              width: 1.8,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundCheckBox(
                                isChecked: false,
                                onTap: (selected) {},
                                isRound: true,
                                size: 20,
                                checkedColor: const Color(0xFF2A9F7C),
                                uncheckedColor: Colors.transparent,
                                border: Border.all(color: Colors.black87),
                                animationDuration: const Duration(
                                    milliseconds: 10
                                ),
                                checkedWidget: const Icon(
                                  Icons.check,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                availability[index],
                                style: const TextStyle(
                                    color: Colors.black87,
                                    fontFamily: "openSans",
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 400,
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Amenities",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontFamily: "openSans",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              margin: const EdgeInsets.only(top: 15, right: 25),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: Colors.black87.withOpacity(0.5),width: 1.8)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: RoundCheckBox(
                                        onTap: (value) {},
                                        size: 15,
                                        checkedColor: const Color(0xFF2A9F7C),
                                        border: Border.all(color: Colors.black87),
                                        checkedWidget: const Icon(Icons.check,color: Colors.white, size: 12),
                                        animationDuration: const Duration(milliseconds: 10),
                                        uncheckedColor: Colors.transparent,
                                        isRound: true,
                                        isChecked: false,
                                        borderColor: Colors.black87
                                    ),
                                  ),
                                  const Icon(
                                    Icons.pool_outlined,
                                    color: Colors.black87,
                                    size: 25,
                                  ),
                                  const Text(
                                    "Swimming Pool",
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "openSans",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 100,
                              margin: const EdgeInsets.only(top: 15, right: 25),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: Colors.black87.withOpacity(0.5),width: 1.8)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: RoundCheckBox(
                                        onTap: (value) {},
                                        size: 15,
                                        checkedColor: const Color(0xFF2A9F7C),
                                        border: Border.all(color: Colors.black87),
                                        checkedWidget: const Icon(Icons.check,color: Colors.white, size: 12),
                                        animationDuration: const Duration(milliseconds: 10),
                                        uncheckedColor: Colors.transparent,
                                        isRound: true,
                                        isChecked: false,
                                        borderColor: Colors.black87
                                    ),
                                  ),
                                  const Icon(
                                    Icons.elevator_outlined,
                                    color: Colors.black87,
                                    size: 30,
                                  ),
                                  const Text(
                                    "Elevator",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "openSans",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 100,
                              margin: const EdgeInsets.only(top: 15),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: Colors.black87.withOpacity(0.5),width: 1.8)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: RoundCheckBox(
                                        onTap: (value) {},
                                        size: 15,
                                        checkedColor: const Color(0xFF2A9F7C),
                                        border: Border.all(color: Colors.black87),
                                        checkedWidget: const Icon(Icons.check,color: Colors.white, size: 12),
                                        animationDuration: const Duration(milliseconds: 10),
                                        uncheckedColor: Colors.transparent,
                                        isRound: true,
                                        isChecked: false,
                                        borderColor: Colors.black87
                                    ),
                                  ),
                                  const Icon(
                                    Icons.balcony_outlined,
                                    color: Colors.black87,
                                    size: 30,
                                  ),
                                  const Text(
                                    "Terrace",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "openSans",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              margin: const EdgeInsets.only(top: 15, right: 25),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: Colors.black87.withOpacity(0.5),width: 1.8)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: RoundCheckBox(
                                        onTap: (value) {},
                                        size: 15,
                                        checkedColor: const Color(0xFF2A9F7C),
                                        border: Border.all(color: Colors.black87),
                                        checkedWidget: const Icon(Icons.check,color: Colors.white, size: 12),
                                        animationDuration: const Duration(milliseconds: 10),
                                        uncheckedColor: Colors.transparent,
                                        isRound: true,
                                        isChecked: false,
                                        borderColor: Colors.black87
                                    ),
                                  ),
                                  const Icon(
                                    Icons.local_parking,
                                    color: Colors.black87,
                                    size: 25,
                                  ),
                                  const Text(
                                    "Parking",
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "openSans",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 100,
                              margin: const EdgeInsets.only(top: 15, right: 25),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: Colors.black87.withOpacity(0.5),width: 1.8)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: RoundCheckBox(
                                        onTap: (value) {},
                                        size: 15,
                                        checkedColor: const Color(0xFF2A9F7C),
                                        border: Border.all(color: Colors.black87),
                                        checkedWidget: const Icon(Icons.check,color: Colors.white, size: 12),
                                        animationDuration: const Duration(milliseconds: 10),
                                        uncheckedColor: Colors.transparent,
                                        isRound: true,
                                        isChecked: false,
                                        borderColor: Colors.black87
                                    ),
                                  ),
                                  const Icon(
                                    Icons.pets,
                                    color: Colors.black87,
                                    size: 30,
                                  ),
                                  const Text(
                                    "Pets Allowed",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "openSans",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 100,
                              margin: const EdgeInsets.only(top: 15),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: Colors.black87.withOpacity(0.5),width: 1.8)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: RoundCheckBox(
                                        onTap: (value) {},
                                        size: 15,
                                        checkedColor: const Color(0xFF2A9F7C),
                                        border: Border.all(color: Colors.black87),
                                        checkedWidget: const Icon(Icons.check,color: Colors.white, size: 12),
                                        animationDuration: const Duration(milliseconds: 10),
                                        uncheckedColor: Colors.transparent,
                                        isRound: true,
                                        isChecked: false,
                                        borderColor: Colors.black87
                                    ),
                                  ),
                                  const Icon(
                                    Icons.local_laundry_service_outlined,
                                    color: Colors.black87,
                                    size: 30,
                                  ),
                                  const Text(
                                    "Laundry",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "openSans",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              margin: const EdgeInsets.only(top: 15, right: 25),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: Colors.black87.withOpacity(0.5),width: 1.8)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: RoundCheckBox(
                                        onTap: (value) {},
                                        size: 15,
                                        checkedColor: const Color(0xFF2A9F7C),
                                        border: Border.all(color: Colors.black87),
                                        checkedWidget: const Icon(Icons.check,color: Colors.white, size: 12),
                                        animationDuration: const Duration(milliseconds: 10),
                                        uncheckedColor: Colors.transparent,
                                        isRound: true,
                                        isChecked: false,
                                        borderColor: Colors.black87
                                    ),
                                  ),
                                  const Icon(
                                    Icons.gas_meter_outlined,
                                    color: Colors.black87,
                                    size: 25,
                                  ),
                                  const Text(
                                    "Gas Pipeline",
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "openSans",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 100,
                              margin: const EdgeInsets.only(top: 15, right: 25),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: Colors.black87.withOpacity(0.5),width: 1.8)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: RoundCheckBox(
                                        onTap: (value) {},
                                        size: 15,
                                        checkedColor: const Color(0xFF2A9F7C),
                                        border: Border.all(color: Colors.black87),
                                        checkedWidget: const Icon(Icons.check,color: Colors.white, size: 12),
                                        animationDuration: const Duration(milliseconds: 10),
                                        uncheckedColor: Colors.transparent,
                                        isRound: true,
                                        isChecked: false,
                                        borderColor: Colors.black87
                                    ),
                                  ),
                                  const Icon(
                                    Icons.cleaning_services,
                                    color: Colors.black87,
                                    size: 30,
                                  ),
                                  const Text(
                                    "Cleaning Services",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "openSans",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12
                                    ),
                                  ),
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
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPageResults(),));
                },
                child: Container(
                  height: 50,
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  decoration: const BoxDecoration(
                    color: Color(0xFF2DAF84),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "View Results",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontFamily: "openSans"
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
