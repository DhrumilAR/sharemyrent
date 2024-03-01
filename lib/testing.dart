import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class Testing extends StatefulWidget {
  const Testing({super.key});

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {

  bool ischecked = false;

  //given instance to the firebase storage
  FirebaseStorage fireStorage = FirebaseStorage.instance;

  //Image Picker
  final ImagePicker imagePicker = ImagePicker();
  List<String> imagePaths = [];
  Future<void> selectedImages() async{
    final List<XFile> selectedImages = await imagePicker.pickMultiImage();
    if(selectedImages.isNotEmpty && selectedImages != null ) {
      setState(() {
        imagePaths = selectedImages.map((image) => image.path).toList();
      });
    }
  }

  Future<void> uploadData() async{
    for(String imagePath in imagePaths) {
      File imageFile = File(imagePath);
      String fileName = imagePath
          .split("/")
          .last;
      try {
        Reference reference = FirebaseStorage.instance
            .ref()
            .child("Property Images");
        //uploading file to database
        await reference.putFile(imageFile);
        //retrieve the download URL for the uploaded file
        String downloadURL = await reference.getDownloadURL();
        print("File Uploaded: $downloadURL");
      } catch (error) {
        print("There was error in uploading the image $error");
      }
      //clearing image paths
      setState(() {
        imagePaths.clear();
      });
    }
  }

  List amenities = [
    {
      "icon" : Icons.local_parking,
      "name" : "Parking"
    },
    {
      "icon" : Icons.elevator_outlined,
      "name" : "Elevator"
    },
    {
      "icon" : Icons.local_laundry_service_outlined,
      "name" : "Laundry"
    },
    {
      "icon" : Icons.pool_outlined,
      "name" : "Swimming Pool"
    },
    {
      "icon" : Icons.gas_meter_outlined,
      "name" : "Gas Pipeline"
    },
    {
      "icon" : Icons.cleaning_services,
      "name" : "Cleaning Services"
    },
    {
      "icon" : Icons.park,
      "name" : "Park"
    },
    {
      "icon" : Icons.balcony,
      "name" : "Terrace"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDE6E8),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_outlined,
            size: 25,
            color: Colors.black87.withOpacity(0.65),
          ),
        ),
        backgroundColor: const Color(0xFFDDE6E8),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Add Images of Your Property",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    fontFamily: "openSans",
                    fontSize: 20,
                    fontStyle: FontStyle.normal
                ),
              ),
              Container(
                height: 300,
                width: double.maxFinite,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: imagePaths.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1/1,
                              crossAxisSpacing: 5,
                              mainAxisSpacing:  5
                          ),
                          itemBuilder: (context, index) {
                            return Image.file(File(imagePaths[index]), fit: BoxFit.cover);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: selectedImages,
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    animationDuration: Duration(seconds: 1),
                  ),
                  child: const Text(
                    "Select Images",
                    style: TextStyle(
                        fontFamily: "openSans",
                        color: Color(0xFF2D7976),
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),  //buttons
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10),
                child: Text(
                  "Select amenities",
                  style: TextStyle(
                      fontFamily: "openSans",
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87
                  ),
                ),
              ),
              SizedBox(
                height: 400,
                width: double.maxFinite,
                child: GridView.builder(
                  itemCount: amenities.length,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          ischecked = !ischecked ;
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        margin: const EdgeInsets.only(top: 15, right: 25),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.black87.withOpacity(0.5),width: 1.8)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: RoundCheckBox(
                                  onTap: (value) {
                                    setState(() {
                                      ischecked = value!;
                                    });
                                  },
                                  size: 15,
                                  checkedColor: const Color(0xFF2A9F7C),
                                  border: Border.all(color: Colors.black87),
                                  checkedWidget: const Icon(Icons.check,color: Colors.white, size: 12),
                                  animationDuration: const Duration(milliseconds: 10),
                                  uncheckedColor: Colors.transparent,
                                  isRound: true,
                                  isChecked: ischecked,
                                  borderColor: Colors.black87
                              ),
                            ),
                            Icon(
                              amenities[index]["icon"], // Change "icons" to "icon"
                              color: Colors.black87,
                              size: 30,
                            ),
                            Text(
                              amenities[index]["name"],
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
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
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 40,
                width: double.maxFinite,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: uploadData,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 80),
                    height: 60,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        color: const Color(0xFF2D7976).withOpacity(0.5),
                        border: Border.all(
                            color: const Color(0xFF2D7976)
                        )
                    ),
                    child: const Text(
                      "Upload the Data",
                      style: TextStyle(
                          fontFamily: "openSans",
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          fontStyle: FontStyle.normal
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
/*const */