import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sharemyrent/Profile/profile.dart';
import 'package:sharemyrent/userpages/HomePage/homepage.dart';
import 'package:sharemyrent/userpages/Likes/likes.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Likes(),
    Text(
      'Index 2: School',
    ),
    Profile()
  ];

  bool isselected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 120,
        child: FloatingNavbar(
            items: [
              FloatingNavbarItem(
                 icon: Icons.house_outlined,
              ),
              FloatingNavbarItem(
                icon: Icons.favorite_border,
              ),
              FloatingNavbarItem(
                icon: Icons.markunread_outlined,
              ),
              FloatingNavbarItem(
                icon: Icons.person_2_rounded,
              ),
            ],
            currentIndex: selectedIndex,
            onTap: (int val) => setState(() {
              selectedIndex = val;
            }),
          backgroundColor: Colors.black87,
          width: 330,
          iconSize: 30,
          selectedBackgroundColor: Colors.white12,
          selectedItemColor: Colors.white,
          borderRadius: 15,
        ),
      ),
      extendBody: true,
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
    );
  }
}
