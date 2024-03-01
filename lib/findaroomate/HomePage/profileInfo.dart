import 'package:flutter/material.dart';

class ProfileFAR extends StatefulWidget {
  String picture;

  String name;

  String age;

  String occupation;

  String gender;

   ProfileFAR(
    {
      super.key,
      required this.picture,
      required this.name,
      required this.age,
      required this.gender,
      required this.occupation
    }
  );

  @override
  State<ProfileFAR> createState() => _ProfileFARState();
}

class _ProfileFARState extends State<ProfileFAR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 50,
              width: 50,
              margin: const EdgeInsets.only(
                top: 20,
                left: 20
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFF8C5E81).withOpacity(0.7),
                shape: BoxShape.circle
              ),
              child: const Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          actions: [
            Container(
              height: 38,
              width: 38,
              margin: const EdgeInsets.only(
                right: 20,
                top: 18
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF8C5E81).withOpacity(0.8)
              ),
              child: const Icon(
                Icons.message_outlined,
                color: Colors.white,
                size: 20,
              ),
            )
          ],
          elevation: 0,
          pinned: true,
          expandedHeight: 400,
          flexibleSpace: Image(
              image: AssetImage(widget.picture),
              fit: BoxFit.cover,
              height: 400,
              width: double.maxFinite,
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Container(
              height: 40,
              width: double.maxFinite,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
                color: Colors.white
              ),
              child: const Text(
                "",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  color: Colors.black87
                ),
              ),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
             (context, index) {
               return Container(
                 height: 600,
                 width: double.maxFinite,
                 padding: const EdgeInsets.only(left: 20,right: 20),
                 decoration: const BoxDecoration(
                   color: Colors.white
                 ),
                 child: SingleChildScrollView(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         widget.name,
                         style: const TextStyle(
                           color: Colors.black87,
                           fontSize: 24,
                           fontWeight: FontWeight.w600,
                           fontStyle: FontStyle.normal,
                           fontFamily: "hindmadurai"
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                         child: Row(
                           children: [
                             Icon(
                               Icons.business_center_outlined,
                               size: 25,
                               color: Colors.black.withOpacity(0.6)
                             ),
                             const Padding(padding: EdgeInsets.only(left: 10)),
                             Text(
                               widget.occupation,
                               textAlign: TextAlign.left,
                               style: TextStyle(
                                 fontSize: 20,
                                 fontFamily: "hindmadurai",
                                 fontStyle: FontStyle.normal,
                                 fontWeight: FontWeight.w600,
                                 color: Colors.black.withOpacity(0.6)
                               ),
                             )
                           ],
                         ),
                       ),
                       Text(
                         widget.age,
                         style: TextStyle(
                           fontWeight: FontWeight.w600,
                           color: Colors.black.withOpacity(0.6),
                           fontStyle: FontStyle.normal,
                           fontFamily: "hindmadurai",
                           fontSize: 20
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                         child: Row(
                           children: [
                             Icon(
                                 Icons.wc,
                                 size: 25,
                                 color: Colors.black.withOpacity(0.6)
                             ),
                             const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
                             Text(
                               widget.gender,
                               textAlign: TextAlign.left,
                               style: TextStyle(
                                   fontSize: 20,
                                   fontFamily: "hindmadurai",
                                   fontStyle: FontStyle.normal,
                                   fontWeight: FontWeight.w600,
                                   color: Colors.black.withOpacity(0.6)
                               ),
                             )
                           ],
                         ),
                       ),
                       Divider(
                         color: Colors.black.withOpacity(0.6),
                         indent: 5,
                         endIndent: 5,
                       ),
                       const Padding(
                         padding: EdgeInsets.symmetric(vertical: 10.0),
                         child: Text(
                           "Description",
                           style: TextStyle(
                               color: Colors.black87,
                               fontSize: 24,
                               fontWeight: FontWeight.w600,
                               fontStyle: FontStyle.normal,
                               fontFamily: "hindmadurai"
                           ),
                         ),
                       ),
                       const Text(
                         "As a 35-year-old seeking a room for the next year, I prioritize cleanliness and tranquility. With a strong sense of responsibility and reliability, I value a peaceful environment where I can unwind after a long day. Privacy is essential for me as I seek a stable place to call home and focus on personal growth. Transitioning to this new chapter in life, I hope to find a welcoming space where I can feel comfortable and at ease.",
                         textAlign: TextAlign.justify,
                         style: TextStyle(
                             color: Colors.black87,
                             fontSize: 15,
                             fontWeight: FontWeight.w500,
                             fontStyle: FontStyle.normal,
                             fontFamily: "hindmadurai"
                         ),
                       ),
                     ],
                   ),
                 ),
               );
            },
            childCount: 1
          ),
        )
      ],
              ),
    );
  }
}
