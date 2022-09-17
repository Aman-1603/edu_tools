import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Loby_page extends StatefulWidget {
  const Loby_page({Key? key}) : super(key: key);

  @override
  State<Loby_page> createState() => _Loby_pageState();
}

class _Loby_pageState extends State<Loby_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        activeColor: Colors.white,
        haptic: true,
        tabBorderRadius: 15,
        tabBackgroundColor: Colors.purpleAccent.shade700,
        tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
        duration: Duration(milliseconds: 900),
        padding: EdgeInsets.all(20),
        onTabChange: (index){
          print(index);
        },
        tabs: const [
          GButton(icon: Icons.home,
          text: "Home",
            gap: 15,

          ),
          GButton(icon: Icons.book,
          text: "Class",
            gap: 15,
            
          ),
          GButton(icon: Icons.chat,
          text: "Chat",
            gap: 15,
          ),
          GButton(icon: Icons.settings,
          text: "Setting",
            gap: 15,
            ),
        ],
      ),
    );
  }
}

