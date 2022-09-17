import 'package:edu_tools/metting/home_meeting_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_meeting_button.dart';

import 'NavBar.dart';

class meet_home_page extends StatefulWidget {
  const meet_home_page({Key? key}) : super(key: key);

  @override
  State<meet_home_page> createState() => _meet_home_pageState();
}

class _meet_home_pageState extends State<meet_home_page> {

  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //adding menu to app bar

      drawer: NavBar(),

      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        elevation: 0,
        title: const Text('Meet & Chat'),
        centerTitle: true,
      ),

      //body

      body: Column(
        children: [
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [

            // it will have actual butten or widgets which is available in other page
            HomeMettingButton(onPressed: () {},
            text: 'New Meeting',
              icon: Icons.videocam,
            ),

            HomeMettingButton(onPressed: () {},
              text: 'Schedual',
              icon: Icons.date_range,
            ),

            HomeMettingButton(onPressed: () {},
              text: 'join Meeting',
              icon: Icons.join_full,
            ),

            HomeMettingButton(onPressed: () {},
              text: 'Share Screen',
              icon: Icons.arrow_upward_rounded,
            ),

          ],
          ),


          //filling up empty area for future work

          const Expanded(
              child: Center(
                child: Text("Create/join metting with a single click",
                  style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),

              ))


        ],
      ),

      // body ends here



      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onPageChanged,
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.comment_bank,
            ),
            label: 'Meet & Char',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lock_clock,
            ),
            label: 'Meetings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );

  }
}
