import 'package:edu_tools/metting/home_meeting_button.dart';
import 'package:edu_tools/metting/meet_home_page.dart';
import 'package:edu_tools/screen/home_nav_bar.dart';
import 'package:edu_tools/screen/checking.dart';
import 'package:edu_tools/screen/home_lobby_screen.dart';
import 'package:edu_tools/teacher_modual/teacher_main.dart';
import 'package:flutter/material.dart';

import '../Home.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List _screens = [
    Home_Lobby_Screen(),
    checking_file(),
    meet_home_page(),
    teacher_home(),

  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   title: Text('Metting and Title'),
      // ),


      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        elevation: 0.0,
        items: [Icons.home, Icons.insert_chart, Icons.meeting_room, Icons.info]
            .asMap()
            .map((key, value) => MapEntry(
          key,
          BottomNavigationBarItem (
            label: "",
            icon: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 16.0,
              ),
              decoration: BoxDecoration(
                color: _currentIndex == key
                    ? Colors.blue[600]
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Icon(value),
            ),
          ),
        ))
            .values
            .toList(),
      ),
    );
  }
}