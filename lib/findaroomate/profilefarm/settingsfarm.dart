import 'package:flutter/material.dart';

class SettingsFarm extends StatefulWidget {
  const SettingsFarm({super.key});

  @override
  State<SettingsFarm> createState() => _SettingsFarmState();
}

class _SettingsFarmState extends State<SettingsFarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Device Settings",
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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 30, left: 20, right: 10),
        child: Column(
          children: [
            settingsMenu(
              settingsName: "Display Settings",
              settingsInnerContent: "Theme.Font Size.Display Language",
              settingsicon: Icons.settings_display
            ),
            settingsMenu(
              settingsName: "Language Preference",
              settingsInnerContent: "You can change the language here.",
              settingsicon: Icons.language
            ),
            settingsMenu(
              settingsName: "Content Settings",
              settingsInnerContent: "Listing Preferences.Saved Searches",
              settingsicon: Icons.privacy_tip_outlined
            ),
            settingsMenu(
              settingsName: "Default Features",
              settingsicon: Icons.disabled_by_default_outlined,
              settingsInnerContent: "Change to default settings\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
            )
          ],
        )
      ),
    );
  }
  settingsMenu({
    String? settingsName,
    String? settingsInnerContent,
    IconData? settingsicon
}){
    return Container(
        height: 60,
        width: 360,
        margin: const EdgeInsets.only(bottom: 25),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 5,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 15
              )
            ],
            color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF8C5E81).withOpacity(0.5),
              ),
              child: Icon(
                settingsicon!,
                color: const Color(0xFF8C5E81),
                size: 25,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  settingsName!,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  settingsInnerContent!,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontStyle: FontStyle.normal,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black87,
              size: 25,
            )
          ],
        )
    );
  }
}
