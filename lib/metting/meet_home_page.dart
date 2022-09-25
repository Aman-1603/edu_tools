import 'dart:math';

import 'package:edu_tools/metting/home_meeting_button.dart';
import 'package:edu_tools/metting/meeting_screen.dart';
import 'package:edu_tools/resources/jitsi_meet_methods.dart';
import 'package:flutter/material.dart';
import 'home_meeting_button.dart';

import 'NavBar.dart';

class meet_home_page extends StatelessWidget {
  meet_home_page({Key? key}) : super(key: key);

  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> page = [
      MeetingScreen(),
  ];

  final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();

  //creating meeting

  createNewMeeting() async {
    var random = Random();
    //here we are creating a random UID instead of asking user to create a new name while creating meeting
    String roomName = (random.nextInt(10000000) + 10000000).toString();
    _jitsiMeetMethods.createMeeting(
      //bydeafult user is alon in meeting while creating so we will on vedio and audio bydefault on
        roomName: roomName, isAudioMuted: true, isVideoMuted: true);
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
            HomeMettingButton(

              onPressed: createNewMeeting,

              text: 'New Meeting',
              icon: Icons.videocam,
            ),

            HomeMettingButton(
              onPressed: () {},
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

  void setState(Null Function() param0) {}
}
