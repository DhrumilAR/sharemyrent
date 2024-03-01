import 'package:flutter/material.dart';

class PlaceInfo extends StatefulWidget {

  String images;
  String bhk;
  String address;
  String furnitureType;
  String area;
  String renterName;
  String rentersDesignation;
  String price;

  PlaceInfo(
    {
      super.key,
      required this.images,
      required this.bhk,
      required this.address,
      required this.furnitureType,
      required this.area,
      required this.renterName,
      required this.rentersDesignation,
      required this.price
    }
  );

  @override
  State<PlaceInfo> createState() => _PlaceInfoState();
}

class _PlaceInfoState extends State<PlaceInfo> {
  List houseImages = [
    "assets/houseonrent1.jpg",
    "assets/houseonrent2.jpg",
    "assets/houseonrent4.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Property Details",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontStyle: FontStyle.normal,
            fontFamily: "openSans",
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black87,
          ),
        ),
        actions: const[
          Icon(
            Icons.share,
            color: Colors.black87,
            size: 20,
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
          Icon(
            Icons.favorite_border,
            color: Colors.black87,
            size: 20,
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
          Icon(
            Icons.message_outlined,
            size: 20,
            color: Colors.black87,
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
        ],
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
          bottom: 10
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                width: double.maxFinite,
                padding: const EdgeInsets.only(left: 00),
                child: SizedBox(
                  height: 200,
                  width: double.maxFinite,
                  child: ListView.builder(
                    itemCount: houseImages.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 200,
                        width: 280,
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              15
                            )
                          ),
                          image: DecorationImage(
                            image: AssetImage(widget.images),
                            fit: BoxFit.cover
                          )
                        ),
                      );
                    },
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              Row(
                children: [
                  const Icon(
                    Icons.currency_rupee,
                    color: Colors.black87,
                    size: 25,
                  ),
                  Text(
                    widget.price,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "openSans",
                      fontStyle: FontStyle.normal,
                      color: Colors.black87
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Text(
                "${widget.bhk} Apartment",
                style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    fontFamily: "openSans",
                    fontStyle: FontStyle.normal,
                    color: Colors.black87
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Container(
                height: 60,
                width: double.maxFinite,
                padding: const EdgeInsets.only(left: 10,right: 10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFFDDE6E8)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        widget.address,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: "openSans",
                            fontStyle: FontStyle.normal,
                            color: Colors.black87.withOpacity(0.7)
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            8
                          )
                        ),
                        color: const Color(0xFF2A9F7C).withOpacity(0.4)
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: Colors.black87,
                          ),
                          Text(
                            "See on Map",
                            style: TextStyle(
                              color: Color(0xFF2A9F7C),
                              fontStyle: FontStyle.normal,
                              fontFamily: "openSans",
                              fontWeight: FontWeight.w600,
                              fontSize: 10
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black87,
                            size: 10,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 12)),
              Row(
                children: [
                  Text(
                    widget.furnitureType,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: "openSans",
                      fontStyle: FontStyle.normal
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(right: 5)),
                  const Icon(
                    Icons.circle,
                    size: 5,
                    color: Colors.black87,
                  ),
                  const Padding(padding: EdgeInsets.only(right: 5)),
                  Text(
                    widget.area,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: "openSans",
                      fontStyle: FontStyle.normal
                    ),
                  )
                ],
              ),
              Container(
                height: 100,
                width: double.maxFinite,
                margin: const EdgeInsets.only(top: 13),
                padding: const EdgeInsets.only(right: 15, left: 15, top: 7, bottom: 7),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFFDDE6E8)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.renterName,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontStyle: FontStyle.normal,
                            fontFamily: "openSans",
                            fontWeight: FontWeight.w500,
                            fontSize: 15
                          ),
                        ),
                        Text(
                          widget.rentersDesignation,
                          style: TextStyle(
                              color: Colors.black87.withOpacity(0.6),
                              fontStyle: FontStyle.normal,
                              fontFamily: "openSans",
                              fontWeight: FontWeight.w500,
                              fontSize: 12
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5)
                        ),
                        Text(
                          "40 tenants served",
                          style: TextStyle(
                            color: Colors.black87.withOpacity(0.6),
                            fontStyle: FontStyle.normal,
                            fontFamily: "openSans",
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                          ),
                        ),
                        const Text(
                          "Posted on 18 December 2023",
                          style: TextStyle(
                              color: Colors.black87,
                              fontStyle: FontStyle.normal,
                              fontFamily: "openSans",
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      padding: const EdgeInsets.only(left: 8, right: 15),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                        color: const Color(0xFF2A9F7C).withOpacity(0.4),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.message_outlined,
                            color: Colors.black87,
                            size: 16,
                          ),
                          Text(
                            "Chat Now",
                            style: TextStyle(
                              color: Color(0xFF2A9F7C),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: "openSans",
                              fontStyle: FontStyle.normal,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Amenities",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontFamily: "openSans",
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black87
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        enableDrag: true,
                        barrierLabel: "Amenities",
                        barrierColor: Colors.black87,
                        isScrollControlled: true,
                        builder: (context) {
                          return Container(
                            padding: const EdgeInsets.all(20),
                            height: 400,
                            width: double.maxFinite,
                            child: Stack(
                              children: <Widget>[
                                const Align(
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    children: [
                                      Text(
                                        "Amenities",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "openSans",
                                            fontStyle: FontStyle.normal,
                                            color: Colors.black87
                                        ),
                                      ),
                                      Divider()
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 320,
                                    width: double.maxFinite,
                                    padding: const EdgeInsets.only(top: 20, left: 20),
                                    child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        amenitiesItems(
                                          amenityicon: Icons.local_parking,
                                          amenityName: "Parking"
                                        ),
                                        amenitiesItems(
                                            amenityicon: Icons.water_drop_outlined,
                                            amenityName: "Regular water Supply",
                                        ),
                                        amenitiesItems(
                                            amenityicon: Icons.balcony,
                                            amenityName: "Terrace"
                                        ),
                                        amenitiesItems(
                                            amenityicon: Icons.gas_meter_outlined,
                                            amenityName: "Gas Connectivity"
                                        ),
                                        amenitiesItems(
                                            amenityicon: Icons.local_laundry_service_outlined,
                                            amenityName: "Laundry"
                                        ),
                                        amenitiesItems(
                                            amenityicon: Icons.cleaning_services,
                                            amenityName: "Regular Cleaning"
                                        ),
                                        amenitiesItems(
                                            amenityicon: Icons.park,
                                            amenityName: "Garden"
                                        ),
                                      ],
                                    ),
                                                                  ),
                                  ),
                                )],
                            ),
                          );
                        },
                        context: context,
                        isDismissible: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10)
                          ),
                        )
                      );
                    },
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.green,
                        fontStyle: FontStyle.normal,
                        fontFamily: "openSans",
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 250,
                width: double.maxFinite,
                margin: const EdgeInsets.only(top: 8, bottom: 25),
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      10
                    )
                  ),
                  color: const Color(0xFF2A9F7C).withOpacity(0.15)
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        amenitiesItems(
                          amenityicon: Icons.local_parking,
                          amenityName: "Parking"
                        ),
                        amenitiesItems(
                          amenityicon: Icons.water_drop_outlined,
                          amenityName: "Regular Water Supply"
                        ),
                        amenitiesItems(
                          amenityicon: Icons.balcony,
                          amenityName: "Terrace"
                        ),
                        amenitiesItems(
                          amenityicon: Icons.gas_meter_outlined,
                          amenityName: "Gas "
                        )
                      ],
                    ),
                    Column(
                      children: [
                        amenitiesItems(
                          amenityicon: Icons.local_laundry_service_outlined,
                          amenityName: "Laundry"
                        ),
                        amenitiesItems(
                          amenityicon: Icons.cleaning_services,
                          amenityName: "Regular Cleaning"
                        ),
                        amenitiesItems(
                          amenityicon: Icons.park,
                          amenityName: "Garden"
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Text(
                "Location",
                style: TextStyle(
                  color: Colors.black87,
                  fontStyle: FontStyle.normal,
                  fontFamily: "openSans",
                  fontWeight: FontWeight.w600,
                  fontSize: 20
                ),
              ),
              Container(
                height: 250,
                width: double.maxFinite,
                margin: const EdgeInsets.only(top: 8, bottom: 15),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(10)
                    ),
                ),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.map_outlined,
                  size: 40,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  amenitiesItems({
    required IconData? amenityicon,
    required String? amenityName
}){
    return Container(
      height: 50,
      width: 175.2,
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 30,
            width: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                border: Border.all(
                    color: Colors.black87,
                    width: 2
                )
            ),
            child: Icon(
              amenityicon!,
              color: Colors.black87,
              size: 20,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          Text(
            amenityName!,
            style: const TextStyle(
                color: Colors.black87,
                fontSize: 12,
                fontWeight: FontWeight.w600,
                fontFamily: "openSans",
                fontStyle: FontStyle.normal
            ),
          ),
        ],
      ),
    );
  }
}
