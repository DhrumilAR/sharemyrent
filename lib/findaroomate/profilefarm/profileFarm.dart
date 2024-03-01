import 'package:flutter/material.dart';
import 'package:sharemyrent/findaroomate/profilefarm/settingsfarm.dart';

class ProfileFarm extends StatefulWidget {
  const ProfileFarm({super.key});

  @override
  State<ProfileFarm> createState() => _ProfileFarmState();
}

class _ProfileFarmState extends State<ProfileFarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.black87,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/person.jpg"),
                    fit: BoxFit.cover
                  ),
                  shape: BoxShape.circle
                ),
              ),
              const Text(
                "Dhrumil Rupapara",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  color: Colors.black87
                ),
              ),
              const Text(
                "dhrumilpatel@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  fontStyle: FontStyle.normal,
                  color: Colors.black87
                ),
              ),
              Container(
                height: 40,
                width: 170,
                margin: const EdgeInsets.only(top: 15),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xFF8C5E81)
                ),
                child: const Text(
                  "Edit Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 30
              ),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              profileItems(
                title: "Settings",
                leadingicon: Icons.settings_outlined,
                textColor: Colors.black87,
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsFarm()));
                },
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              profileItems(
                textColor: Colors.black87,
                title:"Notification Settings",
                leadingicon: Icons.edit_notifications_outlined,
                onPress: () {

                },
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              profileItems(
                  textColor: Colors.black87,
                  title: "Feedback and Support",
                  leadingicon: Icons.feedback_outlined,
                  onPress: () {

                  },
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              profileItems(
                  textColor: Colors.black87,
                  title: "Legal and About",
                  leadingicon: Icons.info_outline,
                  onPress: () {

                  },
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              profileItems(
                textColor: Colors.red,
                title: "Logout",
                leadingicon: Icons.logout,
                onPress: () {

                },
              )
            ],
          ),
        ),
      ),
    );
  }
  profileItems({
    IconData? leadingicon,
    String ? title,
    Color? textColor,
    required Function()? onPress,
})
{
    return ListTile(
      onTap: onPress,
      leading: Container(
        height: 40,
        width: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFF8C5E81).withOpacity(0.5)
        ),
        child: Icon(
          leadingicon!,
          size: 25,
          color: const Color(0xFF8C5EFF),
        ),
      ),
      title:  Text(
        title!,
        style: TextStyle(
            color: textColor!,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontStyle: FontStyle.normal
        ),
      ),
      trailing: Container(
        height: 30,
        width: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black26.withOpacity(0.3)
        ),
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
